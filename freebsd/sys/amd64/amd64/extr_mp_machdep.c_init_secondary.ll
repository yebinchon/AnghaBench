; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_mp_machdep.c_init_secondary.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_mp_machdep.c_init_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { i32, i32, %struct.TYPE_5__, i64, %struct.system_segment_descriptor*, %struct.user_segment_descriptor*, %struct.user_segment_descriptor*, %struct.system_segment_descriptor*, %struct.user_segment_descriptor*, i32, i64, %struct.TYPE_5__*, i64, %struct.pcpu*, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64 }
%struct.system_segment_descriptor = type { i32 }
%struct.user_segment_descriptor = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.nmi_pcpu = type { i8* }
%struct.region_descriptor = type { i32, i64 }

@bootAP = common dso_local global i32 0, align 4
@__pcpu = common dso_local global %struct.pcpu* null, align 8
@dpcpu = common dso_local global i32 0, align 4
@cpu_apic_ids = common dso_local global i32* null, align 8
@PC_PTI_STACK_SZ = common dso_local global i32 0, align 4
@GPROC0_SEL = common dso_local global i64 0, align 8
@GUFS32_SEL = common dso_local global i64 0, align 8
@GUGS32_SEL = common dso_local global i64 0, align 8
@GUSERLDT_SEL = common dso_local global i64 0, align 8
@PMAP_PCID_KERN = common dso_local global i64 0, align 8
@IOPERM_BITMAP_SIZE = common dso_local global i64 0, align 8
@doublefault_stack = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@nmi_stack = common dso_local global i32* null, align 8
@mce_stack = common dso_local global i32* null, align 8
@dbg_stack = common dso_local global i32* null, align 8
@gdt_segs = common dso_local global %struct.TYPE_6__* null, align 8
@NGDT = common dso_local global i32 0, align 4
@MSR_FSBASE = common dso_local global i32 0, align 4
@MSR_GSBASE = common dso_local global i32 0, align 4
@MSR_KGSBASE = common dso_local global i32 0, align 4
@r_idt = common dso_local global i32 0, align 4
@SEL_KPL = common dso_local global i32 0, align 4
@CR0_CD = common dso_local global i32 0, align 4
@CR0_NW = common dso_local global i32 0, align 4
@CR0_EM = common dso_local global i32 0, align 4
@mp_naps = common dso_local global i32 0, align 4
@aps_ready = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_secondary() #0 {
  %1 = alloca %struct.pcpu*, align 8
  %2 = alloca %struct.nmi_pcpu*, align 8
  %3 = alloca %struct.user_segment_descriptor*, align 8
  %4 = alloca %struct.region_descriptor, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @bootAP, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @ucode_load_ap(i32 %10)
  %12 = load %struct.pcpu*, %struct.pcpu** @__pcpu, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %12, i64 %14
  store %struct.pcpu* %15, %struct.pcpu** %1, align 8
  %16 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @pcpu_init(%struct.pcpu* %16, i32 %17, i32 152)
  %19 = load i32, i32* @dpcpu, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @dpcpu_init(i32 %19, i32 %20)
  %22 = load i32*, i32** @cpu_apic_ids, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %28 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %27, i32 0, i32 14
  store i32 %26, i32* %28, align 8
  %29 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %30 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %31 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %30, i32 0, i32 13
  store %struct.pcpu* %29, %struct.pcpu** %31, align 8
  %32 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %33 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %32, i32 0, i32 12
  store i64 0, i64* %33, align 8
  %34 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %35 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %34, i32 0, i32 2
  %36 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %37 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %36, i32 0, i32 11
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %37, align 8
  %38 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %39 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %38, i32 0, i32 10
  store i64 0, i64* %39, align 8
  %40 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %41 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %40, i32 0, i32 9
  %42 = ptrtoint i32* %41 to i32
  %43 = sext i32 %42 to i64
  %44 = load i32, i32* @PC_PTI_STACK_SZ, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = add i64 %43, %46
  %48 = and i64 %47, -16
  %49 = trunc i64 %48 to i32
  %50 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %51 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %53 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %52, i32 0, i32 8
  %54 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %53, align 8
  store %struct.user_segment_descriptor* %54, %struct.user_segment_descriptor** %3, align 8
  %55 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %3, align 8
  %56 = load i64, i64* @GPROC0_SEL, align 8
  %57 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %55, i64 %56
  %58 = bitcast %struct.user_segment_descriptor* %57 to %struct.system_segment_descriptor*
  %59 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %60 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %59, i32 0, i32 7
  store %struct.system_segment_descriptor* %58, %struct.system_segment_descriptor** %60, align 8
  %61 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %3, align 8
  %62 = load i64, i64* @GUFS32_SEL, align 8
  %63 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %61, i64 %62
  %64 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %65 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %64, i32 0, i32 6
  store %struct.user_segment_descriptor* %63, %struct.user_segment_descriptor** %65, align 8
  %66 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %3, align 8
  %67 = load i64, i64* @GUGS32_SEL, align 8
  %68 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %66, i64 %67
  %69 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %70 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %69, i32 0, i32 5
  store %struct.user_segment_descriptor* %68, %struct.user_segment_descriptor** %70, align 8
  %71 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %3, align 8
  %72 = load i64, i64* @GUSERLDT_SEL, align 8
  %73 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %71, i64 %72
  %74 = bitcast %struct.user_segment_descriptor* %73 to %struct.system_segment_descriptor*
  %75 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %76 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %75, i32 0, i32 4
  store %struct.system_segment_descriptor* %74, %struct.system_segment_descriptor** %76, align 8
  %77 = load i64, i64* @PMAP_PCID_KERN, align 8
  %78 = add nsw i64 %77, 2
  %79 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %80 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %79, i32 0, i32 3
  store i64 %78, i64* %80, align 8
  %81 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %82 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %84 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %83, i32 0, i32 2
  %85 = load %struct.pcpu*, %struct.pcpu** @__pcpu, align 8
  %86 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %85, i64 0
  %87 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %86, i32 0, i32 2
  %88 = bitcast %struct.TYPE_5__* %84 to i8*
  %89 = bitcast %struct.TYPE_5__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 48, i1 false)
  %90 = load i64, i64* @IOPERM_BITMAP_SIZE, align 8
  %91 = add i64 4, %90
  %92 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %93 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 5
  store i64 %91, i64* %94, align 8
  %95 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %96 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 4
  store i64 0, i64* %97, align 8
  %98 = load i32*, i32** @doublefault_stack, align 8
  %99 = load i64, i64* @PAGE_SIZE, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = ptrtoint i32* %100 to i64
  %102 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %103 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i64 %101, i64* %104, align 8
  %105 = load i32*, i32** @nmi_stack, align 8
  %106 = load i64, i64* @PAGE_SIZE, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = bitcast i32* %107 to %struct.nmi_pcpu*
  %109 = getelementptr inbounds %struct.nmi_pcpu, %struct.nmi_pcpu* %108, i64 -1
  store %struct.nmi_pcpu* %109, %struct.nmi_pcpu** %2, align 8
  %110 = load %struct.nmi_pcpu*, %struct.nmi_pcpu** %2, align 8
  %111 = ptrtoint %struct.nmi_pcpu* %110 to i64
  %112 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %113 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store i64 %111, i64* %114, align 8
  %115 = load i32*, i32** @mce_stack, align 8
  %116 = load i64, i64* @PAGE_SIZE, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = bitcast i32* %117 to %struct.nmi_pcpu*
  %119 = getelementptr inbounds %struct.nmi_pcpu, %struct.nmi_pcpu* %118, i64 -1
  store %struct.nmi_pcpu* %119, %struct.nmi_pcpu** %2, align 8
  %120 = load %struct.nmi_pcpu*, %struct.nmi_pcpu** %2, align 8
  %121 = ptrtoint %struct.nmi_pcpu* %120 to i64
  %122 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %123 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  store i64 %121, i64* %124, align 8
  %125 = load i32*, i32** @dbg_stack, align 8
  %126 = load i64, i64* @PAGE_SIZE, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = bitcast i32* %127 to %struct.nmi_pcpu*
  %129 = getelementptr inbounds %struct.nmi_pcpu, %struct.nmi_pcpu* %128, i64 -1
  store %struct.nmi_pcpu* %129, %struct.nmi_pcpu** %2, align 8
  %130 = load %struct.nmi_pcpu*, %struct.nmi_pcpu** %2, align 8
  %131 = ptrtoint %struct.nmi_pcpu* %130 to i64
  %132 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %133 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 3
  store i64 %131, i64* %134, align 8
  %135 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %136 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %135, i32 0, i32 2
  %137 = ptrtoint %struct.TYPE_5__* %136 to i64
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gdt_segs, align 8
  %139 = load i64, i64* @GPROC0_SEL, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  store i64 %137, i64* %141, align 8
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %179, %0
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @NGDT, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %182

146:                                              ; preds = %142
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* @GPROC0_SEL, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %178

151:                                              ; preds = %146
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* @GPROC0_SEL, align 8
  %155 = add i64 %154, 1
  %156 = icmp ne i64 %153, %155
  br i1 %156, label %157, label %178

157:                                              ; preds = %151
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* @GUSERLDT_SEL, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %178

162:                                              ; preds = %157
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = load i64, i64* @GUSERLDT_SEL, align 8
  %166 = add i64 %165, 1
  %167 = icmp ne i64 %164, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %162
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gdt_segs, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 %171
  %173 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %3, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %173, i64 %175
  %177 = call i32 @ssdtosd(%struct.TYPE_6__* %172, %struct.user_segment_descriptor* %176)
  br label %178

178:                                              ; preds = %168, %162, %157, %151, %146
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %8, align 4
  br label %142

182:                                              ; preds = %142
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gdt_segs, align 8
  %184 = load i64, i64* @GPROC0_SEL, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i64 %184
  %186 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %3, align 8
  %187 = load i64, i64* @GPROC0_SEL, align 8
  %188 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %186, i64 %187
  %189 = bitcast %struct.user_segment_descriptor* %188 to %struct.system_segment_descriptor*
  %190 = call i32 @ssdtosyssd(%struct.TYPE_6__* %185, %struct.system_segment_descriptor* %189)
  %191 = load i32, i32* @NGDT, align 4
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 4
  %194 = sub i64 %193, 1
  %195 = trunc i64 %194 to i32
  %196 = getelementptr inbounds %struct.region_descriptor, %struct.region_descriptor* %4, i32 0, i32 0
  store i32 %195, i32* %196, align 8
  %197 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %3, align 8
  %198 = ptrtoint %struct.user_segment_descriptor* %197 to i64
  %199 = getelementptr inbounds %struct.region_descriptor, %struct.region_descriptor* %4, i32 0, i32 1
  store i64 %198, i64* %199, align 8
  %200 = call i32 @lgdt(%struct.region_descriptor* %4)
  %201 = load i32*, i32** @nmi_stack, align 8
  %202 = load i64, i64* @PAGE_SIZE, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = bitcast i32* %203 to %struct.nmi_pcpu*
  %205 = getelementptr inbounds %struct.nmi_pcpu, %struct.nmi_pcpu* %204, i64 -1
  store %struct.nmi_pcpu* %205, %struct.nmi_pcpu** %2, align 8
  %206 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %207 = bitcast %struct.pcpu* %206 to i8*
  %208 = load %struct.nmi_pcpu*, %struct.nmi_pcpu** %2, align 8
  %209 = getelementptr inbounds %struct.nmi_pcpu, %struct.nmi_pcpu* %208, i32 0, i32 0
  store i8* %207, i8** %209, align 8
  %210 = load i32*, i32** @mce_stack, align 8
  %211 = load i64, i64* @PAGE_SIZE, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = bitcast i32* %212 to %struct.nmi_pcpu*
  %214 = getelementptr inbounds %struct.nmi_pcpu, %struct.nmi_pcpu* %213, i64 -1
  store %struct.nmi_pcpu* %214, %struct.nmi_pcpu** %2, align 8
  %215 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %216 = bitcast %struct.pcpu* %215 to i8*
  %217 = load %struct.nmi_pcpu*, %struct.nmi_pcpu** %2, align 8
  %218 = getelementptr inbounds %struct.nmi_pcpu, %struct.nmi_pcpu* %217, i32 0, i32 0
  store i8* %216, i8** %218, align 8
  %219 = load i32*, i32** @dbg_stack, align 8
  %220 = load i64, i64* @PAGE_SIZE, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  %222 = bitcast i32* %221 to %struct.nmi_pcpu*
  %223 = getelementptr inbounds %struct.nmi_pcpu, %struct.nmi_pcpu* %222, i64 -1
  store %struct.nmi_pcpu* %223, %struct.nmi_pcpu** %2, align 8
  %224 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %225 = bitcast %struct.pcpu* %224 to i8*
  %226 = load %struct.nmi_pcpu*, %struct.nmi_pcpu** %2, align 8
  %227 = getelementptr inbounds %struct.nmi_pcpu, %struct.nmi_pcpu* %226, i32 0, i32 0
  store i8* %225, i8** %227, align 8
  %228 = load i32, i32* @MSR_FSBASE, align 4
  %229 = call i32 @wrmsr(i32 %228, i32 0)
  %230 = load i32, i32* @MSR_GSBASE, align 4
  %231 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %232 = ptrtoint %struct.pcpu* %231 to i32
  %233 = call i32 @wrmsr(i32 %230, i32 %232)
  %234 = load i32, i32* @MSR_KGSBASE, align 4
  %235 = load %struct.pcpu*, %struct.pcpu** %1, align 8
  %236 = ptrtoint %struct.pcpu* %235 to i32
  %237 = call i32 @wrmsr(i32 %234, i32 %236)
  %238 = call i32 (...) @fix_cpuid()
  %239 = call i32 @lidt(i32* @r_idt)
  %240 = load i64, i64* @GPROC0_SEL, align 8
  %241 = load i32, i32* @SEL_KPL, align 4
  %242 = call i32 @GSEL(i64 %240, i32 %241)
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @ltr(i32 %243)
  %245 = call i32 (...) @rcr0()
  store i32 %245, i32* %5, align 4
  %246 = load i32, i32* @CR0_CD, align 4
  %247 = load i32, i32* @CR0_NW, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* @CR0_EM, align 4
  %250 = or i32 %248, %249
  %251 = xor i32 %250, -1
  %252 = load i32, i32* %5, align 4
  %253 = and i32 %252, %251
  store i32 %253, i32* %5, align 4
  %254 = load i32, i32* %5, align 4
  %255 = call i32 @load_cr0(i32 %254)
  %256 = call i32 (...) @amd64_conf_fast_syscall()
  %257 = load i32, i32* @mp_naps, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* @mp_naps, align 4
  br label %259

259:                                              ; preds = %262, %182
  %260 = call i64 @atomic_load_acq_int(i32* @aps_ready)
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %259
  %263 = call i32 (...) @ia32_pause()
  br label %259

264:                                              ; preds = %259
  %265 = call i32 (...) @init_secondary_tail()
  ret void
}

declare dso_local i32 @ucode_load_ap(i32) #1

declare dso_local i32 @pcpu_init(%struct.pcpu*, i32, i32) #1

declare dso_local i32 @dpcpu_init(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ssdtosd(%struct.TYPE_6__*, %struct.user_segment_descriptor*) #1

declare dso_local i32 @ssdtosyssd(%struct.TYPE_6__*, %struct.system_segment_descriptor*) #1

declare dso_local i32 @lgdt(%struct.region_descriptor*) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @fix_cpuid(...) #1

declare dso_local i32 @lidt(i32*) #1

declare dso_local i32 @GSEL(i64, i32) #1

declare dso_local i32 @ltr(i32) #1

declare dso_local i32 @rcr0(...) #1

declare dso_local i32 @load_cr0(i32) #1

declare dso_local i32 @amd64_conf_fast_syscall(...) #1

declare dso_local i64 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @ia32_pause(...) #1

declare dso_local i32 @init_secondary_tail(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
