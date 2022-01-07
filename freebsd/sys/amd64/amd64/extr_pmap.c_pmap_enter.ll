; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_48__ = type { i32, i32 }
%struct.TYPE_50__ = type { i64, %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_47__ = type { i32, i64, i64, i32, i32, %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32, i32, i32 }
%struct.rwlock = type { i32 }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_46__ = type { i32 }

@VM_MAX_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"pmap_enter: toobig\00", align 1
@UPT_MIN_ADDRESS = common dso_local global i32 0, align 4
@UPT_MAX_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"pmap_enter: invalid to pmap_enter page table pages (va: 0x%lx)\00", align 1
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@kmi = common dso_local global %struct.TYPE_48__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"pmap_enter: managed mapping within the clean submap\00", align 1
@PMAP_ENTER_RESERVED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"pmap_enter: flags %u has reserved bits set\00", align 1
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"pmap_enter: flags includes VM_PROT_WRITE but prot doesn't\00", align 1
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@PMAP_ENTER_WIRED = common dso_local global i32 0, align 4
@PG_W = common dso_local global i32 0, align 4
@VM_MAXUSER_ADDRESS = common dso_local global i32 0, align 4
@PG_U = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_50__* null, align 8
@PG_MANAGED = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"pmap_enter: va unaligned\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"pmap_enter: m->psind < psind\00", align 1
@PG_PS = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4
@PMAP_ENTER_NOSLEEP = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"pmap_enter: invalid page directory va=%#lx\00", align 1
@PT_X86 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [60 x i8] c"pmap_enter: missing reference to page table page, va: 0x%lx\00", align 1
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"pmap_enter: unexpected pa update for %#lx\00", align 1
@PGA_REFERENCED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"pmap_enter: no PV entry for %#lx\00", align 1
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@pv_next = common dso_local global i32 0, align 4
@PG_NX = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@NPTEPG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_enter(%struct.TYPE_50__* %0, i32 %1, %struct.TYPE_47__* %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_50__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_47__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.rwlock*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_49__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_47__*, align 8
  %27 = alloca %struct.TYPE_47__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_50__* %0, %struct.TYPE_50__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_47__* %2, %struct.TYPE_47__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %30 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %31 = call i32 @pmap_accessed_bit(%struct.TYPE_50__* %30)
  store i32 %31, i32* %17, align 4
  %32 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %33 = call i32 @pmap_global_bit(%struct.TYPE_50__* %32)
  store i32 %33, i32* %16, align 4
  %34 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %35 = call i32 @pmap_modified_bit(%struct.TYPE_50__* %34)
  store i32 %35, i32* %18, align 4
  %36 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %37 = call i32 @pmap_valid_bit(%struct.TYPE_50__* %36)
  store i32 %37, i32* %20, align 4
  %38 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %39 = call i32 @pmap_rw_bit(%struct.TYPE_50__* %38)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @trunc_page(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @VM_MAX_KERNEL_ADDRESS, align 4
  %44 = icmp sle i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @KASSERT(i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @UPT_MIN_ADDRESS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %6
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @UPT_MAX_ADDRESS, align 4
  %53 = icmp sge i32 %51, %52
  br label %54

54:                                               ; preds = %50, %6
  %55 = phi i1 [ true, %6 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @KASSERT(i32 %56, i8* %59)
  %61 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @VPO_UNMANAGED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @kmi, i32 0, i32 0), align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @kmi, i32 0, i32 1), align 4
  %74 = icmp sge i32 %72, %73
  br label %75

75:                                               ; preds = %71, %67, %54
  %76 = phi i1 [ true, %67 ], [ true, %54 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @KASSERT(i32 %77, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @VPO_UNMANAGED, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %87 = call i32 @VM_PAGE_OBJECT_BUSY_ASSERT(%struct.TYPE_47__* %86)
  br label %88

88:                                               ; preds = %85, %75
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @PMAP_ENTER_RESERVED, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 @KASSERT(i32 %93, i8* %96)
  %98 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %99 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_47__* %98)
  store i32 %99, i32* %25, align 4
  %100 = load i32, i32* %25, align 4
  %101 = load i32, i32* %17, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %20, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %21, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @VM_PROT_WRITE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %88
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %21, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %21, align 4
  br label %113

113:                                              ; preds = %109, %88
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @VM_PROT_WRITE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %21, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %21, align 4
  br label %122

122:                                              ; preds = %118, %113
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %19, align 4
  %126 = or i32 %124, %125
  %127 = and i32 %123, %126
  %128 = load i32, i32* %18, align 4
  %129 = icmp ne i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @KASSERT(i32 %130, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %134 = and i32 %132, %133
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %122
  %137 = load i32, i32* @pg_nx, align 4
  %138 = load i32, i32* %21, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %21, align 4
  br label %140

140:                                              ; preds = %136, %122
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @PMAP_ENTER_WIRED, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i32, i32* @PG_W, align 4
  %147 = load i32, i32* %21, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %21, align 4
  br label %149

149:                                              ; preds = %145, %140
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @VM_MAXUSER_ADDRESS, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i32, i32* @PG_U, align 4
  %155 = load i32, i32* %21, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %21, align 4
  br label %157

157:                                              ; preds = %153, %149
  %158 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %159 = load %struct.TYPE_50__*, %struct.TYPE_50__** @kernel_pmap, align 8
  %160 = icmp eq %struct.TYPE_50__* %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %21, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %21, align 4
  br label %165

165:                                              ; preds = %161, %157
  %166 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %167 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i64, i64* %12, align 8
  %172 = icmp sgt i64 %171, 0
  %173 = zext i1 %172 to i32
  %174 = call i32 @pmap_cache_bits(%struct.TYPE_50__* %166, i32 %170, i32 %173)
  %175 = load i32, i32* %21, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %21, align 4
  %177 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @VPO_UNMANAGED, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %165
  %184 = load i32, i32* %21, align 4
  %185 = load i32, i32* %19, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load i32, i32* %18, align 4
  %190 = load i32, i32* %21, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %21, align 4
  br label %192

192:                                              ; preds = %188, %183
  br label %197

193:                                              ; preds = %165
  %194 = load i32, i32* @PG_MANAGED, align 4
  %195 = load i32, i32* %21, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %21, align 4
  br label %197

197:                                              ; preds = %193, %192
  store %struct.rwlock* null, %struct.rwlock** %13, align 8
  %198 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %199 = call i32 @PMAP_LOCK(%struct.TYPE_50__* %198)
  %200 = load i64, i64* %12, align 8
  %201 = icmp eq i64 %200, 1
  br i1 %201, label %202, label %223

202:                                              ; preds = %197
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* @PDRMASK, align 4
  %205 = and i32 %203, %204
  %206 = icmp eq i32 %205, 0
  %207 = zext i1 %206 to i32
  %208 = call i32 @KASSERT(i32 %207, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %209 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp sgt i64 %211, 0
  %213 = zext i1 %212 to i32
  %214 = call i32 @KASSERT(i32 %213, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %215 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* %21, align 4
  %218 = load i32, i32* @PG_PS, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* %11, align 4
  %221 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %222 = call i32 @pmap_enter_pde(%struct.TYPE_50__* %215, i32 %216, i32 %219, i32 %220, %struct.TYPE_47__* %221, %struct.rwlock** %13)
  store i32 %222, i32* %28, align 4
  br label %635

223:                                              ; preds = %197
  store %struct.TYPE_47__* null, %struct.TYPE_47__** %26, align 8
  br label %224

224:                                              ; preds = %296, %223
  %225 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %226 = load i32, i32* %8, align 4
  %227 = call i32* @pmap_pde(%struct.TYPE_50__* %225, i32 %226)
  store i32* %227, i32** %14, align 8
  %228 = load i32*, i32** %14, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %269

230:                                              ; preds = %224
  %231 = load i32*, i32** %14, align 8
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %20, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %269

236:                                              ; preds = %230
  %237 = load i32*, i32** %14, align 8
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @PG_PS, align 4
  %240 = and i32 %238, %239
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %236
  %243 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %244 = load i32*, i32** %14, align 8
  %245 = load i32, i32* %8, align 4
  %246 = call i64 @pmap_demote_pde_locked(%struct.TYPE_50__* %243, i32* %244, i32 %245, %struct.rwlock** %13)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %269

248:                                              ; preds = %242, %236
  %249 = load i32*, i32** %14, align 8
  %250 = load i32, i32* %8, align 4
  %251 = call i32* @pmap_pde_to_pte(i32* %249, i32 %250)
  store i32* %251, i32** %15, align 8
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* @VM_MAXUSER_ADDRESS, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %268

255:                                              ; preds = %248
  %256 = load %struct.TYPE_47__*, %struct.TYPE_47__** %26, align 8
  %257 = icmp eq %struct.TYPE_47__* %256, null
  br i1 %257, label %258, label %268

258:                                              ; preds = %255
  %259 = load i32*, i32** %14, align 8
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @PG_FRAME, align 4
  %262 = and i32 %260, %261
  %263 = call %struct.TYPE_47__* @PHYS_TO_VM_PAGE(i32 %262)
  store %struct.TYPE_47__* %263, %struct.TYPE_47__** %26, align 8
  %264 = load %struct.TYPE_47__*, %struct.TYPE_47__** %26, align 8
  %265 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = add nsw i64 %266, 1
  store i64 %267, i64* %265, align 8
  br label %268

268:                                              ; preds = %258, %255, %248
  br label %301

269:                                              ; preds = %242, %230, %224
  %270 = load i32, i32* %8, align 4
  %271 = load i32, i32* @VM_MAXUSER_ADDRESS, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %273, label %297

273:                                              ; preds = %269
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* @PMAP_ENTER_NOSLEEP, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  %278 = zext i1 %277 to i32
  store i32 %278, i32* %29, align 4
  %279 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %280 = load i32, i32* %8, align 4
  %281 = call i32 @pmap_pde_pindex(i32 %280)
  %282 = load i32, i32* %29, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %273
  br label %286

285:                                              ; preds = %273
  br label %286

286:                                              ; preds = %285, %284
  %287 = phi %struct.rwlock** [ null, %284 ], [ %13, %285 ]
  %288 = call %struct.TYPE_47__* @_pmap_allocpte(%struct.TYPE_50__* %279, i32 %281, %struct.rwlock** %287)
  store %struct.TYPE_47__* %288, %struct.TYPE_47__** %26, align 8
  %289 = load %struct.TYPE_47__*, %struct.TYPE_47__** %26, align 8
  %290 = icmp eq %struct.TYPE_47__* %289, null
  br i1 %290, label %291, label %296

291:                                              ; preds = %286
  %292 = load i32, i32* %29, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %291
  %295 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %295, i32* %28, align 4
  br label %635

296:                                              ; preds = %291, %286
  br label %224

297:                                              ; preds = %269
  %298 = load i32, i32* %8, align 4
  %299 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %298)
  br label %300

300:                                              ; preds = %297
  br label %301

301:                                              ; preds = %300, %268
  %302 = load i32*, i32** %15, align 8
  %303 = load i32, i32* %302, align 4
  store i32 %303, i32* %22, align 4
  store %struct.TYPE_49__* null, %struct.TYPE_49__** %23, align 8
  %304 = load i32, i32* %8, align 4
  %305 = load i32, i32* @VM_MAXUSER_ADDRESS, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %319

307:                                              ; preds = %301
  %308 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @PT_X86, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %319

313:                                              ; preds = %307
  %314 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %315 = load i32, i32* %8, align 4
  %316 = call i32 @pmap_pkru_get(%struct.TYPE_50__* %314, i32 %315)
  %317 = load i32, i32* %21, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %21, align 4
  br label %319

319:                                              ; preds = %313, %307, %301
  %320 = load i32, i32* %22, align 4
  %321 = load i32, i32* %20, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %512

324:                                              ; preds = %319
  %325 = load i32, i32* %21, align 4
  %326 = load i32, i32* @PG_W, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %340

329:                                              ; preds = %324
  %330 = load i32, i32* %22, align 4
  %331 = load i32, i32* @PG_W, align 4
  %332 = and i32 %330, %331
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %340

334:                                              ; preds = %329
  %335 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %337, align 8
  br label %357

340:                                              ; preds = %329, %324
  %341 = load i32, i32* %21, align 4
  %342 = load i32, i32* @PG_W, align 4
  %343 = and i32 %341, %342
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %356

345:                                              ; preds = %340
  %346 = load i32, i32* %22, align 4
  %347 = load i32, i32* @PG_W, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %345
  %351 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = add nsw i32 %354, -1
  store i32 %355, i32* %353, align 8
  br label %356

356:                                              ; preds = %350, %345, %340
  br label %357

357:                                              ; preds = %356, %334
  %358 = load %struct.TYPE_47__*, %struct.TYPE_47__** %26, align 8
  %359 = icmp ne %struct.TYPE_47__* %358, null
  br i1 %359, label %360, label %374

360:                                              ; preds = %357
  %361 = load %struct.TYPE_47__*, %struct.TYPE_47__** %26, align 8
  %362 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %361, i32 0, i32 2
  %363 = load i64, i64* %362, align 8
  %364 = add nsw i64 %363, -1
  store i64 %364, i64* %362, align 8
  %365 = load %struct.TYPE_47__*, %struct.TYPE_47__** %26, align 8
  %366 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %365, i32 0, i32 2
  %367 = load i64, i64* %366, align 8
  %368 = icmp sgt i64 %367, 0
  %369 = zext i1 %368 to i32
  %370 = load i32, i32* %8, align 4
  %371 = sext i32 %370 to i64
  %372 = inttoptr i64 %371 to i8*
  %373 = call i32 @KASSERT(i32 %369, i8* %372)
  br label %374

374:                                              ; preds = %360, %357
  %375 = load i32, i32* %22, align 4
  %376 = load i32, i32* @PG_FRAME, align 4
  %377 = and i32 %375, %376
  store i32 %377, i32* %24, align 4
  %378 = load i32, i32* %24, align 4
  %379 = load i32, i32* %25, align 4
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %381, label %407

381:                                              ; preds = %374
  %382 = load i32, i32* %22, align 4
  %383 = load i32, i32* @PG_MANAGED, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %395

386:                                              ; preds = %381
  %387 = load i32, i32* %21, align 4
  %388 = load i32, i32* %19, align 4
  %389 = and i32 %387, %388
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %395

391:                                              ; preds = %386
  %392 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %393 = load i32, i32* @PGA_WRITEABLE, align 4
  %394 = call i32 @vm_page_aflag_set(%struct.TYPE_47__* %392, i32 %393)
  br label %395

395:                                              ; preds = %391, %386, %381
  %396 = load i32, i32* %22, align 4
  %397 = load i32, i32* %21, align 4
  %398 = xor i32 %396, %397
  %399 = load i32, i32* %18, align 4
  %400 = load i32, i32* %17, align 4
  %401 = or i32 %399, %400
  %402 = xor i32 %401, -1
  %403 = and i32 %398, %402
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %395
  br label %633

406:                                              ; preds = %395
  br label %569

407:                                              ; preds = %374
  %408 = load i32*, i32** %15, align 8
  %409 = call i32 @pte_load_clear(i32* %408)
  store i32 %409, i32* %22, align 4
  %410 = load i32, i32* %22, align 4
  %411 = load i32, i32* @PG_FRAME, align 4
  %412 = and i32 %410, %411
  %413 = load i32, i32* %24, align 4
  %414 = icmp eq i32 %412, %413
  %415 = zext i1 %414 to i32
  %416 = load i32, i32* %8, align 4
  %417 = sext i32 %416 to i64
  %418 = inttoptr i64 %417 to i8*
  %419 = call i32 @KASSERT(i32 %415, i8* %418)
  %420 = load i32, i32* %22, align 4
  %421 = load i32, i32* @PG_MANAGED, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %502

424:                                              ; preds = %407
  %425 = load i32, i32* %24, align 4
  %426 = call %struct.TYPE_47__* @PHYS_TO_VM_PAGE(i32 %425)
  store %struct.TYPE_47__* %426, %struct.TYPE_47__** %27, align 8
  %427 = load i32, i32* %22, align 4
  %428 = load i32, i32* %18, align 4
  %429 = load i32, i32* %19, align 4
  %430 = or i32 %428, %429
  %431 = and i32 %427, %430
  %432 = load i32, i32* %18, align 4
  %433 = load i32, i32* %19, align 4
  %434 = or i32 %432, %433
  %435 = icmp eq i32 %431, %434
  br i1 %435, label %436, label %439

436:                                              ; preds = %424
  %437 = load %struct.TYPE_47__*, %struct.TYPE_47__** %27, align 8
  %438 = call i32 @vm_page_dirty(%struct.TYPE_47__* %437)
  br label %439

439:                                              ; preds = %436, %424
  %440 = load i32, i32* %22, align 4
  %441 = load i32, i32* %17, align 4
  %442 = and i32 %440, %441
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %448

444:                                              ; preds = %439
  %445 = load %struct.TYPE_47__*, %struct.TYPE_47__** %27, align 8
  %446 = load i32, i32* @PGA_REFERENCED, align 4
  %447 = call i32 @vm_page_aflag_set(%struct.TYPE_47__* %445, i32 %446)
  br label %448

448:                                              ; preds = %444, %439
  %449 = load i32, i32* %24, align 4
  %450 = call i32 @CHANGE_PV_LIST_LOCK_TO_PHYS(%struct.rwlock** %13, i32 %449)
  %451 = load %struct.TYPE_47__*, %struct.TYPE_47__** %27, align 8
  %452 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %451, i32 0, i32 5
  %453 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %454 = load i32, i32* %8, align 4
  %455 = call %struct.TYPE_49__* @pmap_pvh_remove(%struct.TYPE_44__* %452, %struct.TYPE_50__* %453, i32 %454)
  store %struct.TYPE_49__* %455, %struct.TYPE_49__** %23, align 8
  %456 = load %struct.TYPE_49__*, %struct.TYPE_49__** %23, align 8
  %457 = icmp ne %struct.TYPE_49__* %456, null
  %458 = zext i1 %457 to i32
  %459 = load i32, i32* %8, align 4
  %460 = sext i32 %459 to i64
  %461 = inttoptr i64 %460 to i8*
  %462 = call i32 @KASSERT(i32 %458, i8* %461)
  %463 = load i32, i32* %21, align 4
  %464 = load i32, i32* @PG_MANAGED, align 4
  %465 = and i32 %463, %464
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %471

467:                                              ; preds = %448
  %468 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %469 = load %struct.TYPE_49__*, %struct.TYPE_49__** %23, align 8
  %470 = call i32 @free_pv_entry(%struct.TYPE_50__* %468, %struct.TYPE_49__* %469)
  br label %471

471:                                              ; preds = %467, %448
  %472 = load %struct.TYPE_47__*, %struct.TYPE_47__** %27, align 8
  %473 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %472, i32 0, i32 3
  %474 = load i32, i32* %473, align 8
  %475 = load i32, i32* @PGA_WRITEABLE, align 4
  %476 = and i32 %474, %475
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %501

478:                                              ; preds = %471
  %479 = load %struct.TYPE_47__*, %struct.TYPE_47__** %27, align 8
  %480 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %479, i32 0, i32 5
  %481 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %480, i32 0, i32 1
  %482 = call i64 @TAILQ_EMPTY(i32* %481)
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %501

484:                                              ; preds = %478
  %485 = load %struct.TYPE_47__*, %struct.TYPE_47__** %27, align 8
  %486 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %485, i32 0, i32 4
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* @PG_FICTITIOUS, align 4
  %489 = and i32 %487, %488
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %497, label %491

491:                                              ; preds = %484
  %492 = load i32, i32* %24, align 4
  %493 = call %struct.TYPE_46__* @pa_to_pvh(i32 %492)
  %494 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %493, i32 0, i32 0
  %495 = call i64 @TAILQ_EMPTY(i32* %494)
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %497, label %501

497:                                              ; preds = %491, %484
  %498 = load %struct.TYPE_47__*, %struct.TYPE_47__** %27, align 8
  %499 = load i32, i32* @PGA_WRITEABLE, align 4
  %500 = call i32 @vm_page_aflag_clear(%struct.TYPE_47__* %498, i32 %499)
  br label %501

501:                                              ; preds = %497, %491, %478, %471
  br label %502

502:                                              ; preds = %501, %407
  %503 = load i32, i32* %22, align 4
  %504 = load i32, i32* %17, align 4
  %505 = and i32 %503, %504
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %511

507:                                              ; preds = %502
  %508 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %509 = load i32, i32* %8, align 4
  %510 = call i32 @pmap_invalidate_page(%struct.TYPE_50__* %508, i32 %509)
  br label %511

511:                                              ; preds = %507, %502
  store i32 0, i32* %22, align 4
  br label %526

512:                                              ; preds = %319
  %513 = load i32, i32* %21, align 4
  %514 = load i32, i32* @PG_W, align 4
  %515 = and i32 %513, %514
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %523

517:                                              ; preds = %512
  %518 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %519 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %520, align 8
  br label %523

523:                                              ; preds = %517, %512
  %524 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %525 = call i32 @pmap_resident_count_inc(%struct.TYPE_50__* %524, i32 1)
  br label %526

526:                                              ; preds = %523, %511
  %527 = load i32, i32* %21, align 4
  %528 = load i32, i32* @PG_MANAGED, align 4
  %529 = and i32 %527, %528
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %563

531:                                              ; preds = %526
  %532 = load %struct.TYPE_49__*, %struct.TYPE_49__** %23, align 8
  %533 = icmp eq %struct.TYPE_49__* %532, null
  br i1 %533, label %534, label %540

534:                                              ; preds = %531
  %535 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %536 = call %struct.TYPE_49__* @get_pv_entry(%struct.TYPE_50__* %535, %struct.rwlock** %13)
  store %struct.TYPE_49__* %536, %struct.TYPE_49__** %23, align 8
  %537 = load i32, i32* %8, align 4
  %538 = load %struct.TYPE_49__*, %struct.TYPE_49__** %23, align 8
  %539 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %538, i32 0, i32 0
  store i32 %537, i32* %539, align 4
  br label %540

540:                                              ; preds = %534, %531
  %541 = load i32, i32* %25, align 4
  %542 = call i32 @CHANGE_PV_LIST_LOCK_TO_PHYS(%struct.rwlock** %13, i32 %541)
  %543 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %544 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %543, i32 0, i32 5
  %545 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %544, i32 0, i32 1
  %546 = load %struct.TYPE_49__*, %struct.TYPE_49__** %23, align 8
  %547 = load i32, i32* @pv_next, align 4
  %548 = call i32 @TAILQ_INSERT_TAIL(i32* %545, %struct.TYPE_49__* %546, i32 %547)
  %549 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %550 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %549, i32 0, i32 5
  %551 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 8
  %553 = add nsw i32 %552, 1
  store i32 %553, i32* %551, align 8
  %554 = load i32, i32* %21, align 4
  %555 = load i32, i32* %19, align 4
  %556 = and i32 %554, %555
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %562

558:                                              ; preds = %540
  %559 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %560 = load i32, i32* @PGA_WRITEABLE, align 4
  %561 = call i32 @vm_page_aflag_set(%struct.TYPE_47__* %559, i32 %560)
  br label %562

562:                                              ; preds = %558, %540
  br label %563

563:                                              ; preds = %562, %526
  %564 = load i32, i32* %22, align 4
  %565 = load i32, i32* %20, align 4
  %566 = and i32 %564, %565
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %628

568:                                              ; preds = %563
  br label %569

569:                                              ; preds = %568, %406
  %570 = load i32*, i32** %15, align 8
  %571 = load i32, i32* %21, align 4
  %572 = call i32 @pte_load_store(i32* %570, i32 %571)
  store i32 %572, i32* %22, align 4
  %573 = load i32, i32* %22, align 4
  %574 = load i32, i32* @PG_FRAME, align 4
  %575 = and i32 %573, %574
  %576 = load i32, i32* %25, align 4
  %577 = icmp eq i32 %575, %576
  %578 = zext i1 %577 to i32
  %579 = load i32, i32* %8, align 4
  %580 = sext i32 %579 to i64
  %581 = inttoptr i64 %580 to i8*
  %582 = call i32 @KASSERT(i32 %578, i8* %581)
  %583 = load i32, i32* %21, align 4
  %584 = load i32, i32* %18, align 4
  %585 = and i32 %583, %584
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %587, label %606

587:                                              ; preds = %569
  %588 = load i32, i32* %22, align 4
  %589 = load i32, i32* %18, align 4
  %590 = load i32, i32* %19, align 4
  %591 = or i32 %589, %590
  %592 = and i32 %588, %591
  %593 = load i32, i32* %18, align 4
  %594 = load i32, i32* %19, align 4
  %595 = or i32 %593, %594
  %596 = icmp eq i32 %592, %595
  br i1 %596, label %597, label %606

597:                                              ; preds = %587
  %598 = load i32, i32* %22, align 4
  %599 = load i32, i32* @PG_MANAGED, align 4
  %600 = and i32 %598, %599
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %602, label %605

602:                                              ; preds = %597
  %603 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %604 = call i32 @vm_page_dirty(%struct.TYPE_47__* %603)
  br label %605

605:                                              ; preds = %602, %597
  br label %618

606:                                              ; preds = %587, %569
  %607 = load i32, i32* %22, align 4
  %608 = load i32, i32* @PG_NX, align 4
  %609 = and i32 %607, %608
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %616, label %611

611:                                              ; preds = %606
  %612 = load i32, i32* %21, align 4
  %613 = load i32, i32* @PG_NX, align 4
  %614 = and i32 %612, %613
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %617

616:                                              ; preds = %611, %606
  br label %633

617:                                              ; preds = %611
  br label %618

618:                                              ; preds = %617, %605
  %619 = load i32, i32* %22, align 4
  %620 = load i32, i32* %17, align 4
  %621 = and i32 %619, %620
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %623, label %627

623:                                              ; preds = %618
  %624 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %625 = load i32, i32* %8, align 4
  %626 = call i32 @pmap_invalidate_page(%struct.TYPE_50__* %624, i32 %625)
  br label %627

627:                                              ; preds = %623, %618
  br label %632

628:                                              ; preds = %563
  %629 = load i32*, i32** %15, align 8
  %630 = load i32, i32* %21, align 4
  %631 = call i32 @pte_store(i32* %629, i32 %630)
  br label %632

632:                                              ; preds = %628, %627
  br label %633

633:                                              ; preds = %632, %616, %405
  %634 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %634, i32* %28, align 4
  br label %635

635:                                              ; preds = %633, %294, %202
  %636 = load %struct.rwlock*, %struct.rwlock** %13, align 8
  %637 = icmp ne %struct.rwlock* %636, null
  br i1 %637, label %638, label %641

638:                                              ; preds = %635
  %639 = load %struct.rwlock*, %struct.rwlock** %13, align 8
  %640 = call i32 @rw_wunlock(%struct.rwlock* %639)
  br label %641

641:                                              ; preds = %638, %635
  %642 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %643 = call i32 @PMAP_UNLOCK(%struct.TYPE_50__* %642)
  %644 = load i32, i32* %28, align 4
  ret i32 %644
}

declare dso_local i32 @pmap_accessed_bit(%struct.TYPE_50__*) #1

declare dso_local i32 @pmap_global_bit(%struct.TYPE_50__*) #1

declare dso_local i32 @pmap_modified_bit(%struct.TYPE_50__*) #1

declare dso_local i32 @pmap_valid_bit(%struct.TYPE_50__*) #1

declare dso_local i32 @pmap_rw_bit(%struct.TYPE_50__*) #1

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VM_PAGE_OBJECT_BUSY_ASSERT(%struct.TYPE_47__*) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_47__*) #1

declare dso_local i32 @pmap_cache_bits(%struct.TYPE_50__*, i32, i32) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_50__*) #1

declare dso_local i32 @pmap_enter_pde(%struct.TYPE_50__*, i32, i32, i32, %struct.TYPE_47__*, %struct.rwlock**) #1

declare dso_local i32* @pmap_pde(%struct.TYPE_50__*, i32) #1

declare dso_local i64 @pmap_demote_pde_locked(%struct.TYPE_50__*, i32*, i32, %struct.rwlock**) #1

declare dso_local i32* @pmap_pde_to_pte(i32*, i32) #1

declare dso_local %struct.TYPE_47__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local %struct.TYPE_47__* @_pmap_allocpte(%struct.TYPE_50__*, i32, %struct.rwlock**) #1

declare dso_local i32 @pmap_pde_pindex(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @pmap_pkru_get(%struct.TYPE_50__*, i32) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_47__*, i32) #1

declare dso_local i32 @pte_load_clear(i32*) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_47__*) #1

declare dso_local i32 @CHANGE_PV_LIST_LOCK_TO_PHYS(%struct.rwlock**, i32) #1

declare dso_local %struct.TYPE_49__* @pmap_pvh_remove(%struct.TYPE_44__*, %struct.TYPE_50__*, i32) #1

declare dso_local i32 @free_pv_entry(%struct.TYPE_50__*, %struct.TYPE_49__*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.TYPE_46__* @pa_to_pvh(i32) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_47__*, i32) #1

declare dso_local i32 @pmap_invalidate_page(%struct.TYPE_50__*, i32) #1

declare dso_local i32 @pmap_resident_count_inc(%struct.TYPE_50__*, i32) #1

declare dso_local %struct.TYPE_49__* @get_pv_entry(%struct.TYPE_50__*, %struct.rwlock**) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_49__*, i32) #1

declare dso_local i32 @pte_load_store(i32*, i32) #1

declare dso_local i32 @pte_store(i32*, i32) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_50__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
