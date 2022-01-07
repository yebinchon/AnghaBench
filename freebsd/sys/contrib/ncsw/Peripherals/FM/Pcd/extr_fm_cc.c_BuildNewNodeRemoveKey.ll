; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_BuildNewNodeRemoveKey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_BuildNewNodeRemoveKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64, i64, i64, i32, i32, i32, i32, i32 }

@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4
@FM_PCD_CC_AD_ENTRY_SIZE = common dso_local global i32 0, align 4
@e_FM_PCD_CC = common dso_local global i64 0, align 8
@e_FM_PCD_FR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, i32, %struct.TYPE_17__*)* @BuildNewNodeRemoveKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @BuildNewNodeRemoveKey(%struct.TYPE_18__* %0, i32 %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i64, i64* @E_OK, align 8
  store i64 %15, i64* %14, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = call i64 @BuildNewNodeCommonPart(%struct.TYPE_18__* %22, i32* %13, %struct.TYPE_17__* %23)
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %14, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load i32, i32* @MAJOR, align 4
  %29 = load i64, i64* %14, align 8
  %30 = load i32, i32* @NO_MSG, align 4
  %31 = call i32 @RETURN_ERROR(i32 %28, i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %3
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %99, %32
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %104

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %104

53:                                               ; preds = %46
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %59 = mul nsw i32 %57, %58
  %60 = call i32 @PTR_MOVE(i32 %56, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %66 = mul nsw i32 %64, %65
  %67 = call i32 @PTR_MOVE(i32 %63, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %71 = call i32 @MemCpy8(i32 %68, i32 %69, i32 %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %13, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = call i32 @PTR_MOVE(i32 %74, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %13, align 4
  %87 = mul nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = call i32 @PTR_MOVE(i32 %84, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = call i32 @MemCpy8(i32 %92, i32 %93, i32 %97)
  br label %99

99:                                               ; preds = %53
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %33

104:                                              ; preds = %52, %33
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %110 = mul nsw i32 %108, %109
  %111 = call i32 @PTR_MOVE(i32 %107, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %117 = mul nsw i32 %115, %116
  %118 = call i32 @PTR_MOVE(i32 %114, i32 %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %122 = call i32 @MemCpy8(i32 %119, i32 %120, i32 %121)
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @e_FM_PCD_CC, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %104
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %134, %104
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %148
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 3
  store i64 %168, i64* %170, align 8
  br label %171

171:                                              ; preds = %159, %148
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %171
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %183, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 2
  store i64 %189, i64* %191, align 8
  br label %192

192:                                              ; preds = %181, %171
  %193 = load i64, i64* @E_OK, align 8
  ret i64 %193
}

declare dso_local i64 @BuildNewNodeCommonPart(%struct.TYPE_18__*, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i32) #1

declare dso_local i32 @PTR_MOVE(i32, i32) #1

declare dso_local i32 @MemCpy8(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
