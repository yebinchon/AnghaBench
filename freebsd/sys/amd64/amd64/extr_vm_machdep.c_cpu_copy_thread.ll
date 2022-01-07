; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_vm_machdep.c_cpu_copy_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_vm_machdep.c_cpu_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__, %struct.pcb*, %struct.pcb* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pcb = type { i32, i32, i32, i32, i64, i32, %struct.pcb* }

@PCB_FPUINITDONE = common dso_local global i32 0, align 4
@PCB_USERFPUINITDONE = common dso_local global i32 0, align 4
@PCB_KERNFPU = common dso_local global i32 0, align 4
@cpu_max_ext_state_size = common dso_local global i32 0, align 4
@PCB_FULL_IRET = common dso_local global i32 0, align 4
@PSL_T = common dso_local global i32 0, align 4
@fork_return = common dso_local global i64 0, align 8
@fork_trampoline = common dso_local global i64 0, align 8
@PSL_KERNEL = common dso_local global i32 0, align 4
@PSL_I = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_copy_thread(%struct.thread* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 2
  %8 = load %struct.pcb*, %struct.pcb** %7, align 8
  store %struct.pcb* %8, %struct.pcb** %5, align 8
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 2
  %11 = load %struct.pcb*, %struct.pcb** %10, align 8
  %12 = call i32 @update_pcb_bases(%struct.pcb* %11)
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 2
  %15 = load %struct.pcb*, %struct.pcb** %14, align 8
  %16 = load %struct.pcb*, %struct.pcb** %5, align 8
  %17 = call i32 @bcopy(%struct.pcb* %15, %struct.pcb* %16, i32 40)
  %18 = load %struct.pcb*, %struct.pcb** %5, align 8
  %19 = load i32, i32* @PCB_FPUINITDONE, align 4
  %20 = load i32, i32* @PCB_USERFPUINITDONE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @PCB_KERNFPU, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @clear_pcb_flags(%struct.pcb* %18, i32 %23)
  %25 = load %struct.pcb*, %struct.pcb** %5, align 8
  %26 = call %struct.pcb* @get_pcb_user_save_pcb(%struct.pcb* %25)
  %27 = load %struct.pcb*, %struct.pcb** %5, align 8
  %28 = getelementptr inbounds %struct.pcb, %struct.pcb* %27, i32 0, i32 6
  store %struct.pcb* %26, %struct.pcb** %28, align 8
  %29 = load %struct.thread*, %struct.thread** %4, align 8
  %30 = call %struct.pcb* @get_pcb_user_save_td(%struct.thread* %29)
  %31 = load %struct.pcb*, %struct.pcb** %5, align 8
  %32 = getelementptr inbounds %struct.pcb, %struct.pcb* %31, i32 0, i32 6
  %33 = load %struct.pcb*, %struct.pcb** %32, align 8
  %34 = load i32, i32* @cpu_max_ext_state_size, align 4
  %35 = call i32 @bcopy(%struct.pcb* %30, %struct.pcb* %33, i32 %34)
  %36 = load %struct.pcb*, %struct.pcb** %5, align 8
  %37 = load i32, i32* @PCB_FULL_IRET, align 4
  %38 = call i32 @set_pcb_flags_raw(%struct.pcb* %36, i32 %37)
  %39 = load %struct.thread*, %struct.thread** %4, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 1
  %41 = load %struct.pcb*, %struct.pcb** %40, align 8
  %42 = load %struct.thread*, %struct.thread** %3, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 1
  %44 = load %struct.pcb*, %struct.pcb** %43, align 8
  %45 = call i32 @bcopy(%struct.pcb* %41, %struct.pcb* %44, i32 4)
  %46 = load i32, i32* @PSL_T, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.thread*, %struct.thread** %3, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 1
  %50 = load %struct.pcb*, %struct.pcb** %49, align 8
  %51 = getelementptr inbounds %struct.pcb, %struct.pcb* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %47
  store i32 %53, i32* %51, align 8
  %54 = load i64, i64* @fork_return, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.pcb*, %struct.pcb** %5, align 8
  %57 = getelementptr inbounds %struct.pcb, %struct.pcb* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.pcb*, %struct.pcb** %5, align 8
  %59 = getelementptr inbounds %struct.pcb, %struct.pcb* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load %struct.thread*, %struct.thread** %3, align 8
  %61 = getelementptr inbounds %struct.thread, %struct.thread* %60, i32 0, i32 1
  %62 = load %struct.pcb*, %struct.pcb** %61, align 8
  %63 = ptrtoint %struct.pcb* %62 to i32
  %64 = sext i32 %63 to i64
  %65 = sub i64 %64, 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.pcb*, %struct.pcb** %5, align 8
  %68 = getelementptr inbounds %struct.pcb, %struct.pcb* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.thread*, %struct.thread** %3, align 8
  %70 = ptrtoint %struct.thread* %69 to i32
  %71 = load %struct.pcb*, %struct.pcb** %5, align 8
  %72 = getelementptr inbounds %struct.pcb, %struct.pcb* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i64, i64* @fork_trampoline, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.pcb*, %struct.pcb** %5, align 8
  %76 = getelementptr inbounds %struct.pcb, %struct.pcb* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.thread*, %struct.thread** %3, align 8
  %78 = getelementptr inbounds %struct.thread, %struct.thread* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load i32, i32* @PSL_KERNEL, align 4
  %81 = load i32, i32* @PSL_I, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.thread*, %struct.thread** %3, align 8
  %84 = getelementptr inbounds %struct.thread, %struct.thread* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load %struct.thread*, %struct.thread** %3, align 8
  %87 = call i32 @pmap_thread_init_invl_gen(%struct.thread* %86)
  ret void
}

declare dso_local i32 @update_pcb_bases(%struct.pcb*) #1

declare dso_local i32 @bcopy(%struct.pcb*, %struct.pcb*, i32) #1

declare dso_local i32 @clear_pcb_flags(%struct.pcb*, i32) #1

declare dso_local %struct.pcb* @get_pcb_user_save_pcb(%struct.pcb*) #1

declare dso_local %struct.pcb* @get_pcb_user_save_td(%struct.thread*) #1

declare dso_local i32 @set_pcb_flags_raw(%struct.pcb*, i32) #1

declare dso_local i32 @pmap_thread_init_invl_gen(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
