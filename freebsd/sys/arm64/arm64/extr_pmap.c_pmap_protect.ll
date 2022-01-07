; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_protect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_PROT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"invalid prot %x\00", align 1
@VM_PROT_NONE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@ATTR_AP_RW_BIT = common dso_local global i32 0, align 4
@ATTR_SW_DBM = common dso_local global i32 0, align 4
@ATTR_AP_RO = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@ATTR_XN = common dso_local global i32 0, align 4
@L0_SIZE = common dso_local global i32 0, align 4
@L0_OFFSET = common dso_local global i32 0, align 4
@L1_SIZE = common dso_local global i32 0, align 4
@L1_OFFSET = common dso_local global i32 0, align 4
@L2_SIZE = common dso_local global i32 0, align 4
@L2_OFFSET = common dso_local global i32 0, align 4
@ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@L2_BLOCK = common dso_local global i32 0, align 4
@L2_TABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"pmap_protect: Invalid L2 entry after demotion\00", align 1
@ATTR_SW_MANAGED = common dso_local global i32 0, align 4
@ATTR_MASK = common dso_local global i32 0, align 4
@L3_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_protect(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @VM_PROT_ALL, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @KASSERT(i32 %23, i8* %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @VM_PROT_NONE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @pmap_remove(i32 %32, i32 %33, i32 %34)
  br label %277

36:                                               ; preds = %4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @VM_PROT_WRITE, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i32, i32* @ATTR_AP_RW_BIT, align 4
  %43 = load i32, i32* @ATTR_SW_DBM, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %16, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* @ATTR_AP_RO, align 4
  %48 = call i32 @ATTR_AP(i32 %47)
  %49 = load i32, i32* %17, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %17, align 4
  br label %51

51:                                               ; preds = %41, %36
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* @ATTR_XN, align 4
  %58 = load i32, i32* %16, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* @ATTR_XN, align 4
  %61 = load i32, i32* %17, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %17, align 4
  br label %63

63:                                               ; preds = %56, %51
  %64 = load i32, i32* %16, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %277

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @PMAP_LOCK(i32 %68)
  br label %70

70:                                               ; preds = %272, %67
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %274

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32* @pmap_l0(i32 %75, i32 %76)
  store i32* %77, i32** %11, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @pmap_load(i32* %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @L0_SIZE, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* @L0_OFFSET, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %91, %81
  br label %272

94:                                               ; preds = %74
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32* @pmap_l0_to_l1(i32* %95, i32 %96)
  store i32* %97, i32** %12, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @pmap_load(i32* %98)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %94
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @L1_SIZE, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* @L1_OFFSET, align 4
  %106 = xor i32 %105, -1
  %107 = and i32 %104, %106
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %111, %101
  br label %272

114:                                              ; preds = %94
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @L2_SIZE, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* @L2_OFFSET, align 4
  %119 = xor i32 %118, -1
  %120 = and i32 %117, %119
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %114
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %124, %114
  %127 = load i32*, i32** %12, align 8
  %128 = load i32, i32* %6, align 4
  %129 = call i32* @pmap_l1_to_l2(i32* %127, i32 %128)
  store i32* %129, i32** %13, align 8
  %130 = load i32*, i32** %13, align 8
  %131 = call i32 @pmap_load(i32* %130)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %272

134:                                              ; preds = %126
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 @pmap_load(i32* %135)
  %137 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* @L2_BLOCK, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %167

141:                                              ; preds = %134
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @L2_SIZE, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* %10, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %141
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp sge i32 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %147
  %152 = load i32, i32* %5, align 4
  %153 = load i32*, i32** %13, align 8
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %17, align 4
  %157 = call i32 @pmap_protect_l2(i32 %152, i32* %153, i32 %154, i32 %155, i32 %156)
  br label %272

158:                                              ; preds = %147, %141
  %159 = load i32, i32* %5, align 4
  %160 = load i32*, i32** %13, align 8
  %161 = load i32, i32* %6, align 4
  %162 = call i32* @pmap_demote_l2(i32 %159, i32* %160, i32 %161)
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %272

165:                                              ; preds = %158
  br label %166

166:                                              ; preds = %165
  br label %167

167:                                              ; preds = %166, %134
  %168 = load i32*, i32** %13, align 8
  %169 = call i32 @pmap_load(i32* %168)
  %170 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %171 = and i32 %169, %170
  %172 = load i32, i32* @L2_TABLE, align 4
  %173 = icmp eq i32 %171, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @KASSERT(i32 %174, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp sgt i32 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %167
  %180 = load i32, i32* %7, align 4
  store i32 %180, i32* %10, align 4
  br label %181

181:                                              ; preds = %179, %167
  %182 = load i32, i32* %10, align 4
  store i32 %182, i32* %9, align 4
  %183 = load i32*, i32** %13, align 8
  %184 = load i32, i32* %6, align 4
  %185 = call i32* @pmap_l2_to_l3(i32* %183, i32 %184)
  store i32* %185, i32** %14, align 8
  br label %186

186:                                              ; preds = %254, %181
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %262

190:                                              ; preds = %186
  %191 = load i32*, i32** %14, align 8
  %192 = call i32 @pmap_load(i32* %191)
  store i32 %192, i32* %15, align 4
  br label %193

193:                                              ; preds = %246, %190
  %194 = load i32, i32* %15, align 4
  %195 = call i32 @pmap_l3_valid(i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %193
  %198 = load i32, i32* %15, align 4
  %199 = load i32, i32* %16, align 4
  %200 = and i32 %198, %199
  %201 = load i32, i32* %17, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %214

203:                                              ; preds = %197, %193
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* %6, align 4
  %211 = call i32 @pmap_invalidate_range(i32 %208, i32 %209, i32 %210)
  %212 = load i32, i32* %10, align 4
  store i32 %212, i32* %9, align 4
  br label %213

213:                                              ; preds = %207, %203
  br label %254

214:                                              ; preds = %197
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* @ATTR_SW_MANAGED, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %236

219:                                              ; preds = %214
  %220 = load i32, i32* %17, align 4
  %221 = load i32, i32* @ATTR_AP_RO, align 4
  %222 = call i32 @ATTR_AP(i32 %221)
  %223 = and i32 %220, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %236

225:                                              ; preds = %219
  %226 = load i32, i32* %15, align 4
  %227 = call i64 @pmap_pte_dirty(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %225
  %230 = load i32, i32* %15, align 4
  %231 = load i32, i32* @ATTR_MASK, align 4
  %232 = xor i32 %231, -1
  %233 = and i32 %230, %232
  %234 = call i32 @PHYS_TO_VM_PAGE(i32 %233)
  %235 = call i32 @vm_page_dirty(i32 %234)
  br label %236

236:                                              ; preds = %229, %225, %219, %214
  %237 = load i32*, i32** %14, align 8
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* %16, align 4
  %240 = xor i32 %239, -1
  %241 = and i32 %238, %240
  %242 = load i32, i32* %17, align 4
  %243 = or i32 %241, %242
  %244 = call i32 @atomic_fcmpset_64(i32* %237, i32* %15, i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %236
  br label %193

247:                                              ; preds = %236
  %248 = load i32, i32* %9, align 4
  %249 = load i32, i32* %10, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %247
  %252 = load i32, i32* %6, align 4
  store i32 %252, i32* %9, align 4
  br label %253

253:                                              ; preds = %251, %247
  br label %254

254:                                              ; preds = %253, %213
  %255 = load i32*, i32** %14, align 8
  %256 = getelementptr inbounds i32, i32* %255, i32 1
  store i32* %256, i32** %14, align 8
  %257 = load i64, i64* @L3_SIZE, align 8
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %257
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %6, align 4
  br label %186

262:                                              ; preds = %186
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* %10, align 4
  %265 = icmp ne i32 %263, %264
  br i1 %265, label %266, label %271

266:                                              ; preds = %262
  %267 = load i32, i32* %5, align 4
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* %6, align 4
  %270 = call i32 @pmap_invalidate_range(i32 %267, i32 %268, i32 %269)
  br label %271

271:                                              ; preds = %266, %262
  br label %272

272:                                              ; preds = %271, %164, %151, %133, %113, %93
  %273 = load i32, i32* %10, align 4
  store i32 %273, i32* %6, align 4
  br label %70

274:                                              ; preds = %70
  %275 = load i32, i32* %5, align 4
  %276 = call i32 @PMAP_UNLOCK(i32 %275)
  br label %277

277:                                              ; preds = %274, %66, %31
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_remove(i32, i32, i32) #1

declare dso_local i32 @ATTR_AP(i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32* @pmap_l0(i32, i32) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32* @pmap_l0_to_l1(i32*, i32) #1

declare dso_local i32* @pmap_l1_to_l2(i32*, i32) #1

declare dso_local i32 @pmap_protect_l2(i32, i32*, i32, i32, i32) #1

declare dso_local i32* @pmap_demote_l2(i32, i32*, i32) #1

declare dso_local i32* @pmap_l2_to_l3(i32*, i32) #1

declare dso_local i32 @pmap_l3_valid(i32) #1

declare dso_local i32 @pmap_invalidate_range(i32, i32, i32) #1

declare dso_local i64 @pmap_pte_dirty(i32) #1

declare dso_local i32 @vm_page_dirty(i32) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @atomic_fcmpset_64(i32*, i32*, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
