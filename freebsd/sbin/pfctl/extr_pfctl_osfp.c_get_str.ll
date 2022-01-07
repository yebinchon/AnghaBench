; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_osfp.c_get_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_osfp.c_get_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s:%d too short %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_str(i8** %0, i64* %1, i8** %2, i8* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8** %0, i8*** %9, align 8
  store i64* %1, i64** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i8**, i8*** %9, align 8
  %19 = load i64*, i64** %10, align 8
  %20 = call i8* @get_field(i8** %18, i64* %19, i32* %16)
  store i8* %20, i8** %17, align 8
  %21 = load i8*, i8** %17, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %53

24:                                               ; preds = %7
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8*, i8** %14, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31, i8* %32)
  store i32 1, i32* %8, align 4
  br label %53

34:                                               ; preds = %24
  %35 = load i32, i32* %16, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i8* @malloc(i32 %36)
  %38 = load i8**, i8*** %11, align 8
  store i8* %37, i8** %38, align 8
  %39 = icmp eq i8* %37, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %53

42:                                               ; preds = %34
  %43 = load i8**, i8*** %11, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %17, align 8
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @memcpy(i8* %44, i8* %45, i32 %46)
  %48 = load i8**, i8*** %11, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 0, i8* %52, align 1
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %42, %40, %28, %23
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i8* @get_field(i8**, i64*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
