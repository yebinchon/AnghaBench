; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_mp_machdep.c_init_secondary.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_mp_machdep.c_init_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { i32, %struct.TYPE_2__*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@__pcpu = common dso_local global %struct.pcpu* null, align 8
@aps_ready = common dso_local global i32 0, align 4
@idlethread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no idle thread\00", align 1
@vmspace0 = common dso_local global i32 0, align 4
@ttbr0_el1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"pmap0 doesn't match cpu %ld's ttbr0\00", align 1
@ap_boot_mtx = common dso_local global i32 0, align 4
@smp_cpus = common dso_local global i64 0, align 8
@mp_ncpus = common dso_local global i64 0, align 8
@smp_started = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"scheduler returned us to init_secondary\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_secondary(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pcpu*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load %struct.pcpu*, %struct.pcpu** @__pcpu, align 8
  %6 = load i64, i64* %2, align 8
  %7 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %5, i64 %6
  store %struct.pcpu* %7, %struct.pcpu** %3, align 8
  %8 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  call void asm sideeffect "mov x18, $0 \0Amsr tpidr_el1, $0", "r,~{dirflag},~{fpsr},~{flags}"(%struct.pcpu* %8) #2, !srcloc !2
  br label %9

9:                                                ; preds = %13, %1
  %10 = load i32, i32* @aps_ready, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  call void asm sideeffect "wfe", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  br label %9

14:                                               ; preds = %9
  %15 = load i32, i32* @idlethread, align 4
  %16 = call i32* @PCPU_GET(i32 %15)
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %21 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %24 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %23, i32 0, i32 3
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %24, align 8
  %25 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %26 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %31 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = call i32 @vmspace_pmap(i32* @vmspace0)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @pmap_to_ttbr0(i32 %33)
  %35 = load i32, i32* @ttbr0_el1, align 4
  %36 = call i64 @READ_SPECIALREG(i32 %35)
  %37 = icmp eq i64 %34, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %2, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @KASSERT(i32 %38, i8* %40)
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %44 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = call i32 (...) @identify_cpu()
  %46 = call i32 (...) @install_cpu_errata()
  %47 = call i32 (...) @intr_pic_init_secondary()
  %48 = call i32 (...) @cpu_initclocks_ap()
  %49 = call i32 (...) @dbg_init()
  %50 = call i32 (...) @pan_enable()
  %51 = call i32 (...) @intr_enable()
  %52 = call i32 @mtx_lock_spin(i32* @ap_boot_mtx)
  %53 = call i32 @atomic_add_rel_32(i64* @smp_cpus, i32 1)
  %54 = load i64, i64* @smp_cpus, align 8
  %55 = load i64, i64* @mp_ncpus, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %14
  %58 = call i32 @atomic_store_rel_int(i32* @smp_started, i32 1)
  br label %59

59:                                               ; preds = %57, %14
  %60 = call i32 @mtx_unlock_spin(i32* @ap_boot_mtx)
  %61 = call i32 @sched_throw(i32* null)
  %62 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @PCPU_GET(i32) #1

declare dso_local i32 @vmspace_pmap(i32*) #1

declare dso_local i64 @pmap_to_ttbr0(i32) #1

declare dso_local i64 @READ_SPECIALREG(i32) #1

declare dso_local i32 @identify_cpu(...) #1

declare dso_local i32 @install_cpu_errata(...) #1

declare dso_local i32 @intr_pic_init_secondary(...) #1

declare dso_local i32 @cpu_initclocks_ap(...) #1

declare dso_local i32 @dbg_init(...) #1

declare dso_local i32 @pan_enable(...) #1

declare dso_local i32 @intr_enable(...) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @atomic_add_rel_32(i64*, i32) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @sched_throw(i32*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1191, i32 1214}
!3 = !{i32 1290}
