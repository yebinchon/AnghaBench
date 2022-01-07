; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_PlcrAllocProfilesForPartition.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_PlcrAllocProfilesForPartition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, %struct.TYPE_12__*, %struct.TYPE_14__*, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64, i64*, %struct.TYPE_13__*, i32, i32 }

@FM_PCD_PLCR_NUM_ENTRIES = common dso_local global i64 0, align 8
@ILLEGAL_BASE = common dso_local global i64 0, align 8
@FM_PCD_ALLOC_PROFILES = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4
@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"FM Guest mode, without IPC - can't validate Policer-profiles range!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PlcrAllocProfilesForPartition(%struct.TYPE_14__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca %struct.TYPE_13__, align 8
  %15 = alloca %struct.TYPE_13__, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = call i32 @ASSERT_COND(%struct.TYPE_14__* %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = call i32 @ASSERT_COND(%struct.TYPE_14__* %22)
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %202

27:                                               ; preds = %4
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @FM_PCD_PLCR_NUM_ENTRIES, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* @FM_PCD_PLCR_NUM_ENTRIES, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %27
  %38 = load i64, i64* @ILLEGAL_BASE, align 8
  store i64 %38, i64* %5, align 8
  br label %202

39:                                               ; preds = %31
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %111

44:                                               ; preds = %39
  %45 = call i32 @memset(%struct.TYPE_13__* %14, i32 0, i32 40)
  %46 = call i32 @memset(%struct.TYPE_13__* %15, i32 0, i32 40)
  %47 = call i32 @memset(%struct.TYPE_13__* %13, i32 0, i32 40)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 5
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  store i64 %62, i64* %63, align 8
  %64 = load i32, i32* @FM_PCD_ALLOC_PROFILES, align 4
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 4
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = call i32 @memcpy(i64* %67, %struct.TYPE_13__* %13, i32 40)
  store i32 12, i32* %17, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = bitcast %struct.TYPE_13__* %14 to i64*
  %73 = bitcast %struct.TYPE_13__* %15 to i64*
  %74 = call i64 @XX_IpcSendMessage(i64 %71, i64* %72, i32 44, i64* %73, i32* %17, i32* null, i32* null)
  store i64 %74, i64* %16, align 8
  %75 = load i64, i64* %16, align 8
  %76 = load i64, i64* @E_OK, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %44
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp ne i64 %80, 12
  br i1 %81, label %82, label %88

82:                                               ; preds = %78, %44
  %83 = load i32, i32* @MAJOR, align 4
  %84 = load i64, i64* %16, align 8
  %85 = load i32, i32* @NO_MSG, align 4
  %86 = call i32 @REPORT_ERROR(i32 %83, i64 %84, i32 %85)
  %87 = load i64, i64* @ILLEGAL_BASE, align 8
  store i64 %87, i64* %5, align 8
  br label %202

88:                                               ; preds = %78
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 3
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = call i32 @memcpy(i64* %92, %struct.TYPE_13__* %94, i32 8)
  br label %96

96:                                               ; preds = %88
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ILLEGAL_BASE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load i32, i32* @MAJOR, align 4
  %106 = load i64, i64* %16, align 8
  %107 = load i32, i32* @NO_MSG, align 4
  %108 = call i32 @REPORT_ERROR(i32 %105, i64 %106, i32 %107)
  %109 = load i64, i64* @ILLEGAL_BASE, align 8
  store i64 %109, i64* %5, align 8
  br label %202

110:                                              ; preds = %96
  br label %122

111:                                              ; preds = %39
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NCSW_MASTER_ID, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i32, i32* @WARNING, align 4
  %119 = call i32 @DBG(i32 %118, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %120 = load i64, i64* @ILLEGAL_BASE, align 8
  store i64 %120, i64* %5, align 8
  br label %202

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %110
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @XX_LockIntrSpinlock(i32 %125)
  store i32 %126, i32* %10, align 4
  %127 = load i64, i64* %7, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %155, %122
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %7, align 8
  %133 = load i64, i64* %8, align 8
  %134 = add nsw i64 %132, %133
  %135 = icmp slt i64 %131, %134
  br i1 %135, label %136, label %158

136:                                              ; preds = %129
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @ILLEGAL_BASE, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %136
  %151 = load i64, i64* %11, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %11, align 8
  br label %154

153:                                              ; preds = %136
  br label %158

154:                                              ; preds = %150
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %12, align 4
  br label %129

158:                                              ; preds = %153, %129
  %159 = load i64, i64* %11, align 8
  %160 = load i64, i64* %8, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %188

162:                                              ; preds = %158
  %163 = load i64, i64* %7, align 8
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %12, align 4
  br label %165

165:                                              ; preds = %184, %162
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* %7, align 8
  %169 = load i64, i64* %8, align 8
  %170 = add nsw i64 %168, %169
  %171 = icmp slt i64 %167, %170
  br i1 %171, label %172, label %187

172:                                              ; preds = %165
  %173 = load i64, i64* %9, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  store i64 %173, i64* %183, align 8
  br label %184

184:                                              ; preds = %172
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %12, align 4
  br label %165

187:                                              ; preds = %165
  br label %195

188:                                              ; preds = %158
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @XX_UnlockIntrSpinlock(i32 %191, i32 %192)
  %194 = load i64, i64* @ILLEGAL_BASE, align 8
  store i64 %194, i64* %5, align 8
  br label %202

195:                                              ; preds = %187
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @XX_UnlockIntrSpinlock(i32 %198, i32 %199)
  %201 = load i64, i64* %7, align 8
  store i64 %201, i64* %5, align 8
  br label %202

202:                                              ; preds = %195, %188, %117, %104, %82, %37, %26
  %203 = load i64, i64* %5, align 8
  ret i64 %203
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_14__*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @XX_IpcSendMessage(i64, i64*, i32, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @REPORT_ERROR(i32, i64, i32) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @XX_LockIntrSpinlock(i32) #1

declare dso_local i32 @XX_UnlockIntrSpinlock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
