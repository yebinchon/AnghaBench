; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl.c_bectl_cmd_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl.c_bectl_cmd_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"bectl import: missing boot environment name\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"bectl import: extra arguments provided\0A\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"bectl import: input can not be from terminal\0A\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@be = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @bectl_cmd_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bectl_cmd_import(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @usage(i32 0)
  store i32 %13, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @usage(i32 0)
  store i32 %20, i32* %3, align 4
  br label %38

21:                                               ; preds = %14
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %6, align 8
  %25 = load i32, i32* @STDIN_FILENO, align 4
  %26 = call i64 @isatty(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @EX_USAGE, align 4
  store i32 %31, i32* %3, align 4
  br label %38

32:                                               ; preds = %21
  %33 = load i32, i32* @be, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @STDIN_FILENO, align 4
  %36 = call i32 @be_import(i32 %33, i8* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %28, %17, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @be_import(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
