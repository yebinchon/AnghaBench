; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_grow_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_grow_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_bucket = type { i32* }
%struct.vm_page = type { i32 }

@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@L2_S_PROTO = common dso_local global i32 0, align 4
@PTE_KERNEL = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @pmap_grow_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_grow_map(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.l2_bucket*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vm_page*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %13 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.vm_page* @vm_page_alloc(i32* null, i32 0, i32 %14)
  store %struct.vm_page* %15, %struct.vm_page** %11, align 8
  %16 = load %struct.vm_page*, %struct.vm_page** %11, align 8
  %17 = icmp eq %struct.vm_page* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %51

19:                                               ; preds = %3
  %20 = load %struct.vm_page*, %struct.vm_page** %11, align 8
  %21 = call i32 @VM_PAGE_TO_PHYS(%struct.vm_page* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %10, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* @kernel_pmap, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.l2_bucket* @pmap_get_l2_bucket(i32 %28, i32 %29)
  store %struct.l2_bucket* %30, %struct.l2_bucket** %8, align 8
  %31 = load %struct.l2_bucket*, %struct.l2_bucket** %8, align 8
  %32 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @l2pte_index(i32 %34)
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %9, align 8
  %37 = load i32, i32* @L2_S_PROTO, align 4
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @PTE_KERNEL, align 4
  %43 = load i32, i32* @VM_PROT_READ, align 4
  %44 = load i32, i32* @VM_PROT_WRITE, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @L2_S_PROT(i32 %42, i32 %45)
  %47 = or i32 %41, %46
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @PTE_SYNC(i32* %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %27, %18
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.vm_page* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.vm_page*) #1

declare dso_local %struct.l2_bucket* @pmap_get_l2_bucket(i32, i32) #1

declare dso_local i64 @l2pte_index(i32) #1

declare dso_local i32 @L2_S_PROT(i32, i32) #1

declare dso_local i32 @PTE_SYNC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
