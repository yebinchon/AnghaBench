; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v4.c_busdma_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v4.c_busdma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_WAITOK = common dso_local global i32 0, align 4
@maploads_total = common dso_local global i8* null, align 8
@maploads_bounced = common dso_local global i8* null, align 8
@maploads_coherent = common dso_local global i8* null, align 8
@maploads_dmamem = common dso_local global i8* null, align 8
@maploads_mbuf = common dso_local global i8* null, align 8
@maploads_physmem = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@arm_dcache_align = common dso_local global i32 0, align 4
@standard_allocator = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"coherent\00", align 1
@busdma_bufalloc_alloc_uncacheable = common dso_local global i32* null, align 8
@busdma_bufalloc_free_uncacheable = common dso_local global i32* null, align 8
@coherent_allocator = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @busdma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @busdma_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @M_WAITOK, align 4
  %4 = call i8* @counter_u64_alloc(i32 %3)
  store i8* %4, i8** @maploads_total, align 8
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = call i8* @counter_u64_alloc(i32 %5)
  store i8* %6, i8** @maploads_bounced, align 8
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = call i8* @counter_u64_alloc(i32 %7)
  store i8* %8, i8** @maploads_coherent, align 8
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = call i8* @counter_u64_alloc(i32 %9)
  store i8* %10, i8** @maploads_dmamem, align 8
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = call i8* @counter_u64_alloc(i32 %11)
  store i8* %12, i8** @maploads_mbuf, align 8
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = call i8* @counter_u64_alloc(i32 %13)
  store i8* %14, i8** @maploads_physmem, align 8
  %15 = load i32, i32* @arm_dcache_align, align 4
  %16 = call i8* @busdma_bufalloc_create(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %15, i32* null, i32* null, i32 0)
  store i8* %16, i8** @standard_allocator, align 8
  %17 = load i32, i32* @arm_dcache_align, align 4
  %18 = load i32*, i32** @busdma_bufalloc_alloc_uncacheable, align 8
  %19 = load i32*, i32** @busdma_bufalloc_free_uncacheable, align 8
  %20 = call i8* @busdma_bufalloc_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32* %18, i32* %19, i32 0)
  store i8* %20, i8** @coherent_allocator, align 8
  ret void
}

declare dso_local i8* @counter_u64_alloc(i32) #1

declare dso_local i8* @busdma_bufalloc_create(i8*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
