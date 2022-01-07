; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FmPcdCcTreeAddIPR.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FmPcdCcTreeAddIPR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_12__ = type { i64, i32 }

@FM_PCD_MAX_NUM_OF_CC_GROUPS = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"need two free entries for IPR\00", align 1
@e_FM_PCD_DONE = common dso_local global i32 0, align 4
@E_BUSY = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@E_INVALID_STATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"This tree was previously updated with different IPR\00", align 1
@FALSE = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@FM_PCD_CC_AD_ENTRY_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmPcdCcTreeAddIPR(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i64, i64* %8, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %12, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %23 = call i32 @ASSERT_COND(%struct.TYPE_13__* %22)
  %24 = call i32 @memset(%struct.TYPE_12__* %13, i32 0, i32 16)
  %25 = call i32 @memset(%struct.TYPE_12__* %14, i32 0, i32 16)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @UINT_TO_PTR(i32 %28)
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @FmPcdManipIpReassmIsIpv6Hdr(i64 %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %5
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %39 = sub nsw i32 %38, 2
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @MAJOR, align 4
  %43 = load i64, i64* @E_INVALID_VALUE, align 8
  %44 = call i32 @RETURN_ERROR(i32 %42, i64 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %34, %5
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp sgt i32 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @MAJOR, align 4
  %54 = load i64, i64* @E_INVALID_VALUE, align 8
  %55 = call i32 @RETURN_ERROR(i32 %53, i64 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %45
  %57 = load i32, i32* @e_FM_PCD_DONE, align 4
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  store i32 %57, i32* %58, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %62 = call i64 @CcRootTryLock(%struct.TYPE_13__* %61)
  store i64 %62, i64* %19, align 8
  %63 = load i64, i64* %19, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* @E_BUSY, align 4
  %67 = call i64 @ERROR_CODE(i32 %66)
  store i64 %67, i64* %6, align 8
  br label %214

68:                                               ; preds = %56
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %76 = call i32 @CcRootReleaseLock(%struct.TYPE_13__* %75)
  %77 = load i64, i64* @E_OK, align 8
  store i64 %77, i64* %6, align 8
  br label %214

78:                                               ; preds = %68
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %91 = call i32 @CcRootReleaseLock(%struct.TYPE_13__* %90)
  %92 = load i32, i32* @MAJOR, align 4
  %93 = load i64, i64* @E_INVALID_STATE, align 8
  %94 = call i32 @RETURN_ERROR(i32 %92, i64 %93, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %89, %83, %78
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %145

98:                                               ; preds = %95
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = sext i32 %101 to i64
  store i64 %103, i64* %18, align 8
  %104 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %105 = sub nsw i32 %104, 2
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = load i64, i64* %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  store i32 %105, i32* %111, align 8
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %136

114:                                              ; preds = %98
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load i32, i32* @FALSE, align 4
  %120 = load i64, i64* %18, align 8
  %121 = call i64 @FmPcdManipBuildIpReassmScheme(i64 %115, i64 %116, %struct.TYPE_13__* %117, i64 %118, i32 %119, i64 %120)
  store i64 %121, i64* %19, align 8
  %122 = load i64, i64* %19, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %114
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %126, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %130 = call i32 @CcRootReleaseLock(%struct.TYPE_13__* %129)
  %131 = load i32, i32* @MAJOR, align 4
  %132 = load i64, i64* %19, align 8
  %133 = load i8*, i8** @NO_MSG, align 8
  %134 = call i32 @RETURN_ERROR(i32 %131, i64 %132, i8* %133)
  br label %135

135:                                              ; preds = %124, %114
  br label %136

136:                                              ; preds = %135, %98
  %137 = load i64, i64* %15, align 8
  %138 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %139 = sub nsw i32 %138, 2
  %140 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %141 = mul nsw i32 %139, %140
  %142 = call i32 @PTR_MOVE(i64 %137, i32 %141)
  %143 = load i64, i64* %7, align 8
  %144 = call i32 @NextStepAd(i32 %142, i32* null, %struct.TYPE_12__* %13, i64 %143)
  br label %145

145:                                              ; preds = %136, %95
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  %150 = sext i32 %148 to i64
  store i64 %150, i64* %17, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = load i64, i64* %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  store i64 0, i64* %156, align 8
  %157 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %158 = sub nsw i32 %157, 1
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = load i64, i64* %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  store i32 %158, i32* %164, align 8
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %199

167:                                              ; preds = %145
  %168 = load i64, i64* %7, align 8
  %169 = load i64, i64* %9, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %171 = load i64, i64* %10, align 8
  %172 = load i32, i32* @TRUE, align 4
  %173 = load i64, i64* %17, align 8
  %174 = call i64 @FmPcdManipBuildIpReassmScheme(i64 %168, i64 %169, %struct.TYPE_13__* %170, i64 %171, i32 %172, i64 %173)
  store i64 %174, i64* %19, align 8
  %175 = load i64, i64* %19, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %198

177:                                              ; preds = %167
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %179, align 8
  %182 = load i32, i32* %16, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %177
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %186, align 8
  %189 = load i64, i64* %10, align 8
  %190 = call i32 @FmPcdManipDeleteIpReassmSchemes(i64 %189)
  br label %191

191:                                              ; preds = %184, %177
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %193 = call i32 @CcRootReleaseLock(%struct.TYPE_13__* %192)
  %194 = load i32, i32* @MAJOR, align 4
  %195 = load i64, i64* %19, align 8
  %196 = load i8*, i8** @NO_MSG, align 8
  %197 = call i32 @RETURN_ERROR(i32 %194, i64 %195, i8* %196)
  br label %198

198:                                              ; preds = %191, %167
  br label %199

199:                                              ; preds = %198, %145
  %200 = load i64, i64* %15, align 8
  %201 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %202 = sub nsw i32 %201, 1
  %203 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %204 = mul nsw i32 %202, %203
  %205 = call i32 @PTR_MOVE(i64 %200, i32 %204)
  %206 = load i64, i64* %7, align 8
  %207 = call i32 @NextStepAd(i32 %205, i32* null, %struct.TYPE_12__* %13, i64 %206)
  %208 = load i64, i64* %10, align 8
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  store i64 %208, i64* %210, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %212 = call i32 @CcRootReleaseLock(%struct.TYPE_13__* %211)
  %213 = load i64, i64* @E_OK, align 8
  store i64 %213, i64* %6, align 8
  br label %214

214:                                              ; preds = %199, %74, %65
  %215 = load i64, i64* %6, align 8
  ret i64 %215
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_13__*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @UINT_TO_PTR(i32) #1

declare dso_local i32 @FmPcdManipIpReassmIsIpv6Hdr(i64) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i64 @CcRootTryLock(%struct.TYPE_13__*) #1

declare dso_local i64 @ERROR_CODE(i32) #1

declare dso_local i32 @CcRootReleaseLock(%struct.TYPE_13__*) #1

declare dso_local i64 @FmPcdManipBuildIpReassmScheme(i64, i64, %struct.TYPE_13__*, i64, i32, i64) #1

declare dso_local i32 @NextStepAd(i32, i32*, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @PTR_MOVE(i64, i32) #1

declare dso_local i32 @FmPcdManipDeleteIpReassmSchemes(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
