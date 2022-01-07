; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmSetNumOfTasks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmSetNumOfTasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_8__*, i64, i64*, %struct.fman_bmi_regs* }
%struct.TYPE_8__ = type { i64, i64, i64, i32 }
%struct.fman_bmi_regs = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@FM_SET_NUM_OF_TASKS = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IPC reply length mismatch\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"No IPC - can't validate FM total-num-of-tasks.\00", align 1
@E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"running in guest-mode without neither IPC nor mapped register!\00", align 1
@E_NOT_AVAILABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"Requested numOfTasks and extra tasks pool for fm%d exceed total numOfTasks.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmSetNumOfTasks(i64 %0, i64 %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fman_bmi_regs*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_10__, align 8
  %20 = alloca %struct.TYPE_9__, align 4
  %21 = alloca %struct.TYPE_9__, align 4
  %22 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = load i64, i64* %7, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %12, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 4
  %27 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %26, align 8
  store %struct.fman_bmi_regs* %27, %struct.fman_bmi_regs** %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %17, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %18, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @IN_RANGE(i32 1, i64 %32, i32 63)
  %34 = call i32 @ASSERT_COND(i32 %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NCSW_MASTER_ID, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %95

40:                                               ; preds = %5
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %95, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %95

52:                                               ; preds = %45
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  store i64 %53, i64* %54, align 8
  %55 = load i64, i64* %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  store i64 %55, i64* %56, align 8
  %57 = load i64, i64* %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  store i64 %57, i64* %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = call i32 @memset(%struct.TYPE_9__* %20, i32 0, i32 12)
  %63 = call i32 @memset(%struct.TYPE_9__* %21, i32 0, i32 12)
  %64 = load i32, i32* @FM_SET_NUM_OF_TASKS, align 4
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @memcpy(i32 %67, %struct.TYPE_10__* %19, i32 32)
  store i32 4, i32* %22, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = bitcast %struct.TYPE_9__* %20 to i64*
  %75 = bitcast %struct.TYPE_9__* %21 to i64*
  %76 = call i32 @XX_IpcSendMessage(i64 %73, i64* %74, i32 36, i64* %75, i32* %22, i32* null, i32* null)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* @E_OK, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %52
  %80 = load i32, i32* @MINOR, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i8*, i8** @NO_MSG, align 8
  %83 = call i32 @RETURN_ERROR(i32 %80, i32 %81, i8* %82)
  br label %84

84:                                               ; preds = %79, %52
  %85 = load i32, i32* %22, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp ne i64 %86, 4
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* @MAJOR, align 4
  %90 = load i32, i32* @E_INVALID_VALUE, align 4
  %91 = call i32 @RETURN_ERROR(i32 %89, i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %84
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %6, align 4
  br label %216

95:                                               ; preds = %45, %40, %5
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @NCSW_MASTER_ID, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %95
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i32, i32* @WARNING, align 4
  %108 = call i32 @DBG(i32 %107, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %109 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %14, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %17, align 8
  %112 = load i64, i64* %18, align 8
  %113 = call i32 @fman_set_num_of_tasks(%struct.fman_bmi_regs* %109, i64 %110, i64 %111, i64 %112)
  br label %125

114:                                              ; preds = %101, %95
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @NCSW_MASTER_ID, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i32, i32* @MAJOR, align 4
  %122 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %123 = call i32 @RETURN_ERROR(i32 %121, i32 %122, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %124

124:                                              ; preds = %120, %114
  br label %125

125:                                              ; preds = %124, %106
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %126
  %130 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %14, align 8
  %131 = load i64, i64* %8, align 8
  %132 = call i64 @fman_get_num_of_tasks(%struct.fman_bmi_regs* %130, i64 %131)
  store i64 %132, i64* %15, align 8
  %133 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %14, align 8
  %134 = load i64, i64* %8, align 8
  %135 = call i64 @fman_get_num_extra_tasks(%struct.fman_bmi_regs* %133, i64 %134)
  store i64 %135, i64* %16, align 8
  br label %136

136:                                              ; preds = %129, %126
  %137 = load i64, i64* %18, align 8
  %138 = load i64, i64* %16, align 8
  %139 = icmp sgt i64 %137, %138
  br i1 %139, label %140, label %152

140:                                              ; preds = %136
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %18, align 8
  %147 = call i64 @MAX(i64 %145, i64 %146)
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  store i64 %147, i64* %151, align 8
  br label %152

152:                                              ; preds = %140, %136
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %15, align 8
  %159 = sub nsw i64 %157, %158
  %160 = load i64, i64* %17, align 8
  %161 = add nsw i64 %159, %160
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = sub nsw i64 %166, %171
  %173 = icmp sgt i64 %161, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %152
  %175 = load i32, i32* @MAJOR, align 4
  %176 = load i32, i32* @E_NOT_AVAILABLE, align 4
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to i8*
  %184 = call i32 @RETURN_ERROR(i32 %175, i32 %176, i8* %183)
  br label %214

185:                                              ; preds = %152
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %15, align 8
  %192 = icmp sge i64 %190, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 @ASSERT_COND(i32 %193)
  %195 = load i64, i64* %15, align 8
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = sub nsw i64 %200, %195
  store i64 %201, i64* %199, align 8
  %202 = load i64, i64* %17, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %207, %202
  store i64 %208, i64* %206, align 8
  %209 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %14, align 8
  %210 = load i64, i64* %8, align 8
  %211 = load i64, i64* %17, align 8
  %212 = load i64, i64* %18, align 8
  %213 = call i32 @fman_set_num_of_tasks(%struct.fman_bmi_regs* %209, i64 %210, i64 %211, i64 %212)
  br label %214

214:                                              ; preds = %185, %174
  %215 = load i32, i32* @E_OK, align 4
  store i32 %215, i32* %6, align 4
  br label %216

216:                                              ; preds = %214, %92
  %217 = load i32, i32* %6, align 4
  ret i32 %217
}

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @IN_RANGE(i32, i64, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @XX_IpcSendMessage(i64, i64*, i32, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @fman_set_num_of_tasks(%struct.fman_bmi_regs*, i64, i64, i64) #1

declare dso_local i64 @fman_get_num_of_tasks(%struct.fman_bmi_regs*, i64) #1

declare dso_local i64 @fman_get_num_extra_tasks(%struct.fman_bmi_regs*, i64) #1

declare dso_local i64 @MAX(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
