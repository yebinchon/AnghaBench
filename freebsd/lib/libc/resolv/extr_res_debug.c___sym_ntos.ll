; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c___sym_ntos.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c___sym_ntos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_sym = type { i64, i32 }

@sym_ntos_unname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sym_ntos(%struct.res_sym* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.res_sym*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.res_sym* %0, %struct.res_sym** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** @sym_ntos_unname, align 8
  store i8* %9, i8** %8, align 8
  br label %10

10:                                               ; preds = %32, %3
  %11 = load %struct.res_sym*, %struct.res_sym** %5, align 8
  %12 = getelementptr inbounds %struct.res_sym, %struct.res_sym* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.res_sym*, %struct.res_sym** %5, align 8
  %18 = getelementptr inbounds %struct.res_sym, %struct.res_sym* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %31

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
  %28 = getelementptr inbounds %struct.res_sym, %struct.res_sym* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %4, align 8
  br label %45

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.res_sym*, %struct.res_sym** %5, align 8
  %34 = getelementptr inbounds %struct.res_sym, %struct.res_sym* %33, i32 1
  store %struct.res_sym* %34, %struct.res_sym** %5, align 8
  br label %10

35:                                               ; preds = %10
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32*, i32** %7, align 8
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %35
  %44 = load i8*, i8** %8, align 8
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %43, %26
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
