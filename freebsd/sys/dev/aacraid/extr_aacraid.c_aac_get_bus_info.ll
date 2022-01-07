; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_get_bus_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_get_bus_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, i32 }
%struct.aac_fib = type { i32* }
%struct.aac_ctcfg = type { i32, i64, i32, i32, i32, i64, i32 }
%struct.aac_ctcfg_resp = type { i64, i32 }
%struct.aac_vmioctl = type { i32, i64, i32, i32, i32, i64, i32 }
%struct.aac_vmi_businf_resp = type { i64, i32 }
%struct.aac_getbusinf = type { i32, i64*, i32 }
%struct.aac_sim = type { i32, i32, i32*, i32*, %struct.aac_softc*, i32, i32 }

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
@M_AACRAIDBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"No memory to add passthrough bus %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"aacraidp\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"device_add_child failed for passthrough bus %d\0A\00", align 1
@PASSTHROUGH_BUS = common dso_local global i32 0, align 4
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
  store %struct.aac_softc* %0, %struct.aac_softc** %2, align 8
  %13 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %14 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %13, i32 0, i32 2
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %17 = call i32 @aac_alloc_sync_fib(%struct.aac_softc* %16, %struct.aac_fib** %3)
  %18 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %19 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = bitcast i32* %21 to %struct.aac_ctcfg*
  store %struct.aac_ctcfg* %22, %struct.aac_ctcfg** %4, align 8
  %23 = load %struct.aac_ctcfg*, %struct.aac_ctcfg** %4, align 8
  %24 = bitcast %struct.aac_ctcfg* %23 to %struct.aac_vmioctl*
  %25 = call i32 @bzero(%struct.aac_vmioctl* %24, i32 48)
  %26 = load i32, i32* @VM_ContainerConfig, align 4
  %27 = load %struct.aac_ctcfg*, %struct.aac_ctcfg** %4, align 8
  %28 = getelementptr inbounds %struct.aac_ctcfg, %struct.aac_ctcfg* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @CT_GET_SCSI_METHOD, align 4
  %30 = load %struct.aac_ctcfg*, %struct.aac_ctcfg** %4, align 8
  %31 = getelementptr inbounds %struct.aac_ctcfg, %struct.aac_ctcfg* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.aac_ctcfg*, %struct.aac_ctcfg** %4, align 8
  %33 = getelementptr inbounds %struct.aac_ctcfg, %struct.aac_ctcfg* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %35 = load i32, i32* @ContainerCommand, align 4
  %36 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %37 = call i32 @aac_sync_fib(%struct.aac_softc* %34, i32 %35, i32 0, %struct.aac_fib* %36, i32 48)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %1
  %41 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %42 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %47 = call i32 @aac_release_sync_fib(%struct.aac_softc* %46)
  %48 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %49 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %48, i32 0, i32 2
  %50 = call i32 @mtx_unlock(i32* %49)
  br label %237

51:                                               ; preds = %1
  %52 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %53 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = bitcast i32* %55 to %struct.aac_ctcfg_resp*
  store %struct.aac_ctcfg_resp* %56, %struct.aac_ctcfg_resp** %5, align 8
  %57 = load %struct.aac_ctcfg_resp*, %struct.aac_ctcfg_resp** %5, align 8
  %58 = getelementptr inbounds %struct.aac_ctcfg_resp, %struct.aac_ctcfg_resp* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ST_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %51
  %63 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %64 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.aac_ctcfg_resp*, %struct.aac_ctcfg_resp** %5, align 8
  %67 = getelementptr inbounds %struct.aac_ctcfg_resp, %struct.aac_ctcfg_resp* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %72 = call i32 @aac_release_sync_fib(%struct.aac_softc* %71)
  %73 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %74 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %73, i32 0, i32 2
  %75 = call i32 @mtx_unlock(i32* %74)
  br label %237

76:                                               ; preds = %51
  %77 = load %struct.aac_ctcfg_resp*, %struct.aac_ctcfg_resp** %5, align 8
  %78 = getelementptr inbounds %struct.aac_ctcfg_resp, %struct.aac_ctcfg_resp* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %81 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %83 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = bitcast i32* %85 to %struct.aac_vmioctl*
  store %struct.aac_vmioctl* %86, %struct.aac_vmioctl** %6, align 8
  %87 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %6, align 8
  %88 = call i32 @bzero(%struct.aac_vmioctl* %87, i32 48)
  %89 = load i32, i32* @VM_Ioctl, align 4
  %90 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %6, align 8
  %91 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @FT_DRIVE, align 4
  %93 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %6, align 8
  %94 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %96 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %6, align 8
  %99 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %6, align 8
  %101 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  %102 = load i32, i32* @GetBusInfo, align 4
  %103 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %6, align 8
  %104 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %106 = load i32, i32* @ContainerCommand, align 4
  %107 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %108 = call i32 @aac_sync_fib(%struct.aac_softc* %105, i32 %106, i32 0, %struct.aac_fib* %107, i32 16)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %76
  %112 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %113 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @device_printf(i32 %114, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %118 = call i32 @aac_release_sync_fib(%struct.aac_softc* %117)
  %119 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %120 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %119, i32 0, i32 2
  %121 = call i32 @mtx_unlock(i32* %120)
  br label %237

122:                                              ; preds = %76
  %123 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %124 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = bitcast i32* %126 to %struct.aac_vmi_businf_resp*
  store %struct.aac_vmi_businf_resp* %127, %struct.aac_vmi_businf_resp** %7, align 8
  %128 = load %struct.aac_vmi_businf_resp*, %struct.aac_vmi_businf_resp** %7, align 8
  %129 = getelementptr inbounds %struct.aac_vmi_businf_resp, %struct.aac_vmi_businf_resp* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @ST_OK, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %122
  %134 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %135 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.aac_vmi_businf_resp*, %struct.aac_vmi_businf_resp** %7, align 8
  %138 = getelementptr inbounds %struct.aac_vmi_businf_resp, %struct.aac_vmi_businf_resp* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @device_printf(i32 %136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  %142 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %143 = call i32 @aac_release_sync_fib(%struct.aac_softc* %142)
  %144 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %145 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %144, i32 0, i32 2
  %146 = call i32 @mtx_unlock(i32* %145)
  br label %237

147:                                              ; preds = %122
  %148 = load %struct.aac_vmi_businf_resp*, %struct.aac_vmi_businf_resp** %7, align 8
  %149 = getelementptr inbounds %struct.aac_vmi_businf_resp, %struct.aac_vmi_businf_resp* %148, i32 0, i32 1
  %150 = call i32 @bcopy(i32* %149, %struct.aac_getbusinf* %8, i32 24)
  %151 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %152 = call i32 @aac_release_sync_fib(%struct.aac_softc* %151)
  %153 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %154 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %153, i32 0, i32 2
  %155 = call i32 @mtx_unlock(i32* %154)
  store i32 0, i32* %11, align 4
  br label %156

156:                                              ; preds = %234, %147
  %157 = load i32, i32* %11, align 4
  %158 = getelementptr inbounds %struct.aac_getbusinf, %struct.aac_getbusinf* %8, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %157, %159
  br i1 %160, label %161, label %237

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.aac_getbusinf, %struct.aac_getbusinf* %8, i32 0, i32 1
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @AAC_BUS_VALID, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  br label %234

171:                                              ; preds = %161
  %172 = load i32, i32* @M_AACRAIDBUF, align 4
  %173 = load i32, i32* @M_NOWAIT, align 4
  %174 = load i32, i32* @M_ZERO, align 4
  %175 = or i32 %173, %174
  %176 = call i64 @malloc(i32 40, i32 %172, i32 %175)
  %177 = inttoptr i64 %176 to %struct.aac_sim*
  store %struct.aac_sim* %177, %struct.aac_sim** %9, align 8
  %178 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %179 = icmp eq %struct.aac_sim* %178, null
  br i1 %179, label %180, label %186

180:                                              ; preds = %171
  %181 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %182 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @device_printf(i32 %183, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %184)
  br label %237

186:                                              ; preds = %171
  %187 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %188 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32* @device_add_child(i32 %189, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 -1)
  store i32* %190, i32** %10, align 8
  %191 = load i32*, i32** %10, align 8
  %192 = icmp eq i32* %191, null
  br i1 %192, label %193, label %202

193:                                              ; preds = %186
  %194 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %195 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @device_printf(i32 %196, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %197)
  %199 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %200 = load i32, i32* @M_AACRAIDBUF, align 4
  %201 = call i32 @free(%struct.aac_sim* %199, i32 %200)
  br label %237

202:                                              ; preds = %186
  %203 = getelementptr inbounds %struct.aac_getbusinf, %struct.aac_getbusinf* %8, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %206 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %205, i32 0, i32 6
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, 1
  %209 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %210 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = load i32, i32* @PASSTHROUGH_BUS, align 4
  %212 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %213 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %212, i32 0, i32 5
  store i32 %211, i32* %213, align 8
  %214 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %215 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %214, i32 0, i32 1
  store i32 -1, i32* %215, align 4
  %216 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %217 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %218 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %217, i32 0, i32 4
  store %struct.aac_softc* %216, %struct.aac_softc** %218, align 8
  %219 = load i32*, i32** %10, align 8
  %220 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %221 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %220, i32 0, i32 3
  store i32* %219, i32** %221, align 8
  %222 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %223 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %222, i32 0, i32 2
  store i32* null, i32** %223, align 8
  %224 = load i32*, i32** %10, align 8
  %225 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %226 = call i32 @device_set_ivars(i32* %224, %struct.aac_sim* %225)
  %227 = load i32*, i32** %10, align 8
  %228 = call i32 @device_set_desc(i32* %227, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %229 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %230 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %229, i32 0, i32 0
  %231 = load %struct.aac_sim*, %struct.aac_sim** %9, align 8
  %232 = load i32, i32* @sim_link, align 4
  %233 = call i32 @TAILQ_INSERT_TAIL(i32* %230, %struct.aac_sim* %231, i32 %232)
  br label %234

234:                                              ; preds = %202, %170
  %235 = load i32, i32* %11, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %11, align 4
  br label %156

237:                                              ; preds = %40, %62, %111, %133, %193, %180, %156
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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
