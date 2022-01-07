; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_iommu_modify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_iommu_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i8*, %struct.mem_map* }
%struct.mem_map = type { i32, i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_MAX_MEMMAPS = common dso_local global i32 0, align 4
@VM_MEMMAP_F_IOMMU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"iommu map found invalid memmap %#lx/%#lx/%#x\00", align 1
@VM_MEMMAP_F_WIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"iommu unmap found invalid memmap %#lx/%#lx/%#x\00", align 1
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"vm(%s) could not map gpa %#lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm*, i32)* @vm_iommu_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_iommu_modify(%struct.vm* %0, i32 %1) #0 {
  %3 = alloca %struct.vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mem_map*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.vm* %0, %struct.vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %13, i32* %6, align 4
  %14 = call i8* (...) @iommu_host_domain()
  store i8* %14, i8** %12, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %166, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @VM_MAX_MEMMAPS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %169

19:                                               ; preds = %15
  %20 = load %struct.vm*, %struct.vm** %3, align 8
  %21 = getelementptr inbounds %struct.vm, %struct.vm* %20, i32 0, i32 1
  %22 = load %struct.mem_map*, %struct.mem_map** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %22, i64 %24
  store %struct.mem_map* %25, %struct.mem_map** %9, align 8
  %26 = load %struct.vm*, %struct.vm** %3, align 8
  %27 = load %struct.mem_map*, %struct.mem_map** %9, align 8
  %28 = call i32 @sysmem_mapping(%struct.vm* %26, %struct.mem_map* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %166

31:                                               ; preds = %19
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %31
  %35 = load %struct.mem_map*, %struct.mem_map** %9, align 8
  %36 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @VM_MEMMAP_F_IOMMU, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load %struct.mem_map*, %struct.mem_map** %9, align 8
  %43 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mem_map*, %struct.mem_map** %9, align 8
  %46 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.mem_map*, %struct.mem_map** %9, align 8
  %49 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @KASSERT(i32 %41, i8* %52)
  %54 = load %struct.mem_map*, %struct.mem_map** %9, align 8
  %55 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @VM_MEMMAP_F_WIRED, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %34
  br label %166

61:                                               ; preds = %34
  %62 = load i32, i32* @VM_MEMMAP_F_IOMMU, align 4
  %63 = load %struct.mem_map*, %struct.mem_map** %9, align 8
  %64 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %101

67:                                               ; preds = %31
  %68 = load %struct.mem_map*, %struct.mem_map** %9, align 8
  %69 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @VM_MEMMAP_F_IOMMU, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %166

75:                                               ; preds = %67
  %76 = load i32, i32* @VM_MEMMAP_F_IOMMU, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.mem_map*, %struct.mem_map** %9, align 8
  %79 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.mem_map*, %struct.mem_map** %9, align 8
  %83 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @VM_MEMMAP_F_WIRED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = load %struct.mem_map*, %struct.mem_map** %9, align 8
  %90 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.mem_map*, %struct.mem_map** %9, align 8
  %93 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.mem_map*, %struct.mem_map** %9, align 8
  %96 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @KASSERT(i32 %88, i8* %99)
  br label %101

101:                                              ; preds = %75, %61
  %102 = load %struct.mem_map*, %struct.mem_map** %9, align 8
  %103 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %7, align 8
  br label %105

105:                                              ; preds = %160, %101
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.mem_map*, %struct.mem_map** %9, align 8
  %108 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.mem_map*, %struct.mem_map** %9, align 8
  %111 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = icmp slt i64 %106, %113
  br i1 %114, label %115, label %165

115:                                              ; preds = %105
  %116 = load %struct.vm*, %struct.vm** %3, align 8
  %117 = load i64, i64* %7, align 8
  %118 = load i32, i32* @PAGE_SIZE, align 4
  %119 = load i32, i32* @VM_PROT_WRITE, align 4
  %120 = call i8* @vm_gpa_hold(%struct.vm* %116, i32 -1, i64 %117, i32 %118, i32 %119, i8** %11)
  store i8* %120, i8** %10, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = icmp ne i8* %121, null
  %123 = zext i1 %122 to i32
  %124 = load %struct.vm*, %struct.vm** %3, align 8
  %125 = call i32 @vm_name(%struct.vm* %124)
  %126 = load i64, i64* %7, align 8
  %127 = inttoptr i64 %126 to i8*
  %128 = call i32 @KASSERT(i32 %123, i8* %127)
  %129 = load i8*, i8** %11, align 8
  %130 = call i32 @vm_gpa_release(i8* %129)
  %131 = load i8*, i8** %10, align 8
  %132 = ptrtoint i8* %131 to i64
  %133 = call i64 @DMAP_TO_PHYS(i64 %132)
  store i64 %133, i64* %8, align 8
  %134 = load i32, i32* %4, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %115
  %137 = load %struct.vm*, %struct.vm** %3, align 8
  %138 = getelementptr inbounds %struct.vm, %struct.vm* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i64, i64* %7, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @iommu_create_mapping(i8* %139, i64 %140, i64 %141, i32 %142)
  %144 = load i8*, i8** %12, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @iommu_remove_mapping(i8* %144, i64 %145, i32 %146)
  br label %160

148:                                              ; preds = %115
  %149 = load %struct.vm*, %struct.vm** %3, align 8
  %150 = getelementptr inbounds %struct.vm, %struct.vm* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = load i64, i64* %7, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @iommu_remove_mapping(i8* %151, i64 %152, i32 %153)
  %155 = load i8*, i8** %12, align 8
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* %8, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @iommu_create_mapping(i8* %155, i64 %156, i64 %157, i32 %158)
  br label %160

160:                                              ; preds = %148, %136
  %161 = load i32, i32* @PAGE_SIZE, align 4
  %162 = sext i32 %161 to i64
  %163 = load i64, i64* %7, align 8
  %164 = add nsw i64 %163, %162
  store i64 %164, i64* %7, align 8
  br label %105

165:                                              ; preds = %105
  br label %166

166:                                              ; preds = %165, %74, %60, %30
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  br label %15

169:                                              ; preds = %15
  %170 = load i32, i32* %4, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i8*, i8** %12, align 8
  %174 = call i32 @iommu_invalidate_tlb(i8* %173)
  br label %180

175:                                              ; preds = %169
  %176 = load %struct.vm*, %struct.vm** %3, align 8
  %177 = getelementptr inbounds %struct.vm, %struct.vm* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @iommu_invalidate_tlb(i8* %178)
  br label %180

180:                                              ; preds = %175, %172
  ret void
}

declare dso_local i8* @iommu_host_domain(...) #1

declare dso_local i32 @sysmem_mapping(%struct.vm*, %struct.mem_map*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i8* @vm_gpa_hold(%struct.vm*, i32, i64, i32, i32, i8**) #1

declare dso_local i32 @vm_name(%struct.vm*) #1

declare dso_local i32 @vm_gpa_release(i8*) #1

declare dso_local i64 @DMAP_TO_PHYS(i64) #1

declare dso_local i32 @iommu_create_mapping(i8*, i64, i64, i32) #1

declare dso_local i32 @iommu_remove_mapping(i8*, i64, i32) #1

declare dso_local i32 @iommu_invalidate_tlb(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
