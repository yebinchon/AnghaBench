; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_icrlo_write_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_icrlo_write_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, i64, i32, %struct.LAPIC* }
%struct.LAPIC = type { i32, i64 }
%struct.vm_exit = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@APIC_DELSTAT_PEND = common dso_local global i32 0, align 4
@APIC_VECTOR_MASK = common dso_local global i32 0, align 4
@APIC_DELMODE_MASK = common dso_local global i32 0, align 4
@APIC_DELMODE_FIXED = common dso_local global i32 0, align 4
@APIC_ESR_SEND_ILLEGAL_VECTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Ignoring invalid IPI %d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"icrlo 0x%016lx triggered ipi %d\00", align 1
@APIC_DELMODE_NMI = common dso_local global i32 0, align 4
@APIC_DEST_MASK = common dso_local global i32 0, align 4
@APIC_DESTMODE_LOG = common dso_local global i32 0, align 4
@IPIS_SENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"vlapic sending ipi %d to vcpuid %d\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"vlapic sending ipi nmi to vcpuid %d\00", align 1
@APIC_DELMODE_INIT = common dso_local global i32 0, align 4
@APIC_LEVEL_MASK = common dso_local global i32 0, align 4
@APIC_LEVEL_DEASSERT = common dso_local global i32 0, align 4
@BS_INIT = common dso_local global i64 0, align 8
@BS_SIPI = common dso_local global i64 0, align 8
@APIC_DELMODE_STARTUP = common dso_local global i32 0, align 4
@BS_RUNNING = common dso_local global i64 0, align 8
@VM_EXITCODE_SPINUP_AP = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlapic_icrlo_write_handler(%struct.vlapic* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlapic*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vlapic*, align 8
  %14 = alloca %struct.vm_exit*, align 8
  %15 = alloca %struct.LAPIC*, align 8
  %16 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %18 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %17, i32 0, i32 3
  %19 = load %struct.LAPIC*, %struct.LAPIC** %18, align 8
  store %struct.LAPIC* %19, %struct.LAPIC** %15, align 8
  %20 = load i32, i32* @APIC_DELSTAT_PEND, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.LAPIC*, %struct.LAPIC** %15, align 8
  %23 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.LAPIC*, %struct.LAPIC** %15, align 8
  %27 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = shl i32 %29, 32
  %31 = load %struct.LAPIC*, %struct.LAPIC** %15, align 8
  %32 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %30, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %36 = call i64 @x2apic(%struct.vlapic* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i32, i32* %9, align 4
  %40 = ashr i32 %39, 32
  store i32 %40, i32* %10, align 4
  br label %44

41:                                               ; preds = %2
  %42 = load i32, i32* %9, align 4
  %43 = ashr i32 %42, 56
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @APIC_VECTOR_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @APIC_DELMODE_MASK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @APIC_DELMODE_FIXED, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %44
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 16
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %59 = load i32, i32* @APIC_ESR_SEND_ILLEGAL_VECTOR, align 4
  %60 = call i32 @vlapic_set_error(%struct.vlapic* %58, i32 %59, i32 0)
  %61 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @VLAPIC_CTR1(%struct.vlapic* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 0, i32* %3, align 4
  br label %260

64:                                               ; preds = %54, %44
  %65 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @VLAPIC_CTR2(%struct.vlapic* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @APIC_DELMODE_FIXED, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @APIC_DELMODE_NMI, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %158

76:                                               ; preds = %72, %64
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @APIC_DEST_MASK, align 4
  %79 = and i32 %77, %78
  switch i32 %79, label %113 [
    i32 129, label %80
    i32 128, label %94
    i32 130, label %99
    i32 131, label %104
  ]

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @APIC_DESTMODE_LOG, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %7, align 4
  %86 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %87 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %92 = call i64 @x2apic(%struct.vlapic* %91)
  %93 = call i32 @vlapic_calcdest(i32 %88, i32* %8, i32 %89, i32 %90, i32 0, i64 %92)
  br label %115

94:                                               ; preds = %76
  %95 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %96 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @CPU_SETOF(i32 %97, i32* %8)
  br label %115

99:                                               ; preds = %76
  %100 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %101 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @vm_active_cpus(i32 %102)
  store i32 %103, i32* %8, align 4
  br label %115

104:                                              ; preds = %76
  %105 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %106 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @vm_active_cpus(i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %110 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @CPU_CLR(i32 %111, i32* %8)
  br label %115

113:                                              ; preds = %76
  %114 = call i32 @CPU_ZERO(i32* %8)
  br label %115

115:                                              ; preds = %113, %104, %99, %94, %80
  br label %116

116:                                              ; preds = %156, %115
  %117 = call i32 @CPU_FFS(i32* %8)
  store i32 %117, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %157

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @CPU_CLR(i32 %122, i32* %8)
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @APIC_DELMODE_FIXED, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %147

127:                                              ; preds = %119
  %128 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %129 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @lapic_intr_edge(i32 %130, i32 %131, i32 %132)
  %134 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %135 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %138 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @IPIS_SENT, align 4
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @vmm_stat_array_incr(i32 %136, i32 %139, i32 %140, i32 %141, i32 1)
  %143 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @VLAPIC_CTR2(%struct.vlapic* %143, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %144, i32 %145)
  br label %156

147:                                              ; preds = %119
  %148 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %149 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @vm_inject_nmi(i32 %150, i32 %151)
  %153 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @VLAPIC_CTR1(%struct.vlapic* %153, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %147, %127
  br label %116

157:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %260

158:                                              ; preds = %72
  %159 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %160 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @vm_get_maxcpus(i32 %161)
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* @APIC_DELMODE_INIT, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %202

166:                                              ; preds = %158
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @APIC_LEVEL_MASK, align 4
  %169 = and i32 %167, %168
  %170 = load i32, i32* @APIC_LEVEL_DEASSERT, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  store i32 0, i32* %3, align 4
  br label %260

173:                                              ; preds = %166
  %174 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %175 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %201

178:                                              ; preds = %173
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %201

181:                                              ; preds = %178
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %16, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %201

185:                                              ; preds = %181
  %186 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %187 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = call %struct.vlapic* @vm_lapic(i32 %188, i32 %189)
  store %struct.vlapic* %190, %struct.vlapic** %13, align 8
  %191 = load %struct.vlapic*, %struct.vlapic** %13, align 8
  %192 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @BS_INIT, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %185
  %197 = load i64, i64* @BS_SIPI, align 8
  %198 = load %struct.vlapic*, %struct.vlapic** %13, align 8
  %199 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %198, i32 0, i32 1
  store i64 %197, i64* %199, align 8
  br label %200

200:                                              ; preds = %196, %185
  store i32 0, i32* %3, align 4
  br label %260

201:                                              ; preds = %181, %178, %173
  br label %202

202:                                              ; preds = %201, %158
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* @APIC_DELMODE_STARTUP, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %259

206:                                              ; preds = %202
  %207 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %208 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %258

211:                                              ; preds = %206
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %258

214:                                              ; preds = %211
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* %16, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %258

218:                                              ; preds = %214
  %219 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %220 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %10, align 4
  %223 = call %struct.vlapic* @vm_lapic(i32 %221, i32 %222)
  store %struct.vlapic* %223, %struct.vlapic** %13, align 8
  %224 = load %struct.vlapic*, %struct.vlapic** %13, align 8
  %225 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @BS_SIPI, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %218
  store i32 0, i32* %3, align 4
  br label %260

230:                                              ; preds = %218
  %231 = load i64, i64* @BS_RUNNING, align 8
  %232 = load %struct.vlapic*, %struct.vlapic** %13, align 8
  %233 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %232, i32 0, i32 1
  store i64 %231, i64* %233, align 8
  %234 = load i32*, i32** %5, align 8
  store i32 1, i32* %234, align 4
  %235 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %236 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %239 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = call %struct.vm_exit* @vm_exitinfo(i32 %237, i64 %241)
  store %struct.vm_exit* %242, %struct.vm_exit** %14, align 8
  %243 = load i32, i32* @VM_EXITCODE_SPINUP_AP, align 4
  %244 = load %struct.vm_exit*, %struct.vm_exit** %14, align 8
  %245 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* %10, align 4
  %247 = load %struct.vm_exit*, %struct.vm_exit** %14, align 8
  %248 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 0
  store i32 %246, i32* %250, align 4
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* @PAGE_SHIFT, align 4
  %253 = shl i32 %251, %252
  %254 = load %struct.vm_exit*, %struct.vm_exit** %14, align 8
  %255 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 1
  store i32 %253, i32* %257, align 4
  store i32 0, i32* %3, align 4
  br label %260

258:                                              ; preds = %214, %211, %206
  br label %259

259:                                              ; preds = %258, %202
  store i32 1, i32* %3, align 4
  br label %260

260:                                              ; preds = %259, %230, %229, %200, %172, %157, %57
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local i64 @x2apic(%struct.vlapic*) #1

declare dso_local i32 @vlapic_set_error(%struct.vlapic*, i32, i32) #1

declare dso_local i32 @VLAPIC_CTR1(%struct.vlapic*, i8*, i32) #1

declare dso_local i32 @VLAPIC_CTR2(%struct.vlapic*, i8*, i32, i32) #1

declare dso_local i32 @vlapic_calcdest(i32, i32*, i32, i32, i32, i64) #1

declare dso_local i32 @CPU_SETOF(i32, i32*) #1

declare dso_local i32 @vm_active_cpus(i32) #1

declare dso_local i32 @CPU_CLR(i32, i32*) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_FFS(i32*) #1

declare dso_local i32 @lapic_intr_edge(i32, i32, i32) #1

declare dso_local i32 @vmm_stat_array_incr(i32, i32, i32, i32, i32) #1

declare dso_local i32 @vm_inject_nmi(i32, i32) #1

declare dso_local i32 @vm_get_maxcpus(i32) #1

declare dso_local %struct.vlapic* @vm_lapic(i32, i32) #1

declare dso_local %struct.vm_exit* @vm_exitinfo(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
