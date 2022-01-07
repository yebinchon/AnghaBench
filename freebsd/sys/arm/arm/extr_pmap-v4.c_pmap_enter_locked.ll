; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_enter_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_enter_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_26__*, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.vm_page = type { i32, %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { i32, i64, i32, i32 }
%struct.l2_bucket = type { i32*, i32, i32 }
%struct.pv_entry = type { i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@vector_page = common dso_local global i32 0, align 4
@systempage = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@PMAP_ENTER_QUICK_LOCKED = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@PVF_WRITE = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@PVF_EXEC = common dso_local global i32 0, align 4
@PMAP_ENTER_WIRED = common dso_local global i32 0, align 4
@PVF_WIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"pmap_enter: pmap = %08x, va = %08x, m = %08x, prot = %x, flags = %x\0A\00", align 1
@kernel_pmap = common dso_local global %struct.TYPE_28__* null, align 8
@PMAP_ENTER_NOSLEEP = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@PVF_REF = common dso_local global i32 0, align 4
@L2_S_PROTO = common dso_local global i32 0, align 4
@PVF_MOD = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@L2_TYPE_INV = common dso_local global i32 0, align 4
@L2_S_PROT_W = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@VM_MEMATTR_UNCACHEABLE = common dso_local global i64 0, align 8
@pte_l2_s_cache_mode = common dso_local global i32 0, align 4
@PVF_NC = common dso_local global i32 0, align 4
@L2_TYPE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"No pv\00", align 1
@PVF_UNMAN = common dso_local global i32 0, align 4
@kmi = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"pmap_enter: managed mapping within the clean submap\00", align 1
@L2_S_PROT_U = common dso_local global i32 0, align 4
@L1_C_PROTO = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, i32, %struct.vm_page*, i32, i32)* @pmap_enter_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_enter_locked(%struct.TYPE_28__* %0, i32 %1, %struct.vm_page* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vm_page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.l2_bucket*, align 8
  %13 = alloca %struct.vm_page*, align 8
  %14 = alloca %struct.pv_entry*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.vm_page* %2, %struct.vm_page** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.l2_bucket* null, %struct.l2_bucket** %12, align 8
  store %struct.pv_entry* null, %struct.pv_entry** %14, align 8
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %25 = call i32 @PMAP_ASSERT_LOCKED(%struct.TYPE_28__* %24)
  %26 = load i32, i32* @RA_WLOCKED, align 4
  %27 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @vector_page, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @systempage, i32 0, i32 0), align 8
  store i64 %32, i64* %20, align 8
  store %struct.vm_page* null, %struct.vm_page** %9, align 8
  br label %57

33:                                               ; preds = %5
  %34 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %35 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @VPO_UNMANAGED, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @PMAP_ENTER_QUICK_LOCKED, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %47 = call i32 @VM_PAGE_OBJECT_BUSY_ASSERT(%struct.vm_page* %46)
  br label %53

48:                                               ; preds = %40
  %49 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %50 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @VM_OBJECT_ASSERT_LOCKED(i32 %51)
  br label %53

53:                                               ; preds = %48, %45
  br label %54

54:                                               ; preds = %53, %33
  %55 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %56 = call i64 @VM_PAGE_TO_PHYS(%struct.vm_page* %55)
  store i64 %56, i64* %20, align 8
  br label %57

57:                                               ; preds = %54, %31
  store i32 0, i32* %18, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @VM_PROT_WRITE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @PVF_WRITE, align 4
  %64 = load i32, i32* %18, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %18, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @PVF_EXEC, align 4
  %73 = load i32, i32* %18, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %18, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @PMAP_ENTER_WIRED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @PVF_WIRED, align 4
  %82 = load i32, i32* %18, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %18, align 4
  br label %84

84:                                               ; preds = %80, %75
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %86 = ptrtoint %struct.TYPE_28__* %85 to i32
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %89 = ptrtoint %struct.vm_page* %88 to i32
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87, i32 %89, i32 %90, i32 %91)
  %93 = call i32 @PDEBUG(i32 1, i32 %92)
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** @kernel_pmap, align 8
  %96 = icmp eq %struct.TYPE_28__* %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %84
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call %struct.l2_bucket* @pmap_get_l2_bucket(%struct.TYPE_28__* %98, i32 %99)
  store %struct.l2_bucket* %100, %struct.l2_bucket** %12, align 8
  %101 = load %struct.l2_bucket*, %struct.l2_bucket** %12, align 8
  %102 = icmp eq %struct.l2_bucket* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call %struct.l2_bucket* @pmap_grow_l2_bucket(%struct.TYPE_28__* %104, i32 %105)
  store %struct.l2_bucket* %106, %struct.l2_bucket** %12, align 8
  br label %107

107:                                              ; preds = %103, %97
  br label %131

108:                                              ; preds = %84
  br label %109

109:                                              ; preds = %120, %108
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call %struct.l2_bucket* @pmap_alloc_l2_bucket(%struct.TYPE_28__* %110, i32 %111)
  store %struct.l2_bucket* %112, %struct.l2_bucket** %12, align 8
  %113 = load %struct.l2_bucket*, %struct.l2_bucket** %12, align 8
  %114 = icmp eq %struct.l2_bucket* %113, null
  br i1 %114, label %115, label %130

115:                                              ; preds = %109
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @PMAP_ENTER_NOSLEEP, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %122 = call i32 @PMAP_UNLOCK(%struct.TYPE_28__* %121)
  %123 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  %124 = call i32 @vm_wait(i32* null)
  %125 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %127 = call i32 @PMAP_LOCK(%struct.TYPE_28__* %126)
  br label %109

128:                                              ; preds = %115
  %129 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %129, i32* %6, align 4
  br label %609

130:                                              ; preds = %109
  br label %131

131:                                              ; preds = %130, %107
  %132 = load %struct.l2_bucket*, %struct.l2_bucket** %12, align 8
  %133 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i64 @l2pte_index(i32 %135)
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32* %137, i32** %15, align 8
  %138 = load i32*, i32** %15, align 8
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %17, align 4
  %140 = load i64, i64* %20, align 8
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %142 = load i32, i32* %17, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %131
  %145 = load i32, i32* %17, align 4
  %146 = call i64 @l2pte_pa(i32 %145)
  %147 = load i64, i64* %20, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i32, i32* %17, align 4
  %151 = call i64 @l2pte_pa(i32 %150)
  %152 = call %struct.vm_page* @PHYS_TO_VM_PAGE(i64 %151)
  store %struct.vm_page* %152, %struct.vm_page** %13, align 8
  br label %155

153:                                              ; preds = %144
  %154 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  store %struct.vm_page* %154, %struct.vm_page** %13, align 8
  br label %155

155:                                              ; preds = %153, %149
  br label %157

156:                                              ; preds = %131
  store %struct.vm_page* null, %struct.vm_page** %13, align 8
  br label %157

157:                                              ; preds = %156, %155
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @VM_PROT_ALL, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %157
  %163 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %164 = icmp ne %struct.vm_page* %163, null
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %167 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @PVF_REF, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %221

173:                                              ; preds = %165, %162, %157
  %174 = load i32, i32* @L2_S_PROTO, align 4
  %175 = load i32, i32* %16, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %16, align 4
  %177 = load i32, i32* @PVF_REF, align 4
  %178 = load i32, i32* %18, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %18, align 4
  %180 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %181 = icmp ne %struct.vm_page* %180, null
  br i1 %181, label %182, label %210

182:                                              ; preds = %173
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @VM_PROT_WRITE, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %195, label %187

187:                                              ; preds = %182
  %188 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %189 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @PVF_MOD, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %210

195:                                              ; preds = %187, %182
  %196 = load i32, i32* @PVF_MOD, align 4
  %197 = load i32, i32* %18, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %18, align 4
  %199 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %200 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @PVF_MOD, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %195
  %207 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %208 = call i32 @vm_page_dirty(%struct.vm_page* %207)
  br label %209

209:                                              ; preds = %206, %195
  br label %210

210:                                              ; preds = %209, %187, %173
  %211 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %212 = icmp ne %struct.vm_page* %211, null
  br i1 %212, label %213, label %220

213:                                              ; preds = %210
  %214 = load i32, i32* %17, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %218 = load i32, i32* @PGA_REFERENCED, align 4
  %219 = call i32 @vm_page_aflag_set(%struct.vm_page* %217, i32 %218)
  br label %220

220:                                              ; preds = %216, %213, %210
  br label %225

221:                                              ; preds = %165
  %222 = load i32, i32* @L2_TYPE_INV, align 4
  %223 = load i32, i32* %16, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %16, align 4
  br label %225

225:                                              ; preds = %221, %220
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* @VM_PROT_WRITE, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %248

230:                                              ; preds = %225
  %231 = load i32, i32* @L2_S_PROT_W, align 4
  %232 = load i32, i32* %16, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %16, align 4
  %234 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %235 = icmp ne %struct.vm_page* %234, null
  br i1 %235, label %236, label %247

236:                                              ; preds = %230
  %237 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %238 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @VPO_UNMANAGED, align 4
  %241 = and i32 %239, %240
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %236
  %244 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %245 = load i32, i32* @PGA_WRITEABLE, align 4
  %246 = call i32 @vm_page_aflag_set(%struct.vm_page* %244, i32 %245)
  br label %247

247:                                              ; preds = %243, %236, %230
  br label %248

248:                                              ; preds = %247, %225
  %249 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %250 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @VM_MEMATTR_UNCACHEABLE, align 8
  %254 = icmp ne i64 %252, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %248
  %256 = load i32, i32* @pte_l2_s_cache_mode, align 4
  %257 = load i32, i32* %16, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %16, align 4
  br label %259

259:                                              ; preds = %255, %248
  %260 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %261 = icmp ne %struct.vm_page* %260, null
  br i1 %261, label %262, label %313

262:                                              ; preds = %259
  %263 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %264 = load %struct.vm_page*, %struct.vm_page** %13, align 8
  %265 = icmp eq %struct.vm_page* %263, %264
  br i1 %265, label %266, label %313

266:                                              ; preds = %262
  %267 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %269 = load i32, i32* %8, align 4
  %270 = load i32, i32* @PVF_WRITE, align 4
  %271 = load i32, i32* @PVF_EXEC, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @PVF_WIRED, align 4
  %274 = or i32 %272, %273
  %275 = load i32, i32* @PVF_MOD, align 4
  %276 = or i32 %274, %275
  %277 = load i32, i32* @PVF_REF, align 4
  %278 = or i32 %276, %277
  %279 = load i32, i32* %18, align 4
  %280 = call i32 @pmap_modify_pv(%struct.vm_page* %267, %struct.TYPE_28__* %268, i32 %269, i32 %278, i32 %279)
  store i32 %280, i32* %19, align 4
  %281 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %282 = call i64 @pmap_is_current(%struct.TYPE_28__* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %312

284:                                              ; preds = %266
  %285 = load i32, i32* %19, align 4
  %286 = load i32, i32* @PVF_NC, align 4
  %287 = and i32 %285, %286
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %312

289:                                              ; preds = %284
  %290 = load i32, i32* %17, align 4
  %291 = load i32, i32* @L2_S_PROT_W, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %312

294:                                              ; preds = %289
  %295 = load i32, i32* %10, align 4
  %296 = load i32, i32* @VM_PROT_WRITE, align 4
  %297 = and i32 %295, %296
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %312

299:                                              ; preds = %294
  %300 = load i32, i32* %17, align 4
  %301 = load i32, i32* @L2_TYPE_MASK, align 4
  %302 = and i32 %300, %301
  %303 = load i32, i32* @L2_TYPE_INV, align 4
  %304 = icmp ne i32 %302, %303
  br i1 %304, label %305, label %312

305:                                              ; preds = %299
  %306 = load i32, i32* %8, align 4
  %307 = load i32, i32* @PAGE_SIZE, align 4
  %308 = call i32 @cpu_dcache_wb_range(i32 %306, i32 %307)
  %309 = load i32, i32* %8, align 4
  %310 = load i32, i32* @PAGE_SIZE, align 4
  %311 = call i32 @cpu_l2cache_wb_range(i32 %309, i32 %310)
  br label %312

312:                                              ; preds = %305, %299, %294, %289, %284, %266
  br label %503

313:                                              ; preds = %262, %259
  %314 = load %struct.vm_page*, %struct.vm_page** %13, align 8
  %315 = icmp ne %struct.vm_page* %314, null
  br i1 %315, label %316, label %412

316:                                              ; preds = %313
  %317 = load %struct.vm_page*, %struct.vm_page** %13, align 8
  %318 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %319 = load i32, i32* %8, align 4
  %320 = call %struct.pv_entry* @pmap_remove_pv(%struct.vm_page* %317, %struct.TYPE_28__* %318, i32 %319)
  store %struct.pv_entry* %320, %struct.pv_entry** %14, align 8
  %321 = icmp ne %struct.pv_entry* %320, null
  br i1 %321, label %322, label %386

322:                                              ; preds = %316
  %323 = load %struct.pv_entry*, %struct.pv_entry** %14, align 8
  %324 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  store i32 %325, i32* %19, align 4
  %326 = load i32, i32* %19, align 4
  %327 = load i32, i32* @PVF_NC, align 4
  %328 = and i32 %326, %327
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %360

330:                                              ; preds = %322
  %331 = load i32, i32* %17, align 4
  %332 = call i64 @l2pte_valid(i32 %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %360

334:                                              ; preds = %330
  %335 = load i32, i32* %19, align 4
  %336 = call i64 @PV_BEEN_EXECD(i32 %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %334
  %339 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %340 = load i32, i32* %8, align 4
  %341 = load i32, i32* @PAGE_SIZE, align 4
  %342 = call i32 @pmap_idcache_wbinv_range(%struct.TYPE_28__* %339, i32 %340, i32 %341)
  br label %359

343:                                              ; preds = %334
  %344 = load i32, i32* %19, align 4
  %345 = call i64 @PV_BEEN_REFD(i32 %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %358

347:                                              ; preds = %343
  %348 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %349 = load i32, i32* %8, align 4
  %350 = load i32, i32* @PAGE_SIZE, align 4
  %351 = load i32, i32* @TRUE, align 4
  %352 = load i32, i32* %19, align 4
  %353 = load i32, i32* @PVF_WRITE, align 4
  %354 = and i32 %352, %353
  %355 = icmp eq i32 %354, 0
  %356 = zext i1 %355 to i32
  %357 = call i32 @pmap_dcache_wb_range(%struct.TYPE_28__* %348, i32 %349, i32 %350, i32 %351, i32 %356)
  br label %358

358:                                              ; preds = %347, %343
  br label %359

359:                                              ; preds = %358, %338
  br label %360

360:                                              ; preds = %359, %330, %322
  %361 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %362 = icmp ne %struct.vm_page* %361, null
  br i1 %362, label %363, label %385

363:                                              ; preds = %360
  %364 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %365 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @VPO_UNMANAGED, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %385

370:                                              ; preds = %363
  %371 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %372 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %385, label %376

376:                                              ; preds = %370
  %377 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %378 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %378, i32 0, i32 3
  %380 = call i64 @TAILQ_EMPTY(i32* %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %376
  %383 = load %struct.pv_entry*, %struct.pv_entry** %14, align 8
  %384 = call i32 @pmap_free_pv_entry(%struct.pv_entry* %383)
  store %struct.pv_entry* null, %struct.pv_entry** %14, align 8
  br label %385

385:                                              ; preds = %382, %376, %370, %363, %360
  br label %411

386:                                              ; preds = %316
  %387 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %388 = icmp ne %struct.vm_page* %387, null
  br i1 %388, label %389, label %410

389:                                              ; preds = %386
  %390 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %391 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* @VPO_UNMANAGED, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %408

396:                                              ; preds = %389
  %397 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %398 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %408, label %402

402:                                              ; preds = %396
  %403 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %404 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %404, i32 0, i32 3
  %406 = call i64 @TAILQ_EMPTY(i32* %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %410, label %408

408:                                              ; preds = %402, %396, %389
  %409 = call %struct.pv_entry* (...) @pmap_get_pv_entry()
  store %struct.pv_entry* %409, %struct.pv_entry** %14, align 8
  br label %410

410:                                              ; preds = %408, %402, %386
  br label %411

411:                                              ; preds = %410, %385
  br label %437

412:                                              ; preds = %313
  %413 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %414 = icmp ne %struct.vm_page* %413, null
  br i1 %414, label %415, label %436

415:                                              ; preds = %412
  %416 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %417 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* @VPO_UNMANAGED, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %434

422:                                              ; preds = %415
  %423 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %424 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 8
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %434, label %428

428:                                              ; preds = %422
  %429 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %430 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %430, i32 0, i32 3
  %432 = call i64 @TAILQ_EMPTY(i32* %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %436, label %434

434:                                              ; preds = %428, %422, %415
  %435 = call %struct.pv_entry* (...) @pmap_get_pv_entry()
  store %struct.pv_entry* %435, %struct.pv_entry** %14, align 8
  br label %436

436:                                              ; preds = %434, %428, %412
  br label %437

437:                                              ; preds = %436, %411
  %438 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %439 = icmp ne %struct.vm_page* %438, null
  br i1 %439, label %440, label %502

440:                                              ; preds = %437
  %441 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %442 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = load i32, i32* @VPO_UNMANAGED, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %479

447:                                              ; preds = %440
  %448 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %449 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %449, i32 0, i32 3
  %451 = call i64 @TAILQ_EMPTY(i32* %450)
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %459

453:                                              ; preds = %447
  %454 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %455 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 8
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %473

459:                                              ; preds = %453, %447
  %460 = load %struct.pv_entry*, %struct.pv_entry** %14, align 8
  %461 = icmp ne %struct.pv_entry* %460, null
  %462 = zext i1 %461 to i32
  %463 = call i32 @KASSERT(i32 %462, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %464 = load i32, i32* @PVF_UNMAN, align 4
  %465 = load i32, i32* %18, align 4
  %466 = or i32 %465, %464
  store i32 %466, i32* %18, align 4
  %467 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %468 = load %struct.pv_entry*, %struct.pv_entry** %14, align 8
  %469 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %470 = load i32, i32* %8, align 4
  %471 = load i32, i32* %18, align 4
  %472 = call i32 @pmap_enter_pv(%struct.vm_page* %467, %struct.pv_entry* %468, %struct.TYPE_28__* %469, i32 %470, i32 %471)
  br label %478

473:                                              ; preds = %453
  %474 = load i32, i32* %8, align 4
  %475 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %476 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %476, i32 0, i32 2
  store i32 %474, i32* %477, align 8
  br label %478

478:                                              ; preds = %473, %459
  br label %501

479:                                              ; preds = %440
  %480 = load i32, i32* %8, align 4
  %481 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @kmi, i32 0, i32 0), align 4
  %482 = icmp slt i32 %480, %481
  br i1 %482, label %487, label %483

483:                                              ; preds = %479
  %484 = load i32, i32* %8, align 4
  %485 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @kmi, i32 0, i32 1), align 4
  %486 = icmp sge i32 %484, %485
  br label %487

487:                                              ; preds = %483, %479
  %488 = phi i1 [ true, %479 ], [ %486, %483 ]
  %489 = zext i1 %488 to i32
  %490 = call i32 @KASSERT(i32 %489, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %491 = load %struct.pv_entry*, %struct.pv_entry** %14, align 8
  %492 = icmp ne %struct.pv_entry* %491, null
  %493 = zext i1 %492 to i32
  %494 = call i32 @KASSERT(i32 %493, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %495 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %496 = load %struct.pv_entry*, %struct.pv_entry** %14, align 8
  %497 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %498 = load i32, i32* %8, align 4
  %499 = load i32, i32* %18, align 4
  %500 = call i32 @pmap_enter_pv(%struct.vm_page* %495, %struct.pv_entry* %496, %struct.TYPE_28__* %497, i32 %498, i32 %499)
  br label %501

501:                                              ; preds = %487, %478
  br label %502

502:                                              ; preds = %501, %437
  br label %503

503:                                              ; preds = %502, %312
  %504 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %505 = load %struct.TYPE_28__*, %struct.TYPE_28__** @kernel_pmap, align 8
  %506 = icmp ne %struct.TYPE_28__* %504, %505
  br i1 %506, label %507, label %515

507:                                              ; preds = %503
  %508 = load i32, i32* %8, align 4
  %509 = load i32, i32* @vector_page, align 4
  %510 = icmp ne i32 %508, %509
  br i1 %510, label %511, label %515

511:                                              ; preds = %507
  %512 = load i32, i32* @L2_S_PROT_U, align 4
  %513 = load i32, i32* %16, align 4
  %514 = or i32 %513, %512
  store i32 %514, i32* %16, align 4
  br label %515

515:                                              ; preds = %511, %507, %503
  %516 = load i32, i32* %17, align 4
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %528

518:                                              ; preds = %515
  %519 = load %struct.l2_bucket*, %struct.l2_bucket** %12, align 8
  %520 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %519, i32 0, i32 2
  %521 = load i32, i32* %520, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %520, align 4
  %523 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %524 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %523, i32 0, i32 2
  %525 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %525, align 8
  br label %528

528:                                              ; preds = %518, %515
  %529 = load i32, i32* %16, align 4
  %530 = load i32, i32* %17, align 4
  %531 = icmp ne i32 %529, %530
  br i1 %531, label %532, label %607

532:                                              ; preds = %528
  %533 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %534 = call i64 @pmap_is_current(%struct.TYPE_28__* %533)
  store i64 %534, i64* %21, align 8
  %535 = load i32, i32* %16, align 4
  %536 = load i32*, i32** %15, align 8
  store i32 %535, i32* %536, align 4
  %537 = load i64, i64* %21, align 8
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %581

539:                                              ; preds = %532
  %540 = load i32*, i32** %15, align 8
  %541 = call i32 @PTE_SYNC(i32* %540)
  %542 = load i32, i32* %8, align 4
  %543 = call i64 @L1_IDX(i32 %542)
  %544 = load i32, i32* @vector_page, align 4
  %545 = call i64 @L1_IDX(i32 %544)
  %546 = icmp ne i64 %543, %545
  br i1 %546, label %547, label %580

547:                                              ; preds = %539
  %548 = load i32, i32* %16, align 4
  %549 = call i64 @l2pte_valid(i32 %548)
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %580

551:                                              ; preds = %547
  %552 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %553 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %552, i32 0, i32 1
  %554 = load %struct.TYPE_26__*, %struct.TYPE_26__** %553, align 8
  %555 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %554, i32 0, i32 0
  %556 = load i32*, i32** %555, align 8
  %557 = load i32, i32* %8, align 4
  %558 = call i64 @L1_IDX(i32 %557)
  %559 = getelementptr inbounds i32, i32* %556, i64 %558
  store i32* %559, i32** %22, align 8
  %560 = load %struct.l2_bucket*, %struct.l2_bucket** %12, align 8
  %561 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %560, i32 0, i32 1
  %562 = load i32, i32* %561, align 8
  %563 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %564 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 8
  %566 = call i32 @L1_C_DOM(i32 %565)
  %567 = or i32 %562, %566
  %568 = load i32, i32* @L1_C_PROTO, align 4
  %569 = or i32 %567, %568
  store i32 %569, i32* %23, align 4
  %570 = load i32*, i32** %22, align 8
  %571 = load i32, i32* %570, align 4
  %572 = load i32, i32* %23, align 4
  %573 = icmp ne i32 %571, %572
  br i1 %573, label %574, label %579

574:                                              ; preds = %551
  %575 = load i32, i32* %23, align 4
  %576 = load i32*, i32** %22, align 8
  store i32 %575, i32* %576, align 4
  %577 = load i32*, i32** %22, align 8
  %578 = call i32 @PTE_SYNC(i32* %577)
  br label %579

579:                                              ; preds = %574, %551
  br label %580

580:                                              ; preds = %579, %547, %539
  br label %581

581:                                              ; preds = %580, %532
  %582 = load i32, i32* %19, align 4
  %583 = call i64 @PV_BEEN_EXECD(i32 %582)
  %584 = icmp ne i64 %583, 0
  br i1 %584, label %585, label %589

585:                                              ; preds = %581
  %586 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %587 = load i32, i32* %8, align 4
  %588 = call i32 @pmap_tlb_flushID_SE(%struct.TYPE_28__* %586, i32 %587)
  br label %598

589:                                              ; preds = %581
  %590 = load i32, i32* %19, align 4
  %591 = call i64 @PV_BEEN_REFD(i32 %590)
  %592 = icmp ne i64 %591, 0
  br i1 %592, label %593, label %597

593:                                              ; preds = %589
  %594 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %595 = load i32, i32* %8, align 4
  %596 = call i32 @pmap_tlb_flushD_SE(%struct.TYPE_28__* %594, i32 %595)
  br label %597

597:                                              ; preds = %593, %589
  br label %598

598:                                              ; preds = %597, %585
  %599 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %600 = icmp ne %struct.vm_page* %599, null
  br i1 %600, label %601, label %606

601:                                              ; preds = %598
  %602 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %603 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %604 = load i32, i32* %8, align 4
  %605 = call i32 @pmap_fix_cache(%struct.vm_page* %602, %struct.TYPE_28__* %603, i32 %604)
  br label %606

606:                                              ; preds = %601, %598
  br label %607

607:                                              ; preds = %606, %528
  %608 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %608, i32* %6, align 4
  br label %609

609:                                              ; preds = %607, %128
  %610 = load i32, i32* %6, align 4
  ret i32 %610
}

declare dso_local i32 @PMAP_ASSERT_LOCKED(%struct.TYPE_28__*) #1

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @VM_PAGE_OBJECT_BUSY_ASSERT(%struct.vm_page*) #1

declare dso_local i32 @VM_OBJECT_ASSERT_LOCKED(i32) #1

declare dso_local i64 @VM_PAGE_TO_PHYS(%struct.vm_page*) #1

declare dso_local i32 @PDEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.l2_bucket* @pmap_get_l2_bucket(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.l2_bucket* @pmap_grow_l2_bucket(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.l2_bucket* @pmap_alloc_l2_bucket(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_28__*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @vm_wait(i32*) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_28__*) #1

declare dso_local i64 @l2pte_index(i32) #1

declare dso_local i64 @l2pte_pa(i32) #1

declare dso_local %struct.vm_page* @PHYS_TO_VM_PAGE(i64) #1

declare dso_local i32 @vm_page_dirty(%struct.vm_page*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.vm_page*, i32) #1

declare dso_local i32 @pmap_modify_pv(%struct.vm_page*, %struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local i64 @pmap_is_current(%struct.TYPE_28__*) #1

declare dso_local i32 @cpu_dcache_wb_range(i32, i32) #1

declare dso_local i32 @cpu_l2cache_wb_range(i32, i32) #1

declare dso_local %struct.pv_entry* @pmap_remove_pv(%struct.vm_page*, %struct.TYPE_28__*, i32) #1

declare dso_local i64 @l2pte_valid(i32) #1

declare dso_local i64 @PV_BEEN_EXECD(i32) #1

declare dso_local i32 @pmap_idcache_wbinv_range(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i64 @PV_BEEN_REFD(i32) #1

declare dso_local i32 @pmap_dcache_wb_range(%struct.TYPE_28__*, i32, i32, i32, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @pmap_free_pv_entry(%struct.pv_entry*) #1

declare dso_local %struct.pv_entry* @pmap_get_pv_entry(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_enter_pv(%struct.vm_page*, %struct.pv_entry*, %struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @PTE_SYNC(i32*) #1

declare dso_local i64 @L1_IDX(i32) #1

declare dso_local i32 @L1_C_DOM(i32) #1

declare dso_local i32 @pmap_tlb_flushID_SE(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @pmap_tlb_flushD_SE(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @pmap_fix_cache(%struct.vm_page*, %struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
