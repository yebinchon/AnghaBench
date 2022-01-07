; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_MatchTableSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_MatchTableSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@E_NULL_POINTER = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"E_BUSY error\00", align 1
@NO_MSG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @FM_PCD_MatchTableSet(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @E_INVALID_HANDLE, align 4
  %10 = call i32 @SANITY_CHECK_RETURN_VALUE(i32* %8, i32 %9, i32* null)
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @E_NULL_POINTER, align 4
  %13 = call i32 @SANITY_CHECK_RETURN_VALUE(i32* %11, i32 %12, i32* null)
  %14 = call i64 @XX_Malloc(i32 4)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @MAJOR, align 4
  %20 = load i32, i32* @E_NO_MEMORY, align 4
  %21 = call i32 @REPORT_ERROR(i32 %19, i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %42

22:                                               ; preds = %2
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @memset(i32* %23, i32 0, i32 4)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @MatchTableSet(i32* %25, i32* %26, i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @GET_ERROR_TYPE(i32 %29)
  switch i32 %30, label %35 [
    i32 128, label %31
    i32 129, label %32
  ]

31:                                               ; preds = %22
  br label %40

32:                                               ; preds = %22
  %33 = load i32, i32* @TRACE, align 4
  %34 = call i32 @DBG(i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %42

35:                                               ; preds = %22
  %36 = load i32, i32* @MAJOR, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i8*, i8** @NO_MSG, align 8
  %39 = call i32 @REPORT_ERROR(i32 %36, i32 %37, i8* %38)
  store i32* null, i32** %3, align 8
  br label %42

40:                                               ; preds = %31
  %41 = load i32*, i32** %6, align 8
  store i32* %41, i32** %3, align 8
  br label %42

42:                                               ; preds = %40, %35, %32, %18
  %43 = load i32*, i32** %3, align 8
  ret i32* %43
}

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(i32*, i32, i32*) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MatchTableSet(i32*, i32*, i32*) #1

declare dso_local i32 @GET_ERROR_TYPE(i32) #1

declare dso_local i32 @DBG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
