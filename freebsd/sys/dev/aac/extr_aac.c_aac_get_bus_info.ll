; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_get_bus_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_get_bus_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, i32 }
%struct.aac_fib = type { i32* }
%struct.aac_ctcfg = type { i32, i64, i32, i32, i32, i64, i32 }
%struct.aac_ctcfg_resp = type { i64, i32 }
%struct.aac_vmioctl = type { i32, i64, i32, i32, i32, i64, i32 }
%struct.aac_vmi_businf_resp = type { i64, i32 }
%struct.aac_getbusinf = type { i32, i64*, i32*, i32 }
%struct.aac_sim = type { i32, i32*, %struct.aac_softc*, i32, i32 }

@VM_ContainerConfig = common dso_local global i32 0, align 4
@CT_GET_SCSI_METHOD = common dso_local global i32 0, align 4
@ContainerCommand = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Error %d sending VM_ContainerConfig command\0A\00", align 1
@ST_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"VM_ContainerConfig returned 0x%x\0A\00", align 1
@VM_Ioctl = common dso_local global i32 0, align 4
@FT_DRIVE = common dso_local global i32 0, align 4
@GetBusInfo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Error %d sending VMIoctl command\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"VM_Ioctl returned %d\0A\00", align 1
@AAC_BUS_VALID = common dso_local global i64 0, align 8
@M_AACBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"No memory to add passthrough bus %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"aacp\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"device_add_child failed for passthrough bus %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"SCSI Passthrough Bus\00", align 1
@sim_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_softc*)* @aac_get_bus_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_get_bus_info(%struct.aac_softc* %0) #0 {
  %2 = alloca %struct.aac_softc*, align 8
  %3 = alloca %struct.aac_fib*, align 8
  %4 = alloca %struct.aac_ctcfg*, align 8
  %5 = alloca %struct.aac_ctcfg_resp*, align 8
  %6 = alloca %struct.aac_vmioctl*, align 8
  %7 = alloca %struct.aac_vmi_businf_resp*, align 8
  %8 = alloca %struct.aac_getbusinf, align 8
  %9 = alloca %struct.aac_sim*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %2, align 8
  %14 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %15 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %14, i32 0, i32 2
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %18 = call i32 @aac_alloc_sync_fib(%struct.aac_softc* %17, %struct.aac_fib** %3)
  %19 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %20 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = bitcast i32* %22 to %struct.aac_ctcfg*
  store %struct.aac_ctcfg* %23, %struct.aac_ctcfg** %4, align 8
  %24 = load %struct.aac_ctcfg*, %struct.aac_ctcfg** %4, align 8
  %25 = bitcast %struct.aac_ctcfg* %24 to %struct.aac_vmioctl*
  %26 = call i32 @bzero(%struct.aac_vmioctl* %25, i32 48)
  %27 = load i32, i32* @VM_ContainerConfig, align 4
  %28 = load %struct.aac_ctcfg*, %struct.aac_ctcfg** %4, align 8
  %29 = getelementptr inbounds %struct.aac_ctcfg, %struct.aac_ctcfg* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @CT_GET_SCSI_METHOD, align 4
  %31 = load %struct.aac_ctcfg*, %struct.aac_ctcfg** %4, align 8
  %32 = getelementptr inbounds %struct.aac_ctcfg, %struct.aac_ctcfg* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load %struct.aac_ctcfg*, %struct.aac_ctcfg** %4, align 8
  %34 = getelementptr inbounds %struct.aac_ctcfg, %struct.aac_ctcfg* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %36 = load i32, i32* @ContainerCommand, align 4
  %37 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %38 = call i32 @aac_sync_fib(%struct.aac_softc* %35, i32 %36, i32 0, %struct.aac_fib* %37, i32 48)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %1
  %42 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %43 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %48 = call i32 @aac_release_sync_fib(%struct.aac_softc* %47)
  %49 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %50 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %49, i32 0, i32 2
  %51 = call i32 @mtx_unlock(i32* %50)
  br label %246

52:                                               ; preds = %1
  %53 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %54 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = bitcast i32* %56 to %struct.aac_ctcfg_resp*
  store %struct.aac_ctcfg_resp* %57, %struct.aac_ctcfg_resp** %5, align 8
  %58 = load %struct.aac_ctcfg_resp*, %struct.aac_ctcfg_resp** %5, align 8
  %59 = getelementptr inbounds %struct.aac_ctcfg_resp, %struct.aac_ctcfg_resp* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ST_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %52
  %64 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %65 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.aac_ctcfg_resp*, %struct.aac_ctcfg_resp** %5, align 8
  %68 = getelementptr inbounds %struct.aac_ctcfg_resp, %struct.aac_ctcfg_resp* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %73 = call i32 @aac_release_sync_fib(%struct.aac_softc* %72)
  %74 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %75 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %74, i32 0, i32 2
  %76 = call i32 @mtx_unlock(i32* %75)
  br label %246

77:                                               ; preds = %52
  %78 = load %struct.aac_ctcfg_resp*, %struct.aac_ctcfg_resp** %5, align 8
  %79 = getelementptr inbounds %struct.aac_ctcfg_resp, %struct.aac_ctcfg_resp* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %82 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %84 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = bitcast i32* %86 to %struct.aac_vmioctl*
  store %struct.aac_vmioctl* %87, %struct.aac_vmioctl** %6, align 8
  %88 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %6, align 8
  %89 = call i32 @bzero(%struct.aac_vmioctl* %88, i32 48)
  %90 = load i32, i32* @VM_Ioctl, align 4
  %91 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %6, align 8
  %92 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @FT_DRIVE, align 4
  %94 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %6, align 8
  %95 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %97 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %6, align 8
  %100 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %6, align 8
  %102 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load i32, i32* @GetBusInfo, align 4
  %104 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %6, align 8
  %105 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %107 = load i32, i32* @ContainerCommand, align 4
  %108 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %109 = call i32 @aac_sync_fib(%struct.aac_softc* %106, i32 %107, i32 0, %struct.aac_fib* %108, i32 16)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %77
  %113 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %114 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @device_printf(i32 %115, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %119 = call i32 @aac_release_sync_fib(%struct.aac_softc* %118)
  %120 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %121 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %120, i32 0, i32 2
  %122 = call i32 @mtx_unlock(i32* %121)
  br label %246

123:                                              ; preds = %77
  %124 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %125 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = bitcast i32* %127 to %struct.aac_vmi_businf_resp*
  store %struct.aac_vmi_businf_resp* %128, %struct.aac_vmi_businf_resp** %7, align 8
  %129 = load %struct.aac_vmi_businf_resp*, %struct.aac_vmi_businf_resp** %7, align 8
  %130 = getelementptr inbounds %struct.aac_vmi_businf_resp, %struct.aac_vmi_businf_resp* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @ST_OK, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %123
  %135 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %136 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.aac_vmi_businf_resp*, %struct.aac_vmi_businf_resp** %7, align 8
  %139 = getelementptr inbounds %struct.aac_vmi_businf_resp, %struct.aac_vmi_businf_resp* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i32 @device_printf(i32 %137, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %144 = call i32 @aac_release_sync_fib(%struct.aac_softc* %143)
  %145 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %146 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %145, i32 0, i32 2
  %147 = call i32 @mtx_unlock(i32* %146)
  br label %246

148:                                              ; preds = %123
  %149 = load %struct.aac_vmi_businf_resp*, %struct.aac_vmi_businf_resp** %7, align 8
  %150 = getelementptr inbounds %struct.aac_vmi_businf_resp, %struct.aac_vmi_businf_resp* %149, i32 0, i32 1
  %151 = call i32 @bcopy(i32* %150, %struct.aac_getbusinf* %8, i32 32)
  %152 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %153 = call i32 @aac_release_sync_fib(%struct.aac_softc* %152)
  %154 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %155 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %154, i32 0, i32 2
  %156 = call i32 @mtx_unlock(i32* %155)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %157

157:                                              ; preds = %235, %148
  %158 = load i32, i32* %11, align 4
  %159 = getelementptr inbounds %struct.aac_getbusinf, %struct.aac_getbusinf* %8, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %162, label %238

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.aac_getbusinf, %struct.aac_getbusinf* %8, i32 0, i32 1
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @AAC_BUS_VALID, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  br label %235

172:                                              ; preds = %162
  %173 = load i32, i32* @M_AACBUF, align 4
  %174 = load i32, i32* @M_NOWAIT, align 4
  %175 = load i32, i32* @M_ZERO, align 4
  %176 = or i32 %174, %175
  %177 = call i64 @malloc(i32 32, i32 %173, i32 %176)
  %178 = inttoptr i64 %177 to %struct.aac_sim*
  store %struct.aac_sim* %178, %struct.aac_sim** %9, align 8
  %179 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %180 = icmp eq %struct.aac_sim* %179, null
  br i1 %180, label %181, label %187

181:                                              ; preds = %172
  %182 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %183 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %11, align 4
  %186 = call i32 @device_printf(i32 %184, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %185)
  br label %238

187:                                              ; preds = %172
  %188 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %189 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32* @device_add_child(i32 %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 -1)
  store i32* %191, i32** %10, align 8
  %192 = load i32*, i32** %10, align 8
  %193 = icmp eq i32* %192, null
  br i1 %193, label %194, label %203

194:                                              ; preds = %187
  %195 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %196 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %11, align 4
  %199 = call i32 @device_printf(i32 %197, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %198)
  %200 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %201 = load i32, i32* @M_AACBUF, align 4
  %202 = call i32 @free(%struct.aac_sim* %200, i32 %201)
  br label %238

203:                                              ; preds = %187
  %204 = getelementptr inbounds %struct.aac_getbusinf, %struct.aac_getbusinf* %8, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %207 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %206, i32 0, i32 4
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* %11, align 4
  %209 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %210 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = getelementptr inbounds %struct.aac_getbusinf, %struct.aac_getbusinf* %8, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %11, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %218 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 8
  %219 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %220 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %221 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %220, i32 0, i32 2
  store %struct.aac_softc* %219, %struct.aac_softc** %221, align 8
  %222 = load i32*, i32** %10, align 8
  %223 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %224 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %223, i32 0, i32 1
  store i32* %222, i32** %224, align 8
  %225 = load i32*, i32** %10, align 8
  %226 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %227 = call i32 @device_set_ivars(i32* %225, %struct.aac_sim* %226)
  %228 = load i32*, i32** %10, align 8
  %229 = call i32 @device_set_desc(i32* %228, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %230 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %231 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %230, i32 0, i32 1
  %232 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %233 = load i32, i32* @sim_link, align 4
  %234 = call i32 @TAILQ_INSERT_TAIL(i32* %231, %struct.aac_sim* %232, i32 %233)
  store i32 1, i32* %12, align 4
  br label %235

235:                                              ; preds = %203, %171
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %11, align 4
  br label %157

238:                                              ; preds = %194, %181, %157
  %239 = load i32, i32* %12, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %238
  %242 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %243 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @bus_generic_attach(i32 %244)
  br label %246

246:                                              ; preds = %41, %63, %112, %134, %241, %238
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @aac_alloc_sync_fib(%struct.aac_softc*, %struct.aac_fib**) #1

declare dso_local i32 @bzero(%struct.aac_vmioctl*, i32) #1

declare dso_local i32 @aac_sync_fib(%struct.aac_softc*, i32, i32, %struct.aac_fib*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @aac_release_sync_fib(%struct.aac_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bcopy(i32*, %struct.aac_getbusinf*, i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @free(%struct.aac_sim*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.aac_sim*) #1

declare dso_local i32 @device_set_desc(i32*, i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.aac_sim*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
