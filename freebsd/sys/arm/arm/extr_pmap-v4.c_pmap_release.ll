; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.pcb* }
%struct.pcb = type { i32, i32, i32, i32* }

@vector_page = common dso_local global i64 0, align 8
@KERNBASE = common dso_local global i64 0, align 8
@thread0 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"pmap_release()\0A\00", align 1
@curpcb = common dso_local global %struct.pcb* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_release(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcb*, align 8
  %4 = alloca %struct.pcb*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @pmap_idcache_wbinv_all(i32 %5)
  %7 = call i32 (...) @cpu_l2cache_wbinv_all()
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @pmap_tlb_flushID(i32 %8)
  %10 = call i32 (...) @cpu_cpwait()
  %11 = load i64, i64* @vector_page, align 8
  %12 = load i64, i64* @KERNBASE, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %66

14:                                               ; preds = %1
  %15 = load %struct.pcb*, %struct.pcb** %4, align 8
  %16 = ptrtoint %struct.pcb* %15 to i32
  %17 = call %struct.pcb* @PCPU_GET(i32 %16)
  store %struct.pcb* %17, %struct.pcb** %4, align 8
  %18 = load %struct.pcb*, %struct.pcb** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread0, i32 0, i32 0), align 8
  store %struct.pcb* %18, %struct.pcb** %3, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call i64 @pmap_is_current(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %14
  %23 = call i32 (...) @critical_enter()
  %24 = load %struct.pcb*, %struct.pcb** %3, align 8
  %25 = getelementptr inbounds %struct.pcb, %struct.pcb* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.pcb*, %struct.pcb** %3, align 8
  %28 = getelementptr inbounds %struct.pcb, %struct.pcb* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  store i32 %26, i32* %29, align 4
  %30 = load %struct.pcb*, %struct.pcb** %3, align 8
  %31 = getelementptr inbounds %struct.pcb, %struct.pcb* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cpu_domains(i32 %32)
  %34 = load %struct.pcb*, %struct.pcb** %3, align 8
  %35 = getelementptr inbounds %struct.pcb, %struct.pcb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @cpu_setttb(i32 %36)
  %38 = call i32 (...) @critical_exit()
  br label %39

39:                                               ; preds = %22, %14
  %40 = load i32, i32* %2, align 4
  %41 = load i64, i64* @vector_page, align 8
  %42 = load i64, i64* @vector_page, align 8
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @pmap_remove(i32 %40, i64 %41, i64 %44)
  %46 = load %struct.pcb*, %struct.pcb** %3, align 8
  %47 = getelementptr inbounds %struct.pcb, %struct.pcb* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.pcb*, %struct.pcb** %4, align 8
  %50 = getelementptr inbounds %struct.pcb, %struct.pcb* %49, i32 0, i32 3
  store i32* %48, i32** %50, align 8
  %51 = load %struct.pcb*, %struct.pcb** %3, align 8
  %52 = getelementptr inbounds %struct.pcb, %struct.pcb* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.pcb*, %struct.pcb** %4, align 8
  %55 = getelementptr inbounds %struct.pcb, %struct.pcb* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.pcb*, %struct.pcb** %3, align 8
  %57 = getelementptr inbounds %struct.pcb, %struct.pcb* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pcb*, %struct.pcb** %4, align 8
  %60 = getelementptr inbounds %struct.pcb, %struct.pcb* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.pcb*, %struct.pcb** %3, align 8
  %62 = getelementptr inbounds %struct.pcb, %struct.pcb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.pcb*, %struct.pcb** %4, align 8
  %65 = getelementptr inbounds %struct.pcb, %struct.pcb* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %39, %1
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @pmap_free_l1(i32 %67)
  %69 = call i32 @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pmap_idcache_wbinv_all(i32) #1

declare dso_local i32 @cpu_l2cache_wbinv_all(...) #1

declare dso_local i32 @pmap_tlb_flushID(i32) #1

declare dso_local i32 @cpu_cpwait(...) #1

declare dso_local %struct.pcb* @PCPU_GET(i32) #1

declare dso_local i64 @pmap_is_current(i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @cpu_domains(i32) #1

declare dso_local i32 @cpu_setttb(i32) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @pmap_remove(i32, i64, i64) #1

declare dso_local i32 @pmap_free_l1(i32) #1

declare dso_local i32 @dprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
