; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c___sym_ntop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c___sym_ntop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_sym = type { i64, i32, i8* }

@sym_ntop_unname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sym_ntop(%struct.res_sym* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.res_sym*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.res_sym* %0, %struct.res_sym** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** @sym_ntop_unname, align 8
  store i8* %9, i8** %8, align 8
  br label %10

10:                                               ; preds = %31, %3
  %11 = load %struct.res_sym*, %struct.res_sym** %5, align 8
  %12 = getelementptr inbounds %struct.res_sym, %struct.res_sym* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.res_sym*, %struct.res_sym** %5, align 8
  %18 = getelementptr inbounds %struct.res_sym, %struct.res_sym* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32*, i32** %7, align 8
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = load %struct.res_sym*, %struct.res_sym** %5, align 8
  %28 = getelementptr inbounds %struct.res_sym, %struct.res_sym* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %4, align 8
  br label %44

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.res_sym*, %struct.res_sym** %5, align 8
  %33 = getelementptr inbounds %struct.res_sym, %struct.res_sym* %32, i32 1
  store %struct.res_sym* %33, %struct.res_sym** %5, align 8
  br label %10

34:                                               ; preds = %10
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32*, i32** %7, align 8
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %34
  %43 = load i8*, i8** %8, align 8
  store i8* %43, i8** %4, align 8
  br label %44

44:                                               ; preds = %42, %26
  %45 = load i8*, i8** %4, align 8
  ret i8* %45
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
