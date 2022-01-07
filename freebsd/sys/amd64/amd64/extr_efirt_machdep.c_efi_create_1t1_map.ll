; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_efirt_machdep.c_efi_create_1t1_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_efirt_machdep.c_efi_create_1t1_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_md = type { i32, i32, i32, i32* }

@OBJT_PHYS = common dso_local global i32 0, align 4
@NPML4EPG = common dso_local global i32 0, align 4
@NPDPEPG = common dso_local global i32 0, align 4
@NPDEPG = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@obj_1t1_pt = common dso_local global i32 0, align 4
@efi_1t1_idx = common dso_local global i64 0, align 8
@efi_pml4_page = common dso_local global i32 0, align 4
@efi_pml4 = common dso_local global i32* null, align 8
@EFI_MD_ATTR_RT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"EFI Runtime entry %d is mapped\0A\00", align 1
@EFI_PAGE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"EFI Runtime entry %d is not aligned\0A\00", align 1
@EFI_PAGE_SIZE = common dso_local global i32 0, align 4
@VM_MAXUSER_ADDRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"EFI Runtime entry %d is not in mappable for RT:base %#016jx %#jx pages\0A\00", align 1
@EFI_MD_ATTR_WB = common dso_local global i32 0, align 4
@VM_MEMATTR_WRITE_BACK = common dso_local global i32 0, align 4
@EFI_MD_ATTR_WT = common dso_local global i32 0, align 4
@VM_MEMATTR_WRITE_THROUGH = common dso_local global i32 0, align 4
@EFI_MD_ATTR_WC = common dso_local global i32 0, align 4
@VM_MEMATTR_WRITE_COMBINING = common dso_local global i32 0, align 4
@EFI_MD_ATTR_WP = common dso_local global i32 0, align 4
@VM_MEMATTR_WRITE_PROTECTED = common dso_local global i32 0, align 4
@EFI_MD_ATTR_UC = common dso_local global i32 0, align 4
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"EFI Runtime entry %d mapping attributes unsupported\0A\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_create_1t1_map(%struct.efi_md* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efi_md*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.efi_md*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.efi_md* %0, %struct.efi_md** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @OBJT_PHYS, align 4
  %16 = load i32, i32* @NPML4EPG, align 4
  %17 = add nsw i32 1, %16
  %18 = load i32, i32* @NPML4EPG, align 4
  %19 = load i32, i32* @NPDPEPG, align 4
  %20 = mul nsw i32 %18, %19
  %21 = add nsw i32 %17, %20
  %22 = load i32, i32* @NPML4EPG, align 4
  %23 = load i32, i32* @NPDPEPG, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* @NPDEPG, align 4
  %26 = mul nsw i32 %24, %25
  %27 = add nsw i32 %21, %26
  %28 = call i32 @ptoa(i32 %27)
  %29 = load i32, i32* @VM_PROT_ALL, align 4
  %30 = call i32 @vm_pager_allocate(i32 %15, i32* null, i32 %28, i32 %29, i32 0, i32* null)
  store i32 %30, i32* @obj_1t1_pt, align 4
  store i64 0, i64* @efi_1t1_idx, align 8
  %31 = load i32, i32* @obj_1t1_pt, align 4
  %32 = call i32 @VM_OBJECT_WLOCK(i32 %31)
  %33 = call i32 (...) @efi_1t1_page()
  store i32 %33, i32* @efi_pml4_page, align 4
  %34 = load i32, i32* @obj_1t1_pt, align 4
  %35 = call i32 @VM_OBJECT_WUNLOCK(i32 %34)
  %36 = load i32, i32* @efi_pml4_page, align 4
  %37 = call i32 @VM_PAGE_TO_PHYS(i32 %36)
  %38 = call i64 @PHYS_TO_DMAP(i32 %37)
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** @efi_pml4, align 8
  %40 = load i32, i32* @efi_pml4_page, align 4
  %41 = call i32 @pmap_pinit_pml4(i32 %40)
  store i32 0, i32* %13, align 4
  %42 = load %struct.efi_md*, %struct.efi_md** %5, align 8
  store %struct.efi_md* %42, %struct.efi_md** %8, align 8
  br label %43

43:                                               ; preds = %221, %3
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %227

47:                                               ; preds = %43
  %48 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %49 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @EFI_MD_ATTR_RT, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %221

55:                                               ; preds = %47
  %56 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %57 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %62 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = ptrtoint i32* %63 to i32
  %65 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %66 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load i64, i64* @bootverbose, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %13, align 4
  %74 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %69
  br label %228

76:                                               ; preds = %60, %55
  %77 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %78 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @EFI_PAGE_MASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load i64, i64* @bootverbose, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %13, align 4
  %88 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %86, %83
  br label %228

90:                                               ; preds = %76
  %91 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %92 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %95 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @EFI_PAGE_SIZE, align 4
  %98 = mul nsw i32 %96, %97
  %99 = add nsw i32 %93, %98
  %100 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %101 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %116, label %104

104:                                              ; preds = %90
  %105 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %106 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %109 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @EFI_PAGE_SIZE, align 4
  %112 = mul nsw i32 %110, %111
  %113 = add nsw i32 %107, %112
  %114 = load i32, i32* @VM_MAXUSER_ADDRESS, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %104, %90
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %119 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %122 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %120, i32 %123)
  br label %228

125:                                              ; preds = %104
  %126 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %127 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @EFI_MD_ATTR_WB, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* @VM_MEMATTR_WRITE_BACK, align 4
  store i32 %133, i32* %14, align 4
  br label %182

134:                                              ; preds = %125
  %135 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %136 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @EFI_MD_ATTR_WT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i32, i32* @VM_MEMATTR_WRITE_THROUGH, align 4
  store i32 %142, i32* %14, align 4
  br label %181

143:                                              ; preds = %134
  %144 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %145 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @EFI_MD_ATTR_WC, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = load i32, i32* @VM_MEMATTR_WRITE_COMBINING, align 4
  store i32 %151, i32* %14, align 4
  br label %180

152:                                              ; preds = %143
  %153 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %154 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @EFI_MD_ATTR_WP, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = load i32, i32* @VM_MEMATTR_WRITE_PROTECTED, align 4
  store i32 %160, i32* %14, align 4
  br label %179

161:                                              ; preds = %152
  %162 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %163 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @EFI_MD_ATTR_UC, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  store i32 %169, i32* %14, align 4
  br label %178

170:                                              ; preds = %161
  %171 = load i64, i64* @bootverbose, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32, i32* %13, align 4
  %175 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  store i32 %177, i32* %14, align 4
  br label %178

178:                                              ; preds = %176, %168
  br label %179

179:                                              ; preds = %178, %159
  br label %180

180:                                              ; preds = %179, %150
  br label %181

181:                                              ; preds = %180, %141
  br label %182

182:                                              ; preds = %181, %132
  %183 = load i32, i32* @kernel_pmap, align 4
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* @FALSE, align 4
  %186 = call i32 @pmap_cache_bits(i32 %183, i32 %184, i32 %185)
  %187 = load i32, i32* @X86_PG_RW, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @X86_PG_V, align 4
  %190 = or i32 %188, %189
  store i32 %190, i32* %12, align 4
  %191 = load i32, i32* @obj_1t1_pt, align 4
  %192 = call i32 @VM_OBJECT_WLOCK(i32 %191)
  %193 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %194 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %196

196:                                              ; preds = %210, %182
  %197 = load i32, i32* %11, align 4
  %198 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %199 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %218

202:                                              ; preds = %196
  %203 = load i32, i32* %10, align 4
  %204 = call i32* @efi_1t1_pte(i32 %203)
  store i32* %204, i32** %9, align 8
  %205 = load i32*, i32** %9, align 8
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %12, align 4
  %208 = or i32 %206, %207
  %209 = call i32 @pte_store(i32* %205, i32 %208)
  br label %210

210:                                              ; preds = %202
  %211 = load i32, i32* %11, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %11, align 4
  %213 = load i64, i64* @PAGE_SIZE, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %215, %213
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %10, align 4
  br label %196

218:                                              ; preds = %196
  %219 = load i32, i32* @obj_1t1_pt, align 4
  %220 = call i32 @VM_OBJECT_WUNLOCK(i32 %219)
  br label %221

221:                                              ; preds = %218, %54
  %222 = load i32, i32* %13, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %13, align 4
  %224 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %225 = load i32, i32* %7, align 4
  %226 = call %struct.efi_md* @efi_next_descriptor(%struct.efi_md* %224, i32 %225)
  store %struct.efi_md* %226, %struct.efi_md** %8, align 8
  br label %43

227:                                              ; preds = %43
  store i32 1, i32* %4, align 4
  br label %230

228:                                              ; preds = %116, %89, %75
  %229 = call i32 (...) @efi_destroy_1t1_map()
  store i32 0, i32* %4, align 4
  br label %230

230:                                              ; preds = %228, %227
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local i32 @vm_pager_allocate(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @ptoa(i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i32 @efi_1t1_page(...) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @pmap_pinit_pml4(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @pmap_cache_bits(i32, i32, i32) #1

declare dso_local i32* @efi_1t1_pte(i32) #1

declare dso_local i32 @pte_store(i32*, i32) #1

declare dso_local %struct.efi_md* @efi_next_descriptor(%struct.efi_md*, i32) #1

declare dso_local i32 @efi_destroy_1t1_map(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
