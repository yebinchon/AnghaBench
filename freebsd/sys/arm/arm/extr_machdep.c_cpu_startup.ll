; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep.c_cpu_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep.c_cpu_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.pcb* }
%struct.pcb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@thread0 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@kmi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"real memory  = %ju (%ju MB)\0A\00", align 1
@realmem = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"avail memory = %ju (%ju MB)\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@USPACE_SVC_STACK_TOP = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@ARM_TP_ADDRESS = common dso_local global i32 0, align 4
@ARM_RAS_START = common dso_local global i64 0, align 8
@ARM_RAS_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cpu_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_startup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load %struct.pcb*, %struct.pcb** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @thread0, i32 0, i32 1), align 8
  store %struct.pcb* %6, %struct.pcb** %3, align 8
  store i32 1048576, i32* %4, align 4
  %7 = call i32 (...) @identify_arm_cpu()
  %8 = call i32 @vm_ksubmap_init(i32* @kmi)
  %9 = load i32, i32* @realmem, align 4
  %10 = call i64 @arm32_ptob(i32 %9)
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @realmem, align 4
  %13 = call i64 @arm32_ptob(i32 %12)
  %14 = trunc i64 %13 to i32
  %15 = udiv i32 %14, 1048576
  %16 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15)
  %17 = call i32 (...) @vm_free_count()
  %18 = call i64 @arm32_ptob(i32 %17)
  %19 = trunc i64 %18 to i32
  %20 = call i32 (...) @vm_free_count()
  %21 = call i64 @arm32_ptob(i32 %20)
  %22 = trunc i64 %21 to i32
  %23 = udiv i32 %22, 1048576
  %24 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %23)
  %25 = load i64, i64* @bootverbose, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = call i32 (...) @arm_physmem_print_tables()
  %29 = call i32 (...) @devmap_print_table()
  br label %30

30:                                               ; preds = %27, %1
  %31 = call i32 (...) @bufinit()
  %32 = call i32 (...) @vm_pager_bufferinit()
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @thread0, i32 0, i32 0), align 8
  %34 = load i64, i64* @USPACE_SVC_STACK_TOP, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.pcb*, %struct.pcb** %3, align 8
  %37 = getelementptr inbounds %struct.pcb, %struct.pcb* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  %39 = load i32, i32* @kernel_pmap, align 4
  %40 = load %struct.pcb*, %struct.pcb** %3, align 8
  %41 = call i32 @pmap_set_pcb_pagedir(i32 %39, %struct.pcb* %40)
  %42 = load i32, i32* @VM_PROT_READ, align 4
  %43 = call i32 @vector_page_setprot(i32 %42)
  %44 = call i32 (...) @pmap_postinit()
  %45 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %46 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @vm_page_alloc(i32* null, i32 0, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @ARM_TP_ADDRESS, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @VM_PAGE_TO_PHYS(i32 %50)
  %52 = call i32 @pmap_kenter_user(i32 %49, i32 %51)
  %53 = load i64, i64* @ARM_RAS_START, align 8
  %54 = inttoptr i64 %53 to i32*
  store i32 0, i32* %54, align 4
  %55 = load i64, i64* @ARM_RAS_END, align 8
  %56 = inttoptr i64 %55 to i32*
  store i32 -1, i32* %56, align 4
  ret void
}

declare dso_local i32 @identify_arm_cpu(...) #1

declare dso_local i32 @vm_ksubmap_init(i32*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i64 @arm32_ptob(i32) #1

declare dso_local i32 @vm_free_count(...) #1

declare dso_local i32 @arm_physmem_print_tables(...) #1

declare dso_local i32 @devmap_print_table(...) #1

declare dso_local i32 @bufinit(...) #1

declare dso_local i32 @vm_pager_bufferinit(...) #1

declare dso_local i32 @pmap_set_pcb_pagedir(i32, %struct.pcb*) #1

declare dso_local i32 @vector_page_setprot(i32) #1

declare dso_local i32 @pmap_postinit(...) #1

declare dso_local i32 @vm_page_alloc(i32*, i32, i32) #1

declare dso_local i32 @pmap_kenter_user(i32, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
