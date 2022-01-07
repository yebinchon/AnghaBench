; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_reset_adapter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_reset_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aac_command = type { i32 (%struct.aac_command*)*, i32 }
%struct.aac_fib = type { i32* }
%struct.aac_pause_command = type { i32, i32, i32, i32, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MA_OWNED = common dso_local global i32 0, align 4
@AAC_STATE_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"aac_reset_adapter() already in progress\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AAC_DISABLE_INTERRUPT = common dso_local global i32 0, align 4
@AAC_CMD_RESET = common dso_local global i32 0, align 4
@AAC_SUPPORTED_MU_RESET = common dso_local global i32 0, align 4
@AAC_IRCSR = common dso_local global i32 0, align 4
@AAC_IRCSR_CORES_RST = common dso_local global i32 0, align 4
@AAC_IOP_RESET_ALWAYS = common dso_local global i32 0, align 4
@AAC_IOP_RESET = common dso_local global i32 0, align 4
@AAC_SRB_STS_INVALID_REQUEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"IOP_RESET not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"IOP_RESET failed\0A\00", align 1
@VM_ContainerConfig = common dso_local global i32 0, align 4
@CT_PAUSE_IO = common dso_local global i32 0, align 4
@ContainerCommand = common dso_local global i32 0, align 4
@AAC_SUPPORTED_DOORBELL_RESET = common dso_local global i32 0, align 4
@AAC_SRC_IDBR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AAC_FLAGS_SYNC_MODE = common dso_local global i32 0, align 4
@AAC_ENABLE_MSIX = common dso_local global i32 0, align 4
@AAC_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*)* @aac_reset_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_reset_adapter(%struct.aac_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca %struct.aac_command*, align 8
  %5 = alloca %struct.aac_fib*, align 8
  %6 = alloca %struct.aac_pause_command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  %13 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %14 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %15 = call i32 @fwprintf(%struct.aac_softc* %13, i8* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %17 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %16, i32 0, i32 6
  %18 = load i32, i32* @MA_OWNED, align 4
  %19 = call i32 @mtx_assert(i32* %17, i32 %18)
  %20 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %21 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AAC_STATE_RESET, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %28 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %2, align 4
  br label %272

32:                                               ; preds = %1
  %33 = load i32, i32* @AAC_STATE_RESET, align 4
  %34 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %35 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %39 = load i32, i32* @AAC_DISABLE_INTERRUPT, align 4
  %40 = call i32 @AAC_ACCESS_DEVREG(%struct.aac_softc* %38, i32 %39)
  br label %41

41:                                               ; preds = %64, %32
  %42 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %43 = call %struct.aac_command* @aac_dequeue_busy(%struct.aac_softc* %42)
  store %struct.aac_command* %43, %struct.aac_command** %4, align 8
  %44 = icmp ne %struct.aac_command* %43, null
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load i32, i32* @AAC_CMD_RESET, align 4
  %47 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %48 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %52 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %51, i32 0, i32 0
  %53 = load i32 (%struct.aac_command*)*, i32 (%struct.aac_command*)** %52, align 8
  %54 = icmp ne i32 (%struct.aac_command*)* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %57 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %56, i32 0, i32 0
  %58 = load i32 (%struct.aac_command*)*, i32 (%struct.aac_command*)** %57, align 8
  %59 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %60 = call i32 %58(%struct.aac_command* %59)
  br label %64

61:                                               ; preds = %45
  %62 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %63 = call i32 @wakeup(%struct.aac_command* %62)
  br label %64

64:                                               ; preds = %61, %55
  br label %41

65:                                               ; preds = %41
  br label %66

66:                                               ; preds = %89, %65
  %67 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %68 = call %struct.aac_command* @aac_dequeue_ready(%struct.aac_softc* %67)
  store %struct.aac_command* %68, %struct.aac_command** %4, align 8
  %69 = icmp ne %struct.aac_command* %68, null
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = load i32, i32* @AAC_CMD_RESET, align 4
  %72 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %73 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %77 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %76, i32 0, i32 0
  %78 = load i32 (%struct.aac_command*)*, i32 (%struct.aac_command*)** %77, align 8
  %79 = icmp ne i32 (%struct.aac_command*)* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %70
  %81 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %82 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %81, i32 0, i32 0
  %83 = load i32 (%struct.aac_command*)*, i32 (%struct.aac_command*)** %82, align 8
  %84 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %85 = call i32 %83(%struct.aac_command* %84)
  br label %89

86:                                               ; preds = %70
  %87 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %88 = call i32 @wakeup(%struct.aac_command* %87)
  br label %89

89:                                               ; preds = %86, %80
  br label %66

90:                                               ; preds = %66
  %91 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %92 = call i64 @aac_check_adapter_health(%struct.aac_softc* %91, i32* null)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %96 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %95, i32 0, i32 6
  %97 = call i32 @mtx_unlock(i32* %96)
  %98 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %99 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @aacraid_shutdown(i32 %100)
  %102 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %103 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %102, i32 0, i32 6
  %104 = call i32 @mtx_lock(i32* %103)
  br label %105

105:                                              ; preds = %94, %90
  %106 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %107 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @AAC_SUPPORTED_MU_RESET, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %105
  %113 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %114 = load i32, i32* @AAC_IRCSR, align 4
  %115 = load i32, i32* @AAC_IRCSR_CORES_RST, align 4
  %116 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %113, i32 %114, i32 %115)
  store i32 50000, i32* %9, align 4
  br label %117

117:                                              ; preds = %120, %112
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = call i32 @DELAY(i32 100)
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %9, align 4
  br label %117

124:                                              ; preds = %117
  br label %216

125:                                              ; preds = %105
  %126 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %127 = load i32, i32* @AAC_IOP_RESET_ALWAYS, align 4
  %128 = call i32 @aacraid_sync_command(%struct.aac_softc* %126, i32 %127, i32 0, i32 0, i32 0, i32 0, i32* %7, i32* %8)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %182

131:                                              ; preds = %125
  %132 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %133 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %182, label %136

136:                                              ; preds = %131
  %137 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %138 = load i32, i32* @AAC_IOP_RESET, align 4
  %139 = call i32 @aacraid_sync_command(%struct.aac_softc* %137, i32 %138, i32 0, i32 0, i32 0, i32 0, i32* %7, i32* null)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %181

141:                                              ; preds = %136
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @AAC_SRB_STS_INVALID_REQUEST, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %147 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @device_printf(i32 %148, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %155

150:                                              ; preds = %141
  %151 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %152 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @device_printf(i32 %153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %155

155:                                              ; preds = %150, %145
  %156 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %157 = call i32 @aac_alloc_sync_fib(%struct.aac_softc* %156, %struct.aac_fib** %5)
  %158 = load %struct.aac_fib*, %struct.aac_fib** %5, align 8
  %159 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = bitcast i32* %161 to %struct.aac_pause_command*
  store %struct.aac_pause_command* %162, %struct.aac_pause_command** %6, align 8
  %163 = load i32, i32* @VM_ContainerConfig, align 4
  %164 = load %struct.aac_pause_command*, %struct.aac_pause_command** %6, align 8
  %165 = getelementptr inbounds %struct.aac_pause_command, %struct.aac_pause_command* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @CT_PAUSE_IO, align 4
  %167 = load %struct.aac_pause_command*, %struct.aac_pause_command** %6, align 8
  %168 = getelementptr inbounds %struct.aac_pause_command, %struct.aac_pause_command* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  %169 = load %struct.aac_pause_command*, %struct.aac_pause_command** %6, align 8
  %170 = getelementptr inbounds %struct.aac_pause_command, %struct.aac_pause_command* %169, i32 0, i32 0
  store i32 1, i32* %170, align 4
  %171 = load %struct.aac_pause_command*, %struct.aac_pause_command** %6, align 8
  %172 = getelementptr inbounds %struct.aac_pause_command, %struct.aac_pause_command* %171, i32 0, i32 1
  store i32 1, i32* %172, align 4
  %173 = load %struct.aac_pause_command*, %struct.aac_pause_command** %6, align 8
  %174 = getelementptr inbounds %struct.aac_pause_command, %struct.aac_pause_command* %173, i32 0, i32 2
  store i32 1, i32* %174, align 4
  %175 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %176 = load i32, i32* @ContainerCommand, align 4
  %177 = load %struct.aac_fib*, %struct.aac_fib** %5, align 8
  %178 = call i32 @aac_sync_fib(%struct.aac_softc* %175, i32 %176, i32 0, %struct.aac_fib* %177, i32 20)
  %179 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %180 = call i32 @aac_release_sync_fib(%struct.aac_softc* %179)
  br label %260

181:                                              ; preds = %136
  br label %192

182:                                              ; preds = %131, %125
  %183 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %184 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  store i32 0, i32* %11, align 4
  %188 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %189 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %8, align 4
  br label %191

191:                                              ; preds = %187, %182
  br label %192

192:                                              ; preds = %191, %181
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %215, label %195

195:                                              ; preds = %192
  %196 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %197 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @AAC_SUPPORTED_DOORBELL_RESET, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %195
  %203 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %204 = load i32, i32* @AAC_SRC_IDBR, align 4
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %203, i32 %204, i32 %205)
  store i32 50000, i32* %9, align 4
  br label %207

207:                                              ; preds = %210, %202
  %208 = load i32, i32* %9, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = call i32 @DELAY(i32 100)
  %212 = load i32, i32* %9, align 4
  %213 = add nsw i32 %212, -1
  store i32 %213, i32* %9, align 4
  br label %207

214:                                              ; preds = %207
  br label %215

215:                                              ; preds = %214, %195, %192
  br label %216

216:                                              ; preds = %215, %124
  %217 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %218 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %10, align 4
  %220 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %221 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %12, align 4
  %223 = load i32, i32* @FALSE, align 4
  %224 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %225 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %224, i32 0, i32 4
  store i32 %223, i32* %225, align 4
  %226 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %227 = call i64 @aac_check_firmware(%struct.aac_softc* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %216
  br label %260

230:                                              ; preds = %216
  %231 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %232 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @AAC_FLAGS_SYNC_MODE, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %259, label %237

237:                                              ; preds = %230
  %238 = load i32, i32* %10, align 4
  %239 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %240 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %239, i32 0, i32 3
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* %12, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %237
  %244 = load i32, i32* %12, align 4
  %245 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %246 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %245, i32 0, i32 4
  store i32 %244, i32* %246, align 4
  %247 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %248 = load i32, i32* @AAC_ENABLE_MSIX, align 4
  %249 = call i32 @AAC_ACCESS_DEVREG(%struct.aac_softc* %247, i32 %248)
  br label %250

250:                                              ; preds = %243, %237
  %251 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %252 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %251, i32 0, i32 6
  %253 = call i32 @mtx_unlock(i32* %252)
  %254 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %255 = call i32 @aac_init(%struct.aac_softc* %254)
  %256 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %257 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %256, i32 0, i32 6
  %258 = call i32 @mtx_lock(i32* %257)
  br label %259

259:                                              ; preds = %250, %230
  br label %260

260:                                              ; preds = %259, %229, %155
  %261 = load i32, i32* @AAC_STATE_RESET, align 4
  %262 = xor i32 %261, -1
  %263 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %264 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = and i32 %265, %262
  store i32 %266, i32* %264, align 4
  %267 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %268 = load i32, i32* @AAC_ENABLE_INTERRUPT, align 4
  %269 = call i32 @AAC_ACCESS_DEVREG(%struct.aac_softc* %267, i32 %268)
  %270 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %271 = call i32 @aacraid_startio(%struct.aac_softc* %270)
  store i32 0, i32* %2, align 4
  br label %272

272:                                              ; preds = %260, %26
  %273 = load i32, i32* %2, align 4
  ret i32 %273
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @AAC_ACCESS_DEVREG(%struct.aac_softc*, i32) #1

declare dso_local %struct.aac_command* @aac_dequeue_busy(%struct.aac_softc*) #1

declare dso_local i32 @wakeup(%struct.aac_command*) #1

declare dso_local %struct.aac_command* @aac_dequeue_ready(%struct.aac_softc*) #1

declare dso_local i64 @aac_check_adapter_health(%struct.aac_softc*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @aacraid_shutdown(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @AAC_MEM0_SETREG4(%struct.aac_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @aacraid_sync_command(%struct.aac_softc*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @aac_alloc_sync_fib(%struct.aac_softc*, %struct.aac_fib**) #1

declare dso_local i32 @aac_sync_fib(%struct.aac_softc*, i32, i32, %struct.aac_fib*, i32) #1

declare dso_local i32 @aac_release_sync_fib(%struct.aac_softc*) #1

declare dso_local i64 @aac_check_firmware(%struct.aac_softc*) #1

declare dso_local i32 @aac_init(%struct.aac_softc*) #1

declare dso_local i32 @aacraid_startio(%struct.aac_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
