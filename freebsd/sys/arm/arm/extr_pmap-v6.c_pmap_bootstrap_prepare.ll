; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_bootstrap_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_bootstrap_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_paddr = common dso_local global i32 0, align 4
@NPG_IN_PT1 = common dso_local global i64 0, align 8
@base_pt1 = common dso_local global i64 0, align 8
@kern_pt1 = common dso_local global i32* null, align 8
@NB_IN_PT1 = common dso_local global i64 0, align 8
@NPG_IN_PT2TAB = common dso_local global i64 0, align 8
@kern_pt2tab = common dso_local global i8* null, align 8
@NB_IN_PT2TAB = common dso_local global i64 0, align 8
@NKPT2PG = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@KERNBASE = common dso_local global i64 0, align 8
@PTE2_SIZE = common dso_local global i64 0, align 8
@NB_IN_PT2 = common dso_local global i64 0, align 8
@PTE2_ATTR_DEFAULT = common dso_local global i32 0, align 4
@PTE1_AP_KRW = common dso_local global i32 0, align 4
@PTE1_SIZE = common dso_local global i64 0, align 8
@PT2MAP_SIZE = common dso_local global i64 0, align 8
@PT2MAP = common dso_local global i8* null, align 8
@NPT2_IN_PT2TAB = common dso_local global i64 0, align 8
@ttb_flags = common dso_local global i64 0, align 8
@pmap_kern_ttb = common dso_local global i64 0, align 8
@virtual_avail = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_bootstrap_prepare(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @pte1_roundup(i64 %12)
  store i32 %13, i32* @last_paddr, align 4
  %14 = load i64, i64* @NPG_IN_PT1, align 8
  %15 = call i64 @pmap_preboot_get_pages(i64 %14)
  store i64 %15, i64* @base_pt1, align 8
  %16 = load i64, i64* @base_pt1, align 8
  %17 = call i64 @KERNEL_P2V(i64 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** @kern_pt1, align 8
  %19 = load i32*, i32** @kern_pt1, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = load i64, i64* @NB_IN_PT1, align 8
  %22 = call i32 @bzero(i8* %20, i64 %21)
  %23 = load i32*, i32** @kern_pt1, align 8
  %24 = load i64, i64* @NB_IN_PT1, align 8
  %25 = call i32 @pte1_sync_range(i32* %23, i64 %24)
  %26 = load i64, i64* @NPG_IN_PT2TAB, align 8
  %27 = call i64 @pmap_preboot_get_pages(i64 %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @KERNEL_P2V(i64 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** @kern_pt2tab, align 8
  %31 = load i8*, i8** @kern_pt2tab, align 8
  %32 = load i64, i64* @NB_IN_PT2TAB, align 8
  %33 = call i32 @bzero(i8* %31, i64 %32)
  %34 = load i8*, i8** @kern_pt2tab, align 8
  %35 = load i64, i64* @NB_IN_PT2TAB, align 8
  %36 = call i32 @pte2_sync_range(i8* %34, i64 %35)
  %37 = load i64, i64* @NKPT2PG, align 8
  %38 = call i64 @pmap_preboot_get_pages(i64 %37)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = call i64 @KERNEL_P2V(i64 %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* @NKPT2PG, align 8
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = mul nsw i64 %41, %42
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @bzero(i8* %45, i64 %46)
  %48 = load i64, i64* %7, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @pte2_sync_range(i8* %49, i64 %50)
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @pmap_preboot_get_pages(i64 0)
  %54 = call i32 @vm_phys_add_seg(i64 %52, i64 %53)
  %55 = load i64, i64* @KERNBASE, align 8
  %56 = call i8* @kern_pt2tab_entry(i64 %55)
  store i8* %56, i8** %9, align 8
  %57 = load i64, i64* %3, align 8
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %71, %1
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* %6, align 8
  %62 = add nsw i64 %60, %61
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %9, align 8
  %67 = ptrtoint i8* %65 to i32
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @PTE2_KPT(i64 %68)
  %70 = call i32 @pt2tab_store(i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %64
  %72 = load i64, i64* @PTE2_SIZE, align 8
  %73 = load i64, i64* %5, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %5, align 8
  br label %58

75:                                               ; preds = %58
  %76 = load i64, i64* @KERNBASE, align 8
  %77 = call i32* @kern_pte1(i64 %76)
  store i32* %77, i32** %8, align 8
  %78 = load i64, i64* %3, align 8
  store i64 %78, i64* %5, align 8
  br label %79

79:                                               ; preds = %92, %75
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* %6, align 8
  %83 = add nsw i64 %81, %82
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %79
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %8, align 8
  %88 = ptrtoint i32* %86 to i32
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @PTE1_LINK(i64 %89)
  %91 = call i32 @pte1_store(i32 %88, i32 %90)
  br label %92

92:                                               ; preds = %85
  %93 = load i64, i64* @NB_IN_PT2, align 8
  %94 = load i64, i64* %5, align 8
  %95 = add nsw i64 %94, %93
  store i64 %95, i64* %5, align 8
  br label %79

96:                                               ; preds = %79
  %97 = load i32, i32* @PTE2_ATTR_DEFAULT, align 4
  %98 = call i32 @ATTR_TO_L1(i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i64, i64* @KERNBASE, align 8
  %100 = call i32* @kern_pte1(i64 %99)
  store i32* %100, i32** %8, align 8
  %101 = load i64, i64* @KERNBASE, align 8
  %102 = call i64 @KERNEL_V2P(i64 %101)
  store i64 %102, i64* %5, align 8
  br label %103

103:                                              ; preds = %116, %96
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* %2, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %8, align 8
  %110 = ptrtoint i32* %108 to i32
  %111 = load i64, i64* %5, align 8
  %112 = load i32, i32* @PTE1_AP_KRW, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @PTE1_KERN(i64 %111, i32 %112, i32 %113)
  %115 = call i32 @pte1_store(i32 %110, i32 %114)
  br label %116

116:                                              ; preds = %107
  %117 = load i64, i64* @PTE1_SIZE, align 8
  %118 = load i64, i64* %5, align 8
  %119 = add nsw i64 %118, %117
  store i64 %119, i64* %5, align 8
  br label %103

120:                                              ; preds = %103
  %121 = load i64, i64* @KERNBASE, align 8
  %122 = load i64, i64* @PT2MAP_SIZE, align 8
  %123 = sub nsw i64 %121, %122
  %124 = inttoptr i64 %123 to i8*
  store i8* %124, i8** @PT2MAP, align 8
  %125 = load i8*, i8** @PT2MAP, align 8
  %126 = ptrtoint i8* %125 to i64
  %127 = call i32* @kern_pte1(i64 %126)
  store i32* %127, i32** %8, align 8
  %128 = load i64, i64* %4, align 8
  store i64 %128, i64* %5, align 8
  store i64 0, i64* %10, align 8
  br label %129

129:                                              ; preds = %140, %120
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* @NPT2_IN_PT2TAB, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load i32*, i32** %8, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %8, align 8
  %136 = ptrtoint i32* %134 to i32
  %137 = load i64, i64* %5, align 8
  %138 = call i32 @PTE1_LINK(i64 %137)
  %139 = call i32 @pte1_store(i32 %136, i32 %138)
  br label %140

140:                                              ; preds = %133
  %141 = load i64, i64* %10, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %10, align 8
  %143 = load i64, i64* @NB_IN_PT2, align 8
  %144 = load i64, i64* %5, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %5, align 8
  br label %129

146:                                              ; preds = %129
  %147 = load i8*, i8** @PT2MAP, align 8
  %148 = ptrtoint i8* %147 to i64
  %149 = call i8* @kern_pt2tab_entry(i64 %148)
  store i8* %149, i8** %9, align 8
  %150 = load i64, i64* %4, align 8
  store i64 %150, i64* %5, align 8
  store i64 0, i64* %10, align 8
  br label %151

151:                                              ; preds = %162, %146
  %152 = load i64, i64* %10, align 8
  %153 = load i64, i64* @NPG_IN_PT2TAB, align 8
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %151
  %156 = load i8*, i8** %9, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %9, align 8
  %158 = ptrtoint i8* %156 to i32
  %159 = load i64, i64* %5, align 8
  %160 = call i32 @PTE2_KPT_NG(i64 %159)
  %161 = call i32 @pt2tab_store(i32 %158, i32 %160)
  br label %162

162:                                              ; preds = %155
  %163 = load i64, i64* %10, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %10, align 8
  %165 = load i64, i64* @PTE2_SIZE, align 8
  %166 = load i64, i64* %5, align 8
  %167 = add nsw i64 %166, %165
  store i64 %167, i64* %5, align 8
  br label %151

168:                                              ; preds = %151
  %169 = load i32*, i32** @kern_pt1, align 8
  %170 = ptrtoint i32* %169 to i64
  %171 = call i8* @kern_pt2tab_entry(i64 %170)
  store i8* %171, i8** %9, align 8
  %172 = load i8*, i8** %9, align 8
  %173 = call i32 @pte2_load(i8* %172)
  %174 = call i64 @pte2_pa(i32 %173)
  %175 = call i64 @KERNEL_P2V(i64 %174)
  store i64 %175, i64* %7, align 8
  %176 = load i64, i64* %7, align 8
  %177 = load i32*, i32** @kern_pt1, align 8
  %178 = ptrtoint i32* %177 to i64
  %179 = call i32 @pte1_index(i64 %178)
  %180 = call i8* @page_pt2(i64 %176, i32 %179)
  store i8* %180, i8** %9, align 8
  %181 = load i64, i64* @base_pt1, align 8
  store i64 %181, i64* %5, align 8
  store i64 0, i64* %10, align 8
  br label %182

182:                                              ; preds = %193, %168
  %183 = load i64, i64* %10, align 8
  %184 = load i64, i64* @NPG_IN_PT1, align 8
  %185 = icmp slt i64 %183, %184
  br i1 %185, label %186, label %199

186:                                              ; preds = %182
  %187 = load i8*, i8** %9, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %9, align 8
  %189 = ptrtoint i8* %187 to i32
  %190 = load i64, i64* %5, align 8
  %191 = call i32 @PTE2_KPT(i64 %190)
  %192 = call i32 @pte2_store(i32 %189, i32 %191)
  br label %193

193:                                              ; preds = %186
  %194 = load i64, i64* %10, align 8
  %195 = add nsw i64 %194, 1
  store i64 %195, i64* %10, align 8
  %196 = load i64, i64* @PTE2_SIZE, align 8
  %197 = load i64, i64* %5, align 8
  %198 = add nsw i64 %197, %196
  store i64 %198, i64* %5, align 8
  br label %182

199:                                              ; preds = %182
  %200 = load i64, i64* %4, align 8
  store i64 %200, i64* %5, align 8
  store i64 0, i64* %10, align 8
  br label %201

201:                                              ; preds = %212, %199
  %202 = load i64, i64* %10, align 8
  %203 = load i64, i64* @NPG_IN_PT2TAB, align 8
  %204 = icmp slt i64 %202, %203
  br i1 %204, label %205, label %218

205:                                              ; preds = %201
  %206 = load i8*, i8** %9, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %9, align 8
  %208 = ptrtoint i8* %206 to i32
  %209 = load i64, i64* %5, align 8
  %210 = call i32 @PTE2_KPT(i64 %209)
  %211 = call i32 @pte2_store(i32 %208, i32 %210)
  br label %212

212:                                              ; preds = %205
  %213 = load i64, i64* %10, align 8
  %214 = add nsw i64 %213, 1
  store i64 %214, i64* %10, align 8
  %215 = load i64, i64* @PTE2_SIZE, align 8
  %216 = load i64, i64* %5, align 8
  %217 = add nsw i64 %216, %215
  store i64 %217, i64* %5, align 8
  br label %201

218:                                              ; preds = %201
  %219 = load i64, i64* @base_pt1, align 8
  %220 = load i64, i64* @ttb_flags, align 8
  %221 = or i64 %219, %220
  store i64 %221, i64* @pmap_kern_ttb, align 8
  %222 = load i64, i64* @pmap_kern_ttb, align 8
  %223 = call i32 @cpuinfo_reinit_mmu(i64 %222)
  %224 = load i8*, i8** @kern_pt2tab, align 8
  %225 = ptrtoint i8* %224 to i64
  %226 = load i64, i64* @NPG_IN_PT2TAB, align 8
  %227 = load i64, i64* @PAGE_SIZE, align 8
  %228 = mul nsw i64 %226, %227
  %229 = add nsw i64 %225, %228
  store i64 %229, i64* @virtual_avail, align 8
  ret void
}

declare dso_local i32 @pte1_roundup(i64) #1

declare dso_local i64 @pmap_preboot_get_pages(i64) #1

declare dso_local i64 @KERNEL_P2V(i64) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i32 @pte1_sync_range(i32*, i64) #1

declare dso_local i32 @pte2_sync_range(i8*, i64) #1

declare dso_local i32 @vm_phys_add_seg(i64, i64) #1

declare dso_local i8* @kern_pt2tab_entry(i64) #1

declare dso_local i32 @pt2tab_store(i32, i32) #1

declare dso_local i32 @PTE2_KPT(i64) #1

declare dso_local i32* @kern_pte1(i64) #1

declare dso_local i32 @pte1_store(i32, i32) #1

declare dso_local i32 @PTE1_LINK(i64) #1

declare dso_local i32 @ATTR_TO_L1(i32) #1

declare dso_local i64 @KERNEL_V2P(i64) #1

declare dso_local i32 @PTE1_KERN(i64, i32, i32) #1

declare dso_local i32 @PTE2_KPT_NG(i64) #1

declare dso_local i64 @pte2_pa(i32) #1

declare dso_local i32 @pte2_load(i8*) #1

declare dso_local i8* @page_pt2(i64, i32) #1

declare dso_local i32 @pte1_index(i64) #1

declare dso_local i32 @pte2_store(i32, i32) #1

declare dso_local i32 @cpuinfo_reinit_mmu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
