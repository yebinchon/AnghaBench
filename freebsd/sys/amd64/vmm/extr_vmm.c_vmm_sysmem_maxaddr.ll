; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vmm_sysmem_maxaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vmm_sysmem_maxaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { %struct.mem_map* }
%struct.mem_map = type { i64, i64 }

@VM_MAX_MEMMAPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vmm_sysmem_maxaddr(%struct.vm* %0) #0 {
  %2 = alloca %struct.vm*, align 8
  %3 = alloca %struct.mem_map*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %2, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %41, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @VM_MAX_MEMMAPS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %44

10:                                               ; preds = %6
  %11 = load %struct.vm*, %struct.vm** %2, align 8
  %12 = getelementptr inbounds %struct.vm, %struct.vm* %11, i32 0, i32 0
  %13 = load %struct.mem_map*, %struct.mem_map** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %13, i64 %15
  store %struct.mem_map* %16, %struct.mem_map** %3, align 8
  %17 = load %struct.vm*, %struct.vm** %2, align 8
  %18 = load %struct.mem_map*, %struct.mem_map** %3, align 8
  %19 = call i64 @sysmem_mapping(%struct.vm* %17, %struct.mem_map* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %10
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.mem_map*, %struct.mem_map** %3, align 8
  %24 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.mem_map*, %struct.mem_map** %3, align 8
  %27 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = icmp slt i64 %22, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load %struct.mem_map*, %struct.mem_map** %3, align 8
  %33 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.mem_map*, %struct.mem_map** %3, align 8
  %36 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %31, %21
  br label %40

40:                                               ; preds = %39, %10
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %6

44:                                               ; preds = %6
  %45 = load i64, i64* %4, align 8
  ret i64 %45
}

declare dso_local i64 @sysmem_mapping(%struct.vm*, %struct.mem_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
