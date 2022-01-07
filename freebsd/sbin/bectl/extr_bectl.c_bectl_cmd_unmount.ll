; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl.c_bectl_cmd_unmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl.c_bectl_cmd_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1
@BE_MNT_FORCE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"bectl %s: unknown option '-%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"bectl %s: wrong number of arguments\0A\00", align 1
@be = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to unmount bootenv %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @bectl_cmd_unmount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bectl_cmd_unmount(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %31, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %10, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %25 [
    i32 102, label %21
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @BE_MNT_FORCE, align 4
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %9, align 4
  br label %31

25:                                               ; preds = %19
  %26 = load i32, i32* @stderr, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @optopt, align 4
  %29 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 %28)
  %30 = call i32 @usage(i32 0)
  store i32 %30, i32* %3, align 4
  br label %64

31:                                               ; preds = %21
  br label %14

32:                                               ; preds = %14
  %33 = load i64, i64* @optind, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %4, align 4
  %38 = load i64, i64* @optind, align 8
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 %38
  store i8** %40, i8*** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  %47 = call i32 @usage(i32 0)
  store i32 %47, i32* %3, align 4
  br label %64

48:                                               ; preds = %32
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %6, align 8
  %52 = load i32, i32* @be, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @be_unmount(i32 %52, i8* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  switch i32 %56, label %58 [
    i32 128, label %57
  ]

57:                                               ; preds = %48
  br label %62

58:                                               ; preds = %48
  %59 = load i32, i32* @stderr, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %58, %57
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %43, %25
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @be_unmount(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
