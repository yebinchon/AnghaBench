; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_delayed_invl_finish_u_crit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_delayed_invl_finish_u_crit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap_invl_gen = type { i64, %struct.pmap_invl_gen* }

@.str = private unnamed_addr constant [32 x i8] c"invalid di gen sequence %lu %lu\00", align 1
@PMAP_INVL_GEN_NEXT_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmap_invl_gen*, %struct.pmap_invl_gen*)* @pmap_delayed_invl_finish_u_crit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_delayed_invl_finish_u_crit(%struct.pmap_invl_gen* %0, %struct.pmap_invl_gen* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmap_invl_gen*, align 8
  %5 = alloca %struct.pmap_invl_gen*, align 8
  %6 = alloca %struct.pmap_invl_gen, align 8
  %7 = alloca %struct.pmap_invl_gen, align 8
  %8 = alloca i64, align 8
  store %struct.pmap_invl_gen* %0, %struct.pmap_invl_gen** %4, align 8
  store %struct.pmap_invl_gen* %1, %struct.pmap_invl_gen** %5, align 8
  %9 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %4, align 8
  %10 = getelementptr inbounds %struct.pmap_invl_gen, %struct.pmap_invl_gen* %9, i32 0, i32 0
  %11 = call i64 @atomic_load_long(i64* %10)
  store i64 %11, i64* %8, align 8
  %12 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %5, align 8
  %13 = call i32 @pmap_di_load_invl(%struct.pmap_invl_gen* %12, %struct.pmap_invl_gen* %6)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.pmap_invl_gen, %struct.pmap_invl_gen* %6, i32 0, i32 1
  %17 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %16, align 8
  %18 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %4, align 8
  %19 = icmp ne %struct.pmap_invl_gen* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %47

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.pmap_invl_gen, %struct.pmap_invl_gen* %6, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp slt i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds %struct.pmap_invl_gen, %struct.pmap_invl_gen* %6, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @KASSERT(i32 %26, i8* %30)
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.pmap_invl_gen, %struct.pmap_invl_gen* %7, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %4, align 8
  %35 = getelementptr inbounds %struct.pmap_invl_gen, %struct.pmap_invl_gen* %34, i32 0, i32 1
  %36 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %35, align 8
  %37 = ptrtoint %struct.pmap_invl_gen* %36 to i64
  %38 = load i64, i64* @PMAP_INVL_GEN_NEXT_INVALID, align 8
  %39 = xor i64 %38, -1
  %40 = and i64 %37, %39
  %41 = inttoptr i64 %40 to i8*
  %42 = bitcast i8* %41 to %struct.pmap_invl_gen*
  %43 = getelementptr inbounds %struct.pmap_invl_gen, %struct.pmap_invl_gen* %7, i32 0, i32 1
  store %struct.pmap_invl_gen* %42, %struct.pmap_invl_gen** %43, align 8
  %44 = call i32 (...) @atomic_thread_fence_rel()
  %45 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %5, align 8
  %46 = call i32 @pmap_di_store_invl(%struct.pmap_invl_gen* %45, %struct.pmap_invl_gen* %6, %struct.pmap_invl_gen* %7)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %21, %20
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @atomic_load_long(i64*) #1

declare dso_local i32 @pmap_di_load_invl(%struct.pmap_invl_gen*, %struct.pmap_invl_gen*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @atomic_thread_fence_rel(...) #1

declare dso_local i32 @pmap_di_store_invl(%struct.pmap_invl_gen*, %struct.pmap_invl_gen*, %struct.pmap_invl_gen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
