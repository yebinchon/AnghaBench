; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, i32*, %struct.mem_map*, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.mem_map = type { i32 }

@VM_MAX_MEMMAPS = common dso_local global i32 0, align 4
@VM_MAX_MEMSEGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm*, i32)* @vm_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_cleanup(%struct.vm* %0, i32 %1) #0 {
  %3 = alloca %struct.vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_map*, align 8
  %6 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vm*, %struct.vm** %3, align 8
  %8 = call i32 @ppt_unassign_all(%struct.vm* %7)
  %9 = load %struct.vm*, %struct.vm** %3, align 8
  %10 = getelementptr inbounds %struct.vm, %struct.vm* %9, i32 0, i32 10
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.vm*, %struct.vm** %3, align 8
  %15 = getelementptr inbounds %struct.vm, %struct.vm* %14, i32 0, i32 10
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @iommu_destroy_domain(i32* %16)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.vm*, %struct.vm** %3, align 8
  %23 = getelementptr inbounds %struct.vm, %struct.vm* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @vrtc_cleanup(i32 %24)
  br label %31

26:                                               ; preds = %18
  %27 = load %struct.vm*, %struct.vm** %3, align 8
  %28 = getelementptr inbounds %struct.vm, %struct.vm* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @vrtc_reset(i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.vm*, %struct.vm** %3, align 8
  %33 = getelementptr inbounds %struct.vm, %struct.vm* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @vpmtmr_cleanup(i32 %34)
  %36 = load %struct.vm*, %struct.vm** %3, align 8
  %37 = getelementptr inbounds %struct.vm, %struct.vm* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @vatpit_cleanup(i32 %38)
  %40 = load %struct.vm*, %struct.vm** %3, align 8
  %41 = getelementptr inbounds %struct.vm, %struct.vm* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @vhpet_cleanup(i32 %42)
  %44 = load %struct.vm*, %struct.vm** %3, align 8
  %45 = getelementptr inbounds %struct.vm, %struct.vm* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @vatpic_cleanup(i32 %46)
  %48 = load %struct.vm*, %struct.vm** %3, align 8
  %49 = getelementptr inbounds %struct.vm, %struct.vm* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @vioapic_cleanup(i32 %50)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %63, %31
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.vm*, %struct.vm** %3, align 8
  %55 = getelementptr inbounds %struct.vm, %struct.vm* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.vm*, %struct.vm** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @vcpu_cleanup(%struct.vm* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %52

66:                                               ; preds = %52
  %67 = load %struct.vm*, %struct.vm** %3, align 8
  %68 = getelementptr inbounds %struct.vm, %struct.vm* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @VMCLEANUP(i32 %69)
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %94, %66
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @VM_MAX_MEMMAPS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %71
  %76 = load %struct.vm*, %struct.vm** %3, align 8
  %77 = getelementptr inbounds %struct.vm, %struct.vm* %76, i32 0, i32 2
  %78 = load %struct.mem_map*, %struct.mem_map** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %78, i64 %80
  store %struct.mem_map* %81, %struct.mem_map** %5, align 8
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %75
  %85 = load %struct.vm*, %struct.vm** %3, align 8
  %86 = load %struct.mem_map*, %struct.mem_map** %5, align 8
  %87 = call i32 @sysmem_mapping(%struct.vm* %85, %struct.mem_map* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %84, %75
  %90 = load %struct.vm*, %struct.vm** %3, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @vm_free_memmap(%struct.vm* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %84
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %71

97:                                               ; preds = %71
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %109, %100
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @VM_MAX_MEMSEGS, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load %struct.vm*, %struct.vm** %3, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @vm_free_memseg(%struct.vm* %106, i32 %107)
  br label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %101

112:                                              ; preds = %101
  %113 = load %struct.vm*, %struct.vm** %3, align 8
  %114 = getelementptr inbounds %struct.vm, %struct.vm* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @VMSPACE_FREE(i32* %115)
  %117 = load %struct.vm*, %struct.vm** %3, align 8
  %118 = getelementptr inbounds %struct.vm, %struct.vm* %117, i32 0, i32 1
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %112, %97
  ret void
}

declare dso_local i32 @ppt_unassign_all(%struct.vm*) #1

declare dso_local i32 @iommu_destroy_domain(i32*) #1

declare dso_local i32 @vrtc_cleanup(i32) #1

declare dso_local i32 @vrtc_reset(i32) #1

declare dso_local i32 @vpmtmr_cleanup(i32) #1

declare dso_local i32 @vatpit_cleanup(i32) #1

declare dso_local i32 @vhpet_cleanup(i32) #1

declare dso_local i32 @vatpic_cleanup(i32) #1

declare dso_local i32 @vioapic_cleanup(i32) #1

declare dso_local i32 @vcpu_cleanup(%struct.vm*, i32, i32) #1

declare dso_local i32 @VMCLEANUP(i32) #1

declare dso_local i32 @sysmem_mapping(%struct.vm*, %struct.mem_map*) #1

declare dso_local i32 @vm_free_memmap(%struct.vm*, i32) #1

declare dso_local i32 @vm_free_memseg(%struct.vm*, i32) #1

declare dso_local i32 @VMSPACE_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
