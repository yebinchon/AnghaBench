; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_protect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_PROT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"invalid prot %x\00", align 1
@VM_PROT_NONE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@NBPML4 = common dso_local global i32 0, align 4
@PML4MASK = common dso_local global i32 0, align 4
@NBPDP = common dso_local global i32 0, align 4
@PDPMASK = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@PG_MANAGED = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_protect(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @VM_PROT_ALL, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @KASSERT(i32 %28, i8* %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @VM_PROT_NONE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @pmap_remove(i32 %37, i32 %38, i32 %39)
  br label %276

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @VM_PROT_WRITE, align 4
  %44 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = load i32, i32* @VM_PROT_WRITE, align 4
  %48 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %49 = or i32 %47, %48
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %276

52:                                               ; preds = %41
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @pmap_global_bit(i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @pmap_modified_bit(i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @pmap_valid_bit(i32 %57)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @pmap_rw_bit(i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i64, i64* @FALSE, align 8
  store i64 %61, i64* %19, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @PMAP_LOCK(i32 %62)
  br label %64

64:                                               ; preds = %265, %52
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %267

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32* @pmap_pml4e(i32 %69, i32 %70)
  store i32* %71, i32** %10, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %18, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %68
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @NBPML4, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* @PML4MASK, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %87, %77
  br label %265

90:                                               ; preds = %68
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32* @pmap_pml4e_to_pdpe(i32* %91, i32 %92)
  store i32* %93, i32** %11, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %18, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %90
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @NBPDP, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* @PDPMASK, align 4
  %104 = xor i32 %103, -1
  %105 = and i32 %102, %104
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %109, %99
  br label %265

112:                                              ; preds = %90
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @NBPDR, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* @PDRMASK, align 4
  %117 = xor i32 %116, -1
  %118 = and i32 %115, %117
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %112
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %122, %112
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32* @pmap_pdpe_to_pde(i32* %125, i32 %126)
  store i32* %127, i32** %13, align 8
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %265

133:                                              ; preds = %124
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @PG_PS, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %167

138:                                              ; preds = %133
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @NBPDR, align 4
  %141 = add nsw i32 %139, %140
  %142 = load i32, i32* %9, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %138
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %144
  %149 = load i32, i32* %5, align 4
  %150 = load i32*, i32** %13, align 8
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %8, align 4
  %153 = call i64 @pmap_protect_pde(i32 %149, i32* %150, i32 %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i64, i64* @TRUE, align 8
  store i64 %156, i64* %19, align 8
  br label %157

157:                                              ; preds = %155, %148
  br label %265

158:                                              ; preds = %144, %138
  %159 = load i32, i32* %5, align 4
  %160 = load i32*, i32** %13, align 8
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @pmap_demote_pde(i32 %159, i32* %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %158
  br label %265

165:                                              ; preds = %158
  br label %166

166:                                              ; preds = %165
  br label %167

167:                                              ; preds = %166, %133
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i32, i32* %7, align 4
  store i32 %172, i32* %9, align 4
  br label %173

173:                                              ; preds = %171, %167
  %174 = load i32*, i32** %13, align 8
  %175 = load i32, i32* %6, align 4
  %176 = call i32* @pmap_pde_to_pte(i32* %174, i32 %175)
  store i32* %176, i32** %14, align 8
  br label %177

177:                                              ; preds = %256, %173
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %264

181:                                              ; preds = %177
  br label %182

182:                                              ; preds = %242, %181
  %183 = load i32*, i32** %14, align 8
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %21, align 4
  store i32 %184, i32* %20, align 4
  %185 = load i32, i32* %21, align 4
  %186 = load i32, i32* %18, align 4
  %187 = and i32 %185, %186
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  br label %256

190:                                              ; preds = %182
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* @VM_PROT_WRITE, align 4
  %193 = and i32 %191, %192
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %223

195:                                              ; preds = %190
  %196 = load i32, i32* %21, align 4
  %197 = load i32, i32* @PG_MANAGED, align 4
  %198 = load i32, i32* %16, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* %17, align 4
  %201 = or i32 %199, %200
  %202 = and i32 %196, %201
  %203 = load i32, i32* @PG_MANAGED, align 4
  %204 = load i32, i32* %16, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* %17, align 4
  %207 = or i32 %205, %206
  %208 = icmp eq i32 %202, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %195
  %210 = load i32, i32* %21, align 4
  %211 = load i32, i32* @PG_FRAME, align 4
  %212 = and i32 %210, %211
  %213 = call i32 @PHYS_TO_VM_PAGE(i32 %212)
  store i32 %213, i32* %22, align 4
  %214 = load i32, i32* %22, align 4
  %215 = call i32 @vm_page_dirty(i32 %214)
  br label %216

216:                                              ; preds = %209, %195
  %217 = load i32, i32* %17, align 4
  %218 = load i32, i32* %16, align 4
  %219 = or i32 %217, %218
  %220 = xor i32 %219, -1
  %221 = load i32, i32* %21, align 4
  %222 = and i32 %221, %220
  store i32 %222, i32* %21, align 4
  br label %223

223:                                              ; preds = %216, %190
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %226 = and i32 %224, %225
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %223
  %229 = load i32, i32* @pg_nx, align 4
  %230 = load i32, i32* %21, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %21, align 4
  br label %232

232:                                              ; preds = %228, %223
  %233 = load i32, i32* %21, align 4
  %234 = load i32, i32* %20, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %255

236:                                              ; preds = %232
  %237 = load i32*, i32** %14, align 8
  %238 = load i32, i32* %20, align 4
  %239 = load i32, i32* %21, align 4
  %240 = call i32 @atomic_cmpset_long(i32* %237, i32 %238, i32 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %236
  br label %182

243:                                              ; preds = %236
  %244 = load i32, i32* %20, align 4
  %245 = load i32, i32* %15, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %243
  %249 = load i32, i32* %5, align 4
  %250 = load i32, i32* %6, align 4
  %251 = call i32 @pmap_invalidate_page(i32 %249, i32 %250)
  br label %254

252:                                              ; preds = %243
  %253 = load i64, i64* @TRUE, align 8
  store i64 %253, i64* %19, align 8
  br label %254

254:                                              ; preds = %252, %248
  br label %255

255:                                              ; preds = %254, %232
  br label %256

256:                                              ; preds = %255, %189
  %257 = load i32*, i32** %14, align 8
  %258 = getelementptr inbounds i32, i32* %257, i32 1
  store i32* %258, i32** %14, align 8
  %259 = load i64, i64* @PAGE_SIZE, align 8
  %260 = load i32, i32* %6, align 4
  %261 = sext i32 %260 to i64
  %262 = add nsw i64 %261, %259
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %6, align 4
  br label %177

264:                                              ; preds = %177
  br label %265

265:                                              ; preds = %264, %164, %157, %132, %111, %89
  %266 = load i32, i32* %9, align 4
  store i32 %266, i32* %6, align 4
  br label %64

267:                                              ; preds = %64
  %268 = load i64, i64* %19, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %267
  %271 = load i32, i32* %5, align 4
  %272 = call i32 @pmap_invalidate_all(i32 %271)
  br label %273

273:                                              ; preds = %270, %267
  %274 = load i32, i32* %5, align 4
  %275 = call i32 @PMAP_UNLOCK(i32 %274)
  br label %276

276:                                              ; preds = %273, %51, %36
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_remove(i32, i32, i32) #1

declare dso_local i32 @pmap_global_bit(i32) #1

declare dso_local i32 @pmap_modified_bit(i32) #1

declare dso_local i32 @pmap_valid_bit(i32) #1

declare dso_local i32 @pmap_rw_bit(i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32* @pmap_pml4e(i32, i32) #1

declare dso_local i32* @pmap_pml4e_to_pdpe(i32*, i32) #1

declare dso_local i32* @pmap_pdpe_to_pde(i32*, i32) #1

declare dso_local i64 @pmap_protect_pde(i32, i32*, i32, i32) #1

declare dso_local i32 @pmap_demote_pde(i32, i32*, i32) #1

declare dso_local i32* @pmap_pde_to_pte(i32*, i32) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_dirty(i32) #1

declare dso_local i32 @atomic_cmpset_long(i32*, i32, i32) #1

declare dso_local i32 @pmap_invalidate_page(i32, i32) #1

declare dso_local i32 @pmap_invalidate_all(i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
