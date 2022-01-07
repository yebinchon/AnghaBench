; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_protect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_bucket = type { i32* }
%struct.vm_page = type { i32 }

@KTR_PMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"pmap_protect: pmap %p sva 0x%08x eva 0x%08x prot %x\00", align 1
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@pvh_global_lock = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@L2_S_PROT_W = common dso_local global i32 0, align 4
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@PVF_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_protect(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.l2_bucket*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.vm_page*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @KTR_PMAP, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @CTR4(i32 %17, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @VM_PROT_READ, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @pmap_remove(i32 %28, i32 %29, i32 %30)
  br label %189

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @VM_PROT_WRITE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %189

38:                                               ; preds = %32
  %39 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @PMAP_LOCK(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @pmap_dcache_wb_range(i32 %42, i32 %43, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = mul nsw i32 %53, 4
  %55 = icmp sge i32 %52, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 0, i32 -1
  store i32 %57, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %165, %76, %38
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %166

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @L2_NEXT_BUCKET(i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %68, %62
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call %struct.l2_bucket* @pmap_get_l2_bucket(i32 %71, i32 %72)
  store %struct.l2_bucket* %73, %struct.l2_bucket** %9, align 8
  %74 = load %struct.l2_bucket*, %struct.l2_bucket** %9, align 8
  %75 = icmp eq %struct.l2_bucket* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %6, align 4
  br label %58

78:                                               ; preds = %70
  %79 = load %struct.l2_bucket*, %struct.l2_bucket** %9, align 8
  %80 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i64 @l2pte_index(i32 %82)
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32* %84, i32** %10, align 8
  br label %85

85:                                               ; preds = %159, %78
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %165

89:                                               ; preds = %85
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %159

93:                                               ; preds = %89
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @L2_S_PROT_W, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %159

98:                                               ; preds = %93
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @l2pte_pa(i32 %99)
  %101 = call %struct.vm_page* @PHYS_TO_VM_PAGE(i32 %100)
  store %struct.vm_page* %101, %struct.vm_page** %15, align 8
  %102 = load i32, i32* @L2_S_PROT_W, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %11, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32*, i32** %10, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @PTE_SYNC(i32* %108)
  %110 = load %struct.vm_page*, %struct.vm_page** %15, align 8
  %111 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @VPO_UNMANAGED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %130, label %116

116:                                              ; preds = %98
  %117 = load %struct.vm_page*, %struct.vm_page** %15, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @PVF_WRITE, align 4
  %121 = call i32 @pmap_modify_pv(%struct.vm_page* %117, i32 %118, i32 %119, i32 %120, i32 0)
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* @PVF_WRITE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %116
  %127 = load %struct.vm_page*, %struct.vm_page** %15, align 8
  %128 = call i32 @vm_page_dirty(%struct.vm_page* %127)
  br label %129

129:                                              ; preds = %126, %116
  br label %131

130:                                              ; preds = %98
  store i32 0, i32* %16, align 4
  br label %131

131:                                              ; preds = %130, %129
  %132 = load i32, i32* %14, align 4
  %133 = icmp sge i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %13, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %13, align 4
  br label %158

140:                                              ; preds = %131
  %141 = load i32, i32* %16, align 4
  %142 = call i64 @PV_BEEN_EXECD(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @pmap_tlb_flushID_SE(i32 %145, i32 %146)
  br label %157

148:                                              ; preds = %140
  %149 = load i32, i32* %16, align 4
  %150 = call i64 @PV_BEEN_REFD(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @pmap_tlb_flushD_SE(i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %152, %148
  br label %157

157:                                              ; preds = %156, %144
  br label %158

158:                                              ; preds = %157, %134
  br label %159

159:                                              ; preds = %158, %93, %89
  %160 = load i32, i32* @PAGE_SIZE, align 4
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %6, align 4
  %163 = load i32*, i32** %10, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %10, align 8
  br label %85

165:                                              ; preds = %85
  br label %58

166:                                              ; preds = %58
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %185

169:                                              ; preds = %166
  %170 = load i32, i32* %13, align 4
  %171 = call i64 @PV_BEEN_EXECD(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @pmap_tlb_flushID(i32 %174)
  br label %184

176:                                              ; preds = %169
  %177 = load i32, i32* %13, align 4
  %178 = call i64 @PV_BEEN_REFD(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load i32, i32* %5, align 4
  %182 = call i32 @pmap_tlb_flushD(i32 %181)
  br label %183

183:                                              ; preds = %180, %176
  br label %184

184:                                              ; preds = %183, %173
  br label %185

185:                                              ; preds = %184, %166
  %186 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @PMAP_UNLOCK(i32 %187)
  br label %189

189:                                              ; preds = %185, %37, %27
  ret void
}

declare dso_local i32 @CTR4(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pmap_remove(i32, i32, i32) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32 @pmap_dcache_wb_range(i32, i32, i32, i32, i32) #1

declare dso_local i32 @L2_NEXT_BUCKET(i32) #1

declare dso_local %struct.l2_bucket* @pmap_get_l2_bucket(i32, i32) #1

declare dso_local i64 @l2pte_index(i32) #1

declare dso_local %struct.vm_page* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @l2pte_pa(i32) #1

declare dso_local i32 @PTE_SYNC(i32*) #1

declare dso_local i32 @pmap_modify_pv(%struct.vm_page*, i32, i32, i32, i32) #1

declare dso_local i32 @vm_page_dirty(%struct.vm_page*) #1

declare dso_local i64 @PV_BEEN_EXECD(i32) #1

declare dso_local i32 @pmap_tlb_flushID_SE(i32, i32) #1

declare dso_local i64 @PV_BEEN_REFD(i32) #1

declare dso_local i32 @pmap_tlb_flushD_SE(i32, i32) #1

declare dso_local i32 @pmap_tlb_flushID(i32) #1

declare dso_local i32 @pmap_tlb_flushD(i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
