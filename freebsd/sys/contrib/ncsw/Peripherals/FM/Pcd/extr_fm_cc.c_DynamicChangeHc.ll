; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_DynamicChangeHc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_DynamicChangeHc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@E_OK = common dso_local global i64 0, align 8
@ILLEGAL_BASE = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"New AD address\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Old AD address\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"For part of nodes changes are done - situation is danger\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i32*, i32)* @DynamicChangeHc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DynamicChangeHc(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %15, align 8
  %18 = load i64, i64* @E_OK, align 8
  store i64 %18, i64* %16, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @ASSERT_COND(i32* %19)
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @ASSERT_COND(i32* %21)
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @ASSERT_COND(i32* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @NCSW_LIST_NumOfObjs(i32* %25)
  store i64 %26, i64* %17, align 8
  %27 = load i64, i64* %17, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %99

29:                                               ; preds = %5
  %30 = load i32*, i32** %8, align 8
  %31 = call i32* @NCSW_LIST_FIRST(i32* %30)
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32* @NCSW_LIST_FIRST(i32* %32)
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = call i64 @FmPcdCcGetNodeAddrOffsetFromNodeInfo(i32* %34, i32* %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* @ILLEGAL_BASE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %29
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @ReleaseModifiedDataStructure(i32* %41, i32* %42, i32* %43, i32* %44, i32 %45)
  %47 = load i32, i32* @MAJOR, align 4
  %48 = load i64, i64* @E_INVALID_VALUE, align 8
  %49 = call i32 @RETURN_ERROR(i32 %47, i64 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %40, %29
  store i64 0, i64* %15, align 8
  br label %51

51:                                               ; preds = %95, %50
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* %17, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %98

55:                                               ; preds = %51
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i64 @FmPcdCcGetNodeAddrOffsetFromNodeInfo(i32* %56, i32* %57)
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* @ILLEGAL_BASE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @ReleaseModifiedDataStructure(i32* %63, i32* %64, i32* %65, i32* %66, i32 %67)
  %69 = load i32, i32* @MAJOR, align 4
  %70 = load i64, i64* @E_INVALID_VALUE, align 8
  %71 = call i32 @RETURN_ERROR(i32 %69, i64 %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %62, %55
  %73 = load i32*, i32** %6, align 8
  %74 = bitcast i32* %73 to %struct.TYPE_2__*
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %14, align 8
  %79 = call i64 @FmHcPcdCcDoDynamicChange(i32 %76, i64 %77, i64 %78)
  store i64 %79, i64* %16, align 8
  %80 = load i64, i64* %16, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %72
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @ReleaseModifiedDataStructure(i32* %83, i32* %84, i32* %85, i32* %86, i32 %87)
  %89 = load i32, i32* @MAJOR, align 4
  %90 = load i64, i64* %16, align 8
  %91 = call i32 @RETURN_ERROR(i32 %89, i64 %90, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %82, %72
  %93 = load i32*, i32** %11, align 8
  %94 = call i32* @NCSW_LIST_NEXT(i32* %93)
  store i32* %94, i32** %11, align 8
  br label %95

95:                                               ; preds = %92
  %96 = load i64, i64* %15, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %15, align 8
  br label %51

98:                                               ; preds = %51
  br label %99

99:                                               ; preds = %98, %5
  %100 = load i64, i64* @E_OK, align 8
  ret i64 %100
}

declare dso_local i32 @ASSERT_COND(i32*) #1

declare dso_local i64 @NCSW_LIST_NumOfObjs(i32*) #1

declare dso_local i32* @NCSW_LIST_FIRST(i32*) #1

declare dso_local i64 @FmPcdCcGetNodeAddrOffsetFromNodeInfo(i32*, i32*) #1

declare dso_local i32 @ReleaseModifiedDataStructure(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i64 @FmHcPcdCcDoDynamicChange(i32, i64, i64) #1

declare dso_local i32* @NCSW_LIST_NEXT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
