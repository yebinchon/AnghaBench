; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_DoDynamicChange.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_DoDynamicChange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_18__ = type { i32, i32, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4
@FM_PCD_CC_AD_ENTRY_SIZE = common dso_local global i32 0, align 4
@e_FM_PCD_CC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32*, i32*, %struct.TYPE_17__*, i32)* @DoDynamicChange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DoDynamicChange(i64 %0, i32* %1, i32* %2, %struct.TYPE_17__* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_19__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %11, align 8
  %23 = load i64, i64* @E_OK, align 8
  store i64 %23, i64* %17, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @ASSERT_COND(i64 %24)
  %26 = call i32 @memset(%struct.TYPE_19__* %14, i32 0, i32 16)
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @NCSW_LIST_NumOfObjs(i32* %27)
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %18, align 8
  %30 = load i64, i64* %18, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %135

32:                                               ; preds = %5
  %33 = load i32*, i32** %8, align 8
  %34 = call i32* @NCSW_LIST_FIRST(i32* %33)
  store i32* %34, i32** %12, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @DynamicChangeHc(i64 %35, i32* %36, i32* %37, %struct.TYPE_17__* %38, i32 %39)
  store i64 %40, i64* %17, align 8
  %41 = load i64, i64* %17, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load i32, i32* @MAJOR, align 4
  %45 = load i64, i64* %17, align 8
  %46 = load i32, i32* @NO_MSG, align 4
  %47 = call i32 @RETURN_ERROR(i32 %44, i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %32
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %134

51:                                               ; preds = %48
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 2, %59
  store i32 %60, i32* %16, align 4
  br label %65

61:                                               ; preds = %51
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %16, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %16, align 4
  %76 = mul nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @MemCpy8(i32 %68, i32 %71, i32 %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  %91 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %92 = mul nsw i32 %90, %91
  %93 = call i32 @MemCpy8(i32 %83, i32 %86, i32 %92)
  %94 = load i32*, i32** %12, align 8
  %95 = call %struct.TYPE_20__* @CC_NODE_F_OBJECT(i32* %94)
  store %struct.TYPE_20__* %95, %struct.TYPE_20__** %13, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %15, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @e_FM_PCD_CC, align 4
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  store i32 %109, i32* %110, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %112 = ptrtoint %struct.TYPE_18__* %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  store i64 %112, i64* %115, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %119 = call i32 @BuildNewAd(i64 %116, %struct.TYPE_17__* %117, %struct.TYPE_18__* %118, %struct.TYPE_19__* %14)
  %120 = load i64, i64* %6, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call i64 @DynamicChangeHc(i64 %120, i32* %121, i32* %122, %struct.TYPE_17__* %123, i32 %124)
  store i64 %125, i64* %17, align 8
  %126 = load i64, i64* %17, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %65
  %129 = load i32, i32* @MAJOR, align 4
  %130 = load i64, i64* %17, align 8
  %131 = load i32, i32* @NO_MSG, align 4
  %132 = call i32 @RETURN_ERROR(i32 %129, i64 %130, i32 %131)
  br label %133

133:                                              ; preds = %128, %65
  br label %134

134:                                              ; preds = %133, %48
  br label %135

135:                                              ; preds = %134, %5
  %136 = load i64, i64* %6, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i64 @ReleaseModifiedDataStructure(i64 %136, i32* %137, i32* %138, %struct.TYPE_17__* %139, i32 %140)
  store i64 %141, i64* %17, align 8
  %142 = load i64, i64* %17, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %135
  %145 = load i32, i32* @MAJOR, align 4
  %146 = load i64, i64* %17, align 8
  %147 = load i32, i32* @NO_MSG, align 4
  %148 = call i32 @RETURN_ERROR(i32 %145, i64 %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %135
  %150 = load i64, i64* @E_OK, align 8
  ret i64 %150
}

declare dso_local i32 @ASSERT_COND(i64) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @NCSW_LIST_NumOfObjs(i32*) #1

declare dso_local i32* @NCSW_LIST_FIRST(i32*) #1

declare dso_local i64 @DynamicChangeHc(i64, i32*, i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i32) #1

declare dso_local i32 @MemCpy8(i32, i32, i32) #1

declare dso_local %struct.TYPE_20__* @CC_NODE_F_OBJECT(i32*) #1

declare dso_local i32 @BuildNewAd(i64, %struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i64 @ReleaseModifiedDataStructure(i64, i32*, i32*, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
