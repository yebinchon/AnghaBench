; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_init_abi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_init_abi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.gdbarch_info = type { i32 }
%struct.gdbarch_tdep = type { i32, i32 }

@SPARC64_PC_REGNUM = common dso_local global i32 0, align 4
@SPARC64_NPC_REGNUM = common dso_local global i32 0, align 4
@SPARC64_NUM_REGS = common dso_local global i32 0, align 4
@sparc64_register_name = common dso_local global i32 0, align 4
@sparc64_register_type = common dso_local global i32 0, align 4
@SPARC64_NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@sparc64_pseudo_register_read = common dso_local global i32 0, align 4
@sparc64_pseudo_register_write = common dso_local global i32 0, align 4
@AT_ENTRY_POINT = common dso_local global i32 0, align 4
@sparc64_push_dummy_call = common dso_local global i32 0, align 4
@sparc64_return_value = common dso_local global i32 0, align 4
@default_stabs_argument_has_addr = common dso_local global i32 0, align 4
@sparc64_skip_prologue = common dso_local global i32 0, align 4
@sparc64_frame_sniffer = common dso_local global i32 0, align 4
@sparc64_frame_base = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc64_init_abi(i32 %0, %struct.gdbarch* %1) #0 {
  %3 = alloca %struct.gdbarch_info, align 4
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca %struct.gdbarch_tdep*, align 8
  %6 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %3, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  store %struct.gdbarch* %1, %struct.gdbarch** %4, align 8
  %7 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %8 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %7)
  store %struct.gdbarch_tdep* %8, %struct.gdbarch_tdep** %5, align 8
  %9 = load i32, i32* @SPARC64_PC_REGNUM, align 4
  %10 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %11 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @SPARC64_NPC_REGNUM, align 4
  %13 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %14 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %16 = call i32 @set_gdbarch_long_bit(%struct.gdbarch* %15, i32 64)
  %17 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %18 = call i32 @set_gdbarch_long_long_bit(%struct.gdbarch* %17, i32 64)
  %19 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %20 = call i32 @set_gdbarch_ptr_bit(%struct.gdbarch* %19, i32 64)
  %21 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %22 = load i32, i32* @SPARC64_NUM_REGS, align 4
  %23 = call i32 @set_gdbarch_num_regs(%struct.gdbarch* %21, i32 %22)
  %24 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %25 = load i32, i32* @sparc64_register_name, align 4
  %26 = call i32 @set_gdbarch_register_name(%struct.gdbarch* %24, i32 %25)
  %27 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %28 = load i32, i32* @sparc64_register_type, align 4
  %29 = call i32 @set_gdbarch_register_type(%struct.gdbarch* %27, i32 %28)
  %30 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %31 = load i32, i32* @SPARC64_NUM_PSEUDO_REGS, align 4
  %32 = call i32 @set_gdbarch_num_pseudo_regs(%struct.gdbarch* %30, i32 %31)
  %33 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %34 = load i32, i32* @sparc64_pseudo_register_read, align 4
  %35 = call i32 @set_gdbarch_pseudo_register_read(%struct.gdbarch* %33, i32 %34)
  %36 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %37 = load i32, i32* @sparc64_pseudo_register_write, align 4
  %38 = call i32 @set_gdbarch_pseudo_register_write(%struct.gdbarch* %36, i32 %37)
  %39 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %40 = load i32, i32* @SPARC64_PC_REGNUM, align 4
  %41 = call i32 @set_gdbarch_pc_regnum(%struct.gdbarch* %39, i32 %40)
  %42 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %43 = load i32, i32* @AT_ENTRY_POINT, align 4
  %44 = call i32 @set_gdbarch_call_dummy_location(%struct.gdbarch* %42, i32 %43)
  %45 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %46 = call i32 @set_gdbarch_push_dummy_code(%struct.gdbarch* %45, i32* null)
  %47 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %48 = load i32, i32* @sparc64_push_dummy_call, align 4
  %49 = call i32 @set_gdbarch_push_dummy_call(%struct.gdbarch* %47, i32 %48)
  %50 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %51 = load i32, i32* @sparc64_return_value, align 4
  %52 = call i32 @set_gdbarch_return_value(%struct.gdbarch* %50, i32 %51)
  %53 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %54 = load i32, i32* @default_stabs_argument_has_addr, align 4
  %55 = call i32 @set_gdbarch_stabs_argument_has_addr(%struct.gdbarch* %53, i32 %54)
  %56 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %57 = load i32, i32* @sparc64_skip_prologue, align 4
  %58 = call i32 @set_gdbarch_skip_prologue(%struct.gdbarch* %56, i32 %57)
  %59 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %60 = load i32, i32* @sparc64_frame_sniffer, align 4
  %61 = call i32 @frame_unwind_append_sniffer(%struct.gdbarch* %59, i32 %60)
  %62 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %63 = call i32 @frame_base_set_default(%struct.gdbarch* %62, i32* @sparc64_frame_base)
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i32 @set_gdbarch_long_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_long_long_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_ptr_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_num_regs(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_register_name(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_register_type(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_num_pseudo_regs(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_pseudo_register_read(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_pseudo_register_write(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_pc_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_call_dummy_location(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_push_dummy_code(%struct.gdbarch*, i32*) #1

declare dso_local i32 @set_gdbarch_push_dummy_call(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_return_value(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_stabs_argument_has_addr(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_skip_prologue(%struct.gdbarch*, i32) #1

declare dso_local i32 @frame_unwind_append_sniffer(%struct.gdbarch*, i32) #1

declare dso_local i32 @frame_base_set_default(%struct.gdbarch*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
