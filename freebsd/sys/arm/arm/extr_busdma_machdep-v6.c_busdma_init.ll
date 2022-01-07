; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v6.c_busdma_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v6.c_busdma_init.c"
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
@BUSDMA_DCACHE_ALIGN = common dso_local global i32 0, align 4
@standard_allocator = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"coherent\00", align 1
@busdma_bufalloc_alloc_uncacheable = common dso_local global i32* null, align 8
@busdma_bufalloc_free_uncacheable = common dso_local global i32* null, align 8
@coherent_allocator = common dso_local global i8* null, align 8
@UMA_ZONE_OFFPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @busdma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @busdma_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @M_WAITOK, align 4
  %5 = call i8* @counter_u64_alloc(i32 %4)
  store i8* %5, i8** @maploads_total, align 8
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = call i8* @counter_u64_alloc(i32 %6)
  store i8* %7, i8** @maploads_bounced, align 8
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = call i8* @counter_u64_alloc(i32 %8)
  store i8* %9, i8** @maploads_coherent, align 8
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = call i8* @counter_u64_alloc(i32 %10)
  store i8* %11, i8** @maploads_dmamem, align 8
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = call i8* @counter_u64_alloc(i32 %12)
  store i8* %13, i8** @maploads_mbuf, align 8
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = call i8* @counter_u64_alloc(i32 %14)
  store i8* %15, i8** @maploads_physmem, align 8
  store i32 0, i32* %3, align 4
  %16 = load i32, i32* @BUSDMA_DCACHE_ALIGN, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i8* @busdma_bufalloc_create(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %16, i32* null, i32* null, i32 %17)
  store i8* %18, i8** @standard_allocator, align 8
  %19 = load i32, i32* @BUSDMA_DCACHE_ALIGN, align 4
  %20 = load i32*, i32** @busdma_bufalloc_alloc_uncacheable, align 8
  %21 = load i32*, i32** @busdma_bufalloc_free_uncacheable, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i8* @busdma_bufalloc_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32* %20, i32* %21, i32 %22)
  store i8* %23, i8** @coherent_allocator, align 8
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
