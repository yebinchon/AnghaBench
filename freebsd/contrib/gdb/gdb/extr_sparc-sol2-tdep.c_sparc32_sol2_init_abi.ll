; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-sol2-tdep.c_sparc32_sol2_init_abi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-sol2-tdep.c_sparc32_sol2_init_abi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.gdbarch_info = type { i32 }
%struct.gdbarch_tdep = type { i32 }

@in_plt_section = common dso_local global i32 0, align 4
@find_solib_trampoline_target = common dso_local global i32 0, align 4
@sparc_sol2_pc_in_sigtramp = common dso_local global i32 0, align 4
@sparc32_sol2_sigtramp_frame_sniffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc32_sol2_init_abi(i32 %0, %struct.gdbarch* %1) #0 {
  %3 = alloca %struct.gdbarch_info, align 4
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca %struct.gdbarch_tdep*, align 8
  %6 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %3, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  store %struct.gdbarch* %1, %struct.gdbarch** %4, align 8
  %7 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %8 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %7)
  store %struct.gdbarch_tdep* %8, %struct.gdbarch_tdep** %5, align 8
  %9 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %10 = load i32, i32* @in_plt_section, align 4
  %11 = call i32 @set_gdbarch_in_solib_call_trampoline(%struct.gdbarch* %9, i32 %10)
  %12 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %13 = load i32, i32* @find_solib_trampoline_target, align 4
  %14 = call i32 @set_gdbarch_skip_trampoline_code(%struct.gdbarch* %12, i32 %13)
  %15 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %16 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %15, i32 0, i32 0
  store i32 12, i32* %16, align 4
  %17 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %18 = call i32 @set_gdbarch_software_single_step(%struct.gdbarch* %17, i32* null)
  %19 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %20 = load i32, i32* @sparc_sol2_pc_in_sigtramp, align 4
  %21 = call i32 @set_gdbarch_pc_in_sigtramp(%struct.gdbarch* %19, i32 %20)
  %22 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %23 = load i32, i32* @sparc32_sol2_sigtramp_frame_sniffer, align 4
  %24 = call i32 @frame_unwind_append_sniffer(%struct.gdbarch* %22, i32 %23)
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i32 @set_gdbarch_in_solib_call_trampoline(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_skip_trampoline_code(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_software_single_step(%struct.gdbarch*, i32*) #1

declare dso_local i32 @set_gdbarch_pc_in_sigtramp(%struct.gdbarch*, i32) #1

declare dso_local i32 @frame_unwind_append_sniffer(%struct.gdbarch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
