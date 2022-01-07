; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_replic.c_FM_PCD_FrmReplicSetGroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_replic.c_FM_PCD_FrmReplicSetGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_26__*, i32, i32*, %struct.TYPE_26__*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@E_INVALID_HANDLE = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Advanced-offload must be enabled\00", align 1
@NO_MSG = common dso_local global i8* null, align 8
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Replic group lock\00", align 1
@FM_PCD_CC_AD_ENTRY_SIZE = common dso_local global i32 0, align 4
@FM_PCD_CC_AD_TABLE_ALIGN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"frame replicator source table descriptor\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Update CC shadow\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"allocate a new member\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"No available member\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_26__* @FM_PCD_FrmReplicSetGroup(%struct.TYPE_26__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  store i32* null, i32** %8, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %11, align 4
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %15 = load i64, i64* @E_INVALID_HANDLE, align 8
  %16 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_26__* %14, i64 %15, i32* null)
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %18 = load i64, i64* @E_INVALID_HANDLE, align 8
  %19 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_26__* %17, i64 %18, i32* null)
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %21 = call i32 @FmPcdIsAdvancedOffloadSupported(%struct.TYPE_26__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @MAJOR, align 4
  %25 = load i64, i64* @E_INVALID_STATE, align 8
  %26 = call i32 @REPORT_ERROR(i32 %24, i64 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  br label %204

27:                                               ; preds = %2
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %30 = call i64 @CheckParams(%struct.TYPE_26__* %28, %struct.TYPE_26__* %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* @MAJOR, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load i8*, i8** @NO_MSG, align 8
  %37 = call i32 @REPORT_ERROR(i32 %34, i64 %35, i8* %36)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  br label %204

38:                                               ; preds = %27
  %39 = call i64 @XX_Malloc(i32 48)
  %40 = inttoptr i64 %39 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %40, %struct.TYPE_26__** %6, align 8
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %42 = icmp ne %struct.TYPE_26__* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @MAJOR, align 4
  %45 = load i64, i64* @E_NO_MEMORY, align 8
  %46 = call i32 @REPORT_ERROR(i32 %44, i64 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  br label %204

47:                                               ; preds = %38
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %49 = call i32 @memset(%struct.TYPE_26__* %48, i32 0, i32 48)
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 7
  %52 = call i32 @INIT_LIST(i32* %51)
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 3
  %55 = call i32 @INIT_LIST(i32* %54)
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 5
  store %struct.TYPE_26__* %56, %struct.TYPE_26__** %58, align 8
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %60, align 8
  %62 = call %struct.TYPE_26__* @FmPcdGetMuramHandle(%struct.TYPE_26__* %61)
  store %struct.TYPE_26__* %62, %struct.TYPE_26__** %12, align 8
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %64 = call i32 @ASSERT_COND(%struct.TYPE_26__* %63)
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %66, align 8
  %68 = call i32 @FmPcdAcquireLock(%struct.TYPE_26__* %67)
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %47
  %76 = load i32, i32* @MAJOR, align 4
  %77 = load i64, i64* @E_NO_MEMORY, align 8
  %78 = call i32 @REPORT_ERROR(i32 %76, i64 %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %80 = call i32 @DeleteGroup(%struct.TYPE_26__* %79)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  br label %204

81:                                               ; preds = %47
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %83 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %84 = load i32, i32* @FM_PCD_CC_AD_TABLE_ALIGN, align 4
  %85 = call i64 @FM_MURAM_AllocMem(%struct.TYPE_26__* %82, i32 %83, i32 %84)
  %86 = inttoptr i64 %85 to %struct.TYPE_26__*
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 2
  store %struct.TYPE_26__* %86, %struct.TYPE_26__** %88, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %90, align 8
  %92 = icmp ne %struct.TYPE_26__* %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %81
  %94 = load i32, i32* @MAJOR, align 4
  %95 = load i64, i64* @E_NO_MEMORY, align 8
  %96 = call i32 @REPORT_ERROR(i32 %94, i64 %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %98 = call i32 @DeleteGroup(%struct.TYPE_26__* %97)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  br label %204

99:                                               ; preds = %81
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 5
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %101, align 8
  %103 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %104 = load i32, i32* @FM_PCD_CC_AD_TABLE_ALIGN, align 4
  %105 = call i64 @FmPcdUpdateCcShadow(%struct.TYPE_26__* %102, i32 %103, i32 %104)
  store i64 %105, i64* %10, align 8
  %106 = load i64, i64* %10, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load i32, i32* @MAJOR, align 4
  %110 = load i64, i64* %10, align 8
  %111 = call i32 @REPORT_ERROR(i32 %109, i64 %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %113 = call i32 @DeleteGroup(%struct.TYPE_26__* %112)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  br label %204

114:                                              ; preds = %99
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  store i32 0, i32* %9, align 4
  br label %120

120:                                              ; preds = %138, %114
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %141

126:                                              ; preds = %120
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %128 = call i64 @AllocMember(%struct.TYPE_26__* %127)
  store i64 %128, i64* %10, align 8
  %129 = load i64, i64* %10, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load i32, i32* @MAJOR, align 4
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @REPORT_ERROR(i32 %132, i64 %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %136 = call i32 @DeleteGroup(%struct.TYPE_26__* %135)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  br label %204

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %120

141:                                              ; preds = %120
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %189, %141
  %147 = load i32, i32* %9, align 4
  %148 = icmp sge i32 %147, 0
  br i1 %148, label %149, label %192

149:                                              ; preds = %146
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %153, 1
  %155 = icmp eq i32 %150, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i32, i32* @TRUE, align 4
  store i32 %157, i32* %11, align 4
  br label %160

158:                                              ; preds = %149
  %159 = load i32, i32* @FALSE, align 4
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %158, %156
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %11, align 4
  %169 = call i32* @InitMember(%struct.TYPE_26__* %161, i32* %167, i32 %168)
  store i32* %169, i32** %7, align 8
  %170 = load i32*, i32** %7, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %178, label %172

172:                                              ; preds = %160
  %173 = load i32, i32* @MAJOR, align 4
  %174 = load i64, i64* @E_INVALID_HANDLE, align 8
  %175 = call i32 @REPORT_ERROR(i32 %173, i64 %174, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %177 = call i32 @DeleteGroup(%struct.TYPE_26__* %176)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  br label %204

178:                                              ; preds = %160
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %180 = load i32*, i32** %7, align 8
  %181 = load i32*, i32** %8, align 8
  %182 = call i32 @LinkMemberToMember(%struct.TYPE_26__* %179, i32* %180, i32* %181)
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %184 = load i32*, i32** %7, align 8
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 3
  %187 = call i32 @AddMemberToList(%struct.TYPE_26__* %183, i32* %184, i32* %186)
  %188 = load i32*, i32** %7, align 8
  store i32* %188, i32** %8, align 8
  br label %189

189:                                              ; preds = %178
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %9, align 4
  br label %146

192:                                              ; preds = %146
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %194, align 8
  %196 = call i32 @BuildSourceTd(%struct.TYPE_26__* %195)
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %199, align 8
  %201 = load i32*, i32** %8, align 8
  %202 = call i32 @LinkSourceToMember(%struct.TYPE_26__* %197, %struct.TYPE_26__* %200, i32* %201)
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_26__* %203, %struct.TYPE_26__** %3, align 8
  br label %204

204:                                              ; preds = %192, %172, %131, %108, %93, %75, %43, %33, %23
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  ret %struct.TYPE_26__* %205
}

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_26__*, i64, i32*) #1

declare dso_local i32 @FmPcdIsAdvancedOffloadSupported(%struct.TYPE_26__*) #1

declare dso_local i32 @REPORT_ERROR(i32, i64, i8*) #1

declare dso_local i64 @CheckParams(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @INIT_LIST(i32*) #1

declare dso_local %struct.TYPE_26__* @FmPcdGetMuramHandle(%struct.TYPE_26__*) #1

declare dso_local i32 @ASSERT_COND(%struct.TYPE_26__*) #1

declare dso_local i32 @FmPcdAcquireLock(%struct.TYPE_26__*) #1

declare dso_local i32 @DeleteGroup(%struct.TYPE_26__*) #1

declare dso_local i64 @FM_MURAM_AllocMem(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i64 @FmPcdUpdateCcShadow(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i64 @AllocMember(%struct.TYPE_26__*) #1

declare dso_local i32* @InitMember(%struct.TYPE_26__*, i32*, i32) #1

declare dso_local i32 @LinkMemberToMember(%struct.TYPE_26__*, i32*, i32*) #1

declare dso_local i32 @AddMemberToList(%struct.TYPE_26__*, i32*, i32*) #1

declare dso_local i32 @BuildSourceTd(%struct.TYPE_26__*) #1

declare dso_local i32 @LinkSourceToMember(%struct.TYPE_26__*, %struct.TYPE_26__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
