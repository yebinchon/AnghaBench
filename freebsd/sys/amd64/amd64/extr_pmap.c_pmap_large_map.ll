; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_large_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_large_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@dmaplimit = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@amd_feature = common dso_local global i32 0, align 4
@AMDID_PAGE1GB = common dso_local global i32 0, align 4
@NBPDP = common dso_local global i64 0, align 8
@PDPMASK = common dso_local global i64 0, align 8
@NBPDR = common dso_local global i64 0, align 8
@PDRMASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i32 0, align 4
@pg_g = common dso_local global i64 0, align 8
@X86_PG_PS = common dso_local global i64 0, align 8
@X86_PG_RW = common dso_local global i64 0, align 8
@X86_PG_V = common dso_local global i64 0, align 8
@X86_PG_A = common dso_local global i64 0, align 8
@pg_nx = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_large_map(i64 %0, i64 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64, i64* %6, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %4
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %5, align 4
  br label %262

28:                                               ; preds = %20
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* @dmaplimit, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @PHYS_TO_DMAP(i64 %35)
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load i8**, i8*** %8, align 8
  store i8* %38, i8** %39, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @pmap_change_attr(i64 %40, i64 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %262

44:                                               ; preds = %28
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* @amd_feature, align 4
  %47 = load i32, i32* @AMDID_PAGE1GB, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64, i64* @NBPDP, align 8
  %55 = call i64 @rounddown2(i64 %53, i64 %54)
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @NBPDP, align 8
  %58 = call i64 @roundup2(i64 %56, i64 %57)
  %59 = load i64, i64* @NBPDP, align 8
  %60 = add nsw i64 %58, %59
  %61 = icmp sge i64 %55, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %50
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @NBPDP, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @PDPMASK, align 8
  %67 = and i64 %65, %66
  %68 = call i32 @pmap_large_map_getva(i64 %63, i64 %64, i64 %67, i64* %15)
  store i32 %68, i32* %17, align 4
  br label %69

69:                                               ; preds = %62, %50, %44
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %69
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i64, i64* @NBPDR, align 8
  %77 = call i64 @rounddown2(i64 %75, i64 %76)
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @NBPDR, align 8
  %80 = call i64 @roundup2(i64 %78, i64 %79)
  %81 = load i64, i64* @NBPDR, align 8
  %82 = add nsw i64 %80, %81
  %83 = icmp sge i64 %77, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %72
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @NBPDR, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @PDRMASK, align 8
  %89 = and i64 %87, %88
  %90 = call i32 @pmap_large_map_getva(i64 %85, i64 %86, i64 %89, i64* %15)
  store i32 %90, i32* %17, align 4
  br label %91

91:                                               ; preds = %84, %72, %69
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* @PAGE_SIZE, align 8
  %97 = call i32 @pmap_large_map_getva(i64 %95, i64 %96, i64 0, i64* %15)
  store i32 %97, i32* %17, align 4
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i32, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %5, align 4
  br label %262

103:                                              ; preds = %98
  %104 = load i32, i32* @kernel_pmap, align 4
  %105 = call i32 @PMAP_LOCK(i32 %104)
  %106 = load i64, i64* %6, align 8
  store i64 %106, i64* %16, align 8
  %107 = load i64, i64* %15, align 8
  store i64 %107, i64* %13, align 8
  br label %108

108:                                              ; preds = %242, %103
  %109 = load i64, i64* %7, align 8
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %252

111:                                              ; preds = %108
  %112 = load i32, i32* @amd_feature, align 4
  %113 = load i32, i32* @AMDID_PAGE1GB, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %158

116:                                              ; preds = %111
  %117 = load i64, i64* %7, align 8
  %118 = load i64, i64* @NBPDP, align 8
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %120, label %158

120:                                              ; preds = %116
  %121 = load i64, i64* %16, align 8
  %122 = load i64, i64* @PDPMASK, align 8
  %123 = and i64 %121, %122
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %158

125:                                              ; preds = %120
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* @PDPMASK, align 8
  %128 = and i64 %126, %127
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %158

130:                                              ; preds = %125
  %131 = load i64, i64* %13, align 8
  %132 = call i64* @pmap_large_map_pdpe(i64 %131)
  store i64* %132, i64** %10, align 8
  %133 = load i64*, i64** %10, align 8
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @MPASS(i32 %136)
  %138 = load i64, i64* %16, align 8
  %139 = load i64, i64* @pg_g, align 8
  %140 = or i64 %138, %139
  %141 = load i64, i64* @X86_PG_PS, align 8
  %142 = or i64 %140, %141
  %143 = load i64, i64* @X86_PG_RW, align 8
  %144 = or i64 %142, %143
  %145 = load i64, i64* @X86_PG_V, align 8
  %146 = or i64 %144, %145
  %147 = load i64, i64* @X86_PG_A, align 8
  %148 = or i64 %146, %147
  %149 = load i64, i64* @pg_nx, align 8
  %150 = or i64 %148, %149
  %151 = load i32, i32* @kernel_pmap, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @TRUE, align 4
  %154 = call i64 @pmap_cache_bits(i32 %151, i32 %152, i32 %153)
  %155 = or i64 %150, %154
  %156 = load i64*, i64** %10, align 8
  store i64 %155, i64* %156, align 8
  %157 = load i64, i64* @NBPDP, align 8
  store i64 %157, i64* %14, align 8
  br label %241

158:                                              ; preds = %125, %120, %116, %111
  %159 = load i64, i64* %7, align 8
  %160 = load i64, i64* @NBPDR, align 8
  %161 = icmp sge i64 %159, %160
  br i1 %161, label %162, label %207

162:                                              ; preds = %158
  %163 = load i64, i64* %16, align 8
  %164 = load i64, i64* @PDRMASK, align 8
  %165 = and i64 %163, %164
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %207

167:                                              ; preds = %162
  %168 = load i64, i64* %13, align 8
  %169 = load i64, i64* @PDRMASK, align 8
  %170 = and i64 %168, %169
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %207

172:                                              ; preds = %167
  %173 = load i64, i64* %13, align 8
  %174 = call i64* @pmap_large_map_pde(i64 %173)
  store i64* %174, i64** %11, align 8
  %175 = load i64*, i64** %11, align 8
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %176, 0
  %178 = zext i1 %177 to i32
  %179 = call i32 @MPASS(i32 %178)
  %180 = load i64, i64* %16, align 8
  %181 = load i64, i64* @pg_g, align 8
  %182 = or i64 %180, %181
  %183 = load i64, i64* @X86_PG_PS, align 8
  %184 = or i64 %182, %183
  %185 = load i64, i64* @X86_PG_RW, align 8
  %186 = or i64 %184, %185
  %187 = load i64, i64* @X86_PG_V, align 8
  %188 = or i64 %186, %187
  %189 = load i64, i64* @X86_PG_A, align 8
  %190 = or i64 %188, %189
  %191 = load i64, i64* @pg_nx, align 8
  %192 = or i64 %190, %191
  %193 = load i32, i32* @kernel_pmap, align 4
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* @TRUE, align 4
  %196 = call i64 @pmap_cache_bits(i32 %193, i32 %194, i32 %195)
  %197 = or i64 %192, %196
  %198 = load i64*, i64** %11, align 8
  store i64 %197, i64* %198, align 8
  %199 = load i64*, i64** %11, align 8
  %200 = ptrtoint i64* %199 to i64
  %201 = call i32 @DMAP_TO_PHYS(i64 %200)
  %202 = call %struct.TYPE_2__* @PHYS_TO_VM_PAGE(i32 %201)
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 4
  %206 = load i64, i64* @NBPDR, align 8
  store i64 %206, i64* %14, align 8
  br label %240

207:                                              ; preds = %167, %162, %158
  %208 = load i64, i64* %13, align 8
  %209 = call i64* @pmap_large_map_pte(i64 %208)
  store i64* %209, i64** %12, align 8
  %210 = load i64*, i64** %12, align 8
  %211 = load i64, i64* %210, align 8
  %212 = icmp eq i64 %211, 0
  %213 = zext i1 %212 to i32
  %214 = call i32 @MPASS(i32 %213)
  %215 = load i64, i64* %16, align 8
  %216 = load i64, i64* @pg_g, align 8
  %217 = or i64 %215, %216
  %218 = load i64, i64* @X86_PG_RW, align 8
  %219 = or i64 %217, %218
  %220 = load i64, i64* @X86_PG_V, align 8
  %221 = or i64 %219, %220
  %222 = load i64, i64* @X86_PG_A, align 8
  %223 = or i64 %221, %222
  %224 = load i64, i64* @pg_nx, align 8
  %225 = or i64 %223, %224
  %226 = load i32, i32* @kernel_pmap, align 4
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* @FALSE, align 4
  %229 = call i64 @pmap_cache_bits(i32 %226, i32 %227, i32 %228)
  %230 = or i64 %225, %229
  %231 = load i64*, i64** %12, align 8
  store i64 %230, i64* %231, align 8
  %232 = load i64*, i64** %12, align 8
  %233 = ptrtoint i64* %232 to i64
  %234 = call i32 @DMAP_TO_PHYS(i64 %233)
  %235 = call %struct.TYPE_2__* @PHYS_TO_VM_PAGE(i32 %234)
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 4
  %239 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %239, i64* %14, align 8
  br label %240

240:                                              ; preds = %207, %172
  br label %241

241:                                              ; preds = %240, %130
  br label %242

242:                                              ; preds = %241
  %243 = load i64, i64* %14, align 8
  %244 = load i64, i64* %16, align 8
  %245 = add nsw i64 %244, %243
  store i64 %245, i64* %16, align 8
  %246 = load i64, i64* %14, align 8
  %247 = load i64, i64* %13, align 8
  %248 = add nsw i64 %247, %246
  store i64 %248, i64* %13, align 8
  %249 = load i64, i64* %14, align 8
  %250 = load i64, i64* %7, align 8
  %251 = sub nsw i64 %250, %249
  store i64 %251, i64* %7, align 8
  br label %108

252:                                              ; preds = %108
  %253 = load i32, i32* @kernel_pmap, align 4
  %254 = call i32 @PMAP_UNLOCK(i32 %253)
  %255 = load i64, i64* %7, align 8
  %256 = icmp eq i64 %255, 0
  %257 = zext i1 %256 to i32
  %258 = call i32 @MPASS(i32 %257)
  %259 = load i64, i64* %15, align 8
  %260 = inttoptr i64 %259 to i8*
  %261 = load i8**, i8*** %8, align 8
  store i8* %260, i8** %261, align 8
  store i32 0, i32* %5, align 4
  br label %262

262:                                              ; preds = %252, %101, %34, %26
  %263 = load i32, i32* %5, align 4
  ret i32 %263
}

declare dso_local i64 @PHYS_TO_DMAP(i64) #1

declare dso_local i32 @pmap_change_attr(i64, i64, i32) #1

declare dso_local i64 @rounddown2(i64, i64) #1

declare dso_local i64 @roundup2(i64, i64) #1

declare dso_local i32 @pmap_large_map_getva(i64, i64, i64, i64*) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i64* @pmap_large_map_pdpe(i64) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @pmap_cache_bits(i32, i32, i32) #1

declare dso_local i64* @pmap_large_map_pde(i64) #1

declare dso_local %struct.TYPE_2__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @DMAP_TO_PHYS(i64) #1

declare dso_local i64* @pmap_large_map_pte(i64) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
