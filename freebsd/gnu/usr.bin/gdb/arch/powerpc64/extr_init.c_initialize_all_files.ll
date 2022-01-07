; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/arch/powerpc64/extr_init.c_initialize_all_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/arch/powerpc64/extr_init.c_initialize_all_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize_all_files() #0 {
  %1 = call i32 (...) @_initialize_gdbtypes()
  %2 = call i32 (...) @_initialize_rs6000_tdep()
  %3 = call i32 (...) @_initialize_ppcfbsd_tdep()
  %4 = call i32 (...) @_initialize_corelow()
  %5 = call i32 (...) @_initialize_solib()
  %6 = call i32 (...) @_initialize_svr4_solib()
  %7 = call i32 (...) @_initialize_ser_hardwire()
  %8 = call i32 (...) @_initialize_ser_pipe()
  %9 = call i32 (...) @_initialize_ser_tcp()
  %10 = call i32 (...) @_initialize_fbsd_proc()
  %11 = call i32 (...) @_initialize_gcore()
  %12 = call i32 (...) @_initialize_kernel_u_addr()
  %13 = call i32 (...) @_initialize_infptrace()
  %14 = call i32 (...) @_initialize_inftarg()
  %15 = call i32 (...) @_initialize_ppcfbsd_nat()
  %16 = call i32 (...) @_initialize_thread_db()
  %17 = call i32 (...) @_initialize_remote()
  %18 = call i32 (...) @_initialize_dcache()
  %19 = call i32 (...) @_initialize_sr_support()
  %20 = call i32 (...) @_initialize_tracepoint()
  %21 = call i32 (...) @_initialize_ax_gdb()
  %22 = call i32 (...) @_initialize_annotate()
  %23 = call i32 (...) @_initialize_auxv()
  %24 = call i32 (...) @_initialize_breakpoint()
  %25 = call i32 (...) @_initialize_regcache()
  %26 = call i32 (...) @_initialize_charset()
  %27 = call i32 (...) @_initialize_dummy_frame()
  %28 = call i32 (...) @_initialize_source()
  %29 = call i32 (...) @_initialize_values()
  %30 = call i32 (...) @_initialize_valops()
  %31 = call i32 (...) @_initialize_valarith()
  %32 = call i32 (...) @_initialize_valprint()
  %33 = call i32 (...) @_initialize_printcmd()
  %34 = call i32 (...) @_initialize_symtab()
  %35 = call i32 (...) @_initialize_symfile()
  %36 = call i32 (...) @_initialize_symmisc()
  %37 = call i32 (...) @_initialize_infcall()
  %38 = call i32 (...) @_initialize_infcmd()
  %39 = call i32 (...) @_initialize_infrun()
  %40 = call i32 (...) @_initialize_stack()
  %41 = call i32 (...) @_initialize_thread()
  %42 = call i32 (...) @_initialize_interpreter()
  %43 = call i32 (...) @_initialize_macrocmd()
  %44 = call i32 (...) @_initialize_gdbarch()
  %45 = call i32 (...) @_initialize_gdbarch_utils()
  %46 = call i32 (...) @_initialize_gdb_osabi()
  %47 = call i32 (...) @_initialize_copying()
  %48 = call i32 (...) @_initialize_mem()
  %49 = call i32 (...) @_initialize_parse()
  %50 = call i32 (...) @_initialize_language()
  %51 = call i32 (...) @_initialize_frame_reg()
  %52 = call i32 (...) @_initialize_signals()
  %53 = call i32 (...) @_initialize_kod()
  %54 = call i32 (...) @_initialize_gdb_events()
  %55 = call i32 (...) @_initialize_exec()
  %56 = call i32 (...) @_initialize_maint_cmds()
  %57 = call i32 (...) @_initialize_demangler()
  %58 = call i32 (...) @_initialize_dbxread()
  %59 = call i32 (...) @_initialize_coffread()
  %60 = call i32 (...) @_initialize_elfread()
  %61 = call i32 (...) @_initialize_mipsread()
  %62 = call i32 (...) @_initialize_stabsread()
  %63 = call i32 (...) @_initialize_core()
  %64 = call i32 (...) @_initialize_dwarf2_frame()
  %65 = call i32 (...) @_initialize_c_language()
  %66 = call i32 (...) @_initialize_f_language()
  %67 = call i32 (...) @_initialize_objc_language()
  %68 = call i32 (...) @_initialize_ui_out()
  %69 = call i32 (...) @_initialize_cli_out()
  %70 = call i32 (...) @_initialize_varobj()
  %71 = call i32 (...) @_initialize_java_language()
  %72 = call i32 (...) @_initialize_m2_language()
  %73 = call i32 (...) @_initialize_pascal_language()
  %74 = call i32 (...) @_initialize_pascal_valprint()
  %75 = call i32 (...) @_initialize_scheme_language()
  %76 = call i32 (...) @_initialize_complaints()
  %77 = call i32 (...) @_initialize_typeprint()
  %78 = call i32 (...) @_initialize_cp_valprint()
  %79 = call i32 (...) @_initialize_f_valprint()
  %80 = call i32 (...) @_initialize_nlmread()
  %81 = call i32 (...) @_initialize_serial()
  %82 = call i32 (...) @_initialize_mdebugread()
  %83 = call i32 (...) @_initialize_user_regs()
  %84 = call i32 (...) @_initialize_frame()
  %85 = call i32 (...) @_initialize_frame_unwind()
  %86 = call i32 (...) @_initialize_frame_base()
  %87 = call i32 (...) @_initialize_gnu_v2_abi()
  %88 = call i32 (...) @_initialize_gnu_v3_abi()
  %89 = call i32 (...) @_initialize_hpacc_abi()
  %90 = call i32 (...) @_initialize_cp_abi()
  %91 = call i32 (...) @_initialize_cp_support()
  %92 = call i32 (...) @_initialize_cp_namespace()
  %93 = call i32 (...) @_initialize_reggroup()
  %94 = call i32 (...) @_initialize_inflow()
  %95 = call i32 (...) @_initialize_cli_dump()
  %96 = call i32 (...) @_initialize_cli_logging()
  %97 = call i32 (...) @_initialize_cli_interp()
  %98 = call i32 (...) @_initialize_mi_out()
  %99 = call i32 (...) @_initialize_mi_cmds()
  %100 = call i32 (...) @_initialize_mi_cmd_env()
  %101 = call i32 (...) @_initialize_mi_interp()
  %102 = call i32 (...) @_initialize_mi_main()
  %103 = call i32 (...) @_initialize_tui_hooks()
  %104 = call i32 (...) @_initialize_tui_interp()
  %105 = call i32 (...) @_initialize_tui_layout()
  %106 = call i32 (...) @_initialize_tui_out()
  %107 = call i32 (...) @_initialize_tui_regs()
  %108 = call i32 (...) @_initialize_tui_stack()
  %109 = call i32 (...) @_initialize_tui_win()
  ret void
}

declare dso_local i32 @_initialize_gdbtypes(...) #1

declare dso_local i32 @_initialize_rs6000_tdep(...) #1

declare dso_local i32 @_initialize_ppcfbsd_tdep(...) #1

declare dso_local i32 @_initialize_corelow(...) #1

declare dso_local i32 @_initialize_solib(...) #1

declare dso_local i32 @_initialize_svr4_solib(...) #1

declare dso_local i32 @_initialize_ser_hardwire(...) #1

declare dso_local i32 @_initialize_ser_pipe(...) #1

declare dso_local i32 @_initialize_ser_tcp(...) #1

declare dso_local i32 @_initialize_fbsd_proc(...) #1

declare dso_local i32 @_initialize_gcore(...) #1

declare dso_local i32 @_initialize_kernel_u_addr(...) #1

declare dso_local i32 @_initialize_infptrace(...) #1

declare dso_local i32 @_initialize_inftarg(...) #1

declare dso_local i32 @_initialize_ppcfbsd_nat(...) #1

declare dso_local i32 @_initialize_thread_db(...) #1

declare dso_local i32 @_initialize_remote(...) #1

declare dso_local i32 @_initialize_dcache(...) #1

declare dso_local i32 @_initialize_sr_support(...) #1

declare dso_local i32 @_initialize_tracepoint(...) #1

declare dso_local i32 @_initialize_ax_gdb(...) #1

declare dso_local i32 @_initialize_annotate(...) #1

declare dso_local i32 @_initialize_auxv(...) #1

declare dso_local i32 @_initialize_breakpoint(...) #1

declare dso_local i32 @_initialize_regcache(...) #1

declare dso_local i32 @_initialize_charset(...) #1

declare dso_local i32 @_initialize_dummy_frame(...) #1

declare dso_local i32 @_initialize_source(...) #1

declare dso_local i32 @_initialize_values(...) #1

declare dso_local i32 @_initialize_valops(...) #1

declare dso_local i32 @_initialize_valarith(...) #1

declare dso_local i32 @_initialize_valprint(...) #1

declare dso_local i32 @_initialize_printcmd(...) #1

declare dso_local i32 @_initialize_symtab(...) #1

declare dso_local i32 @_initialize_symfile(...) #1

declare dso_local i32 @_initialize_symmisc(...) #1

declare dso_local i32 @_initialize_infcall(...) #1

declare dso_local i32 @_initialize_infcmd(...) #1

declare dso_local i32 @_initialize_infrun(...) #1

declare dso_local i32 @_initialize_stack(...) #1

declare dso_local i32 @_initialize_thread(...) #1

declare dso_local i32 @_initialize_interpreter(...) #1

declare dso_local i32 @_initialize_macrocmd(...) #1

declare dso_local i32 @_initialize_gdbarch(...) #1

declare dso_local i32 @_initialize_gdbarch_utils(...) #1

declare dso_local i32 @_initialize_gdb_osabi(...) #1

declare dso_local i32 @_initialize_copying(...) #1

declare dso_local i32 @_initialize_mem(...) #1

declare dso_local i32 @_initialize_parse(...) #1

declare dso_local i32 @_initialize_language(...) #1

declare dso_local i32 @_initialize_frame_reg(...) #1

declare dso_local i32 @_initialize_signals(...) #1

declare dso_local i32 @_initialize_kod(...) #1

declare dso_local i32 @_initialize_gdb_events(...) #1

declare dso_local i32 @_initialize_exec(...) #1

declare dso_local i32 @_initialize_maint_cmds(...) #1

declare dso_local i32 @_initialize_demangler(...) #1

declare dso_local i32 @_initialize_dbxread(...) #1

declare dso_local i32 @_initialize_coffread(...) #1

declare dso_local i32 @_initialize_elfread(...) #1

declare dso_local i32 @_initialize_mipsread(...) #1

declare dso_local i32 @_initialize_stabsread(...) #1

declare dso_local i32 @_initialize_core(...) #1

declare dso_local i32 @_initialize_dwarf2_frame(...) #1

declare dso_local i32 @_initialize_c_language(...) #1

declare dso_local i32 @_initialize_f_language(...) #1

declare dso_local i32 @_initialize_objc_language(...) #1

declare dso_local i32 @_initialize_ui_out(...) #1

declare dso_local i32 @_initialize_cli_out(...) #1

declare dso_local i32 @_initialize_varobj(...) #1

declare dso_local i32 @_initialize_java_language(...) #1

declare dso_local i32 @_initialize_m2_language(...) #1

declare dso_local i32 @_initialize_pascal_language(...) #1

declare dso_local i32 @_initialize_pascal_valprint(...) #1

declare dso_local i32 @_initialize_scheme_language(...) #1

declare dso_local i32 @_initialize_complaints(...) #1

declare dso_local i32 @_initialize_typeprint(...) #1

declare dso_local i32 @_initialize_cp_valprint(...) #1

declare dso_local i32 @_initialize_f_valprint(...) #1

declare dso_local i32 @_initialize_nlmread(...) #1

declare dso_local i32 @_initialize_serial(...) #1

declare dso_local i32 @_initialize_mdebugread(...) #1

declare dso_local i32 @_initialize_user_regs(...) #1

declare dso_local i32 @_initialize_frame(...) #1

declare dso_local i32 @_initialize_frame_unwind(...) #1

declare dso_local i32 @_initialize_frame_base(...) #1

declare dso_local i32 @_initialize_gnu_v2_abi(...) #1

declare dso_local i32 @_initialize_gnu_v3_abi(...) #1

declare dso_local i32 @_initialize_hpacc_abi(...) #1

declare dso_local i32 @_initialize_cp_abi(...) #1

declare dso_local i32 @_initialize_cp_support(...) #1

declare dso_local i32 @_initialize_cp_namespace(...) #1

declare dso_local i32 @_initialize_reggroup(...) #1

declare dso_local i32 @_initialize_inflow(...) #1

declare dso_local i32 @_initialize_cli_dump(...) #1

declare dso_local i32 @_initialize_cli_logging(...) #1

declare dso_local i32 @_initialize_cli_interp(...) #1

declare dso_local i32 @_initialize_mi_out(...) #1

declare dso_local i32 @_initialize_mi_cmds(...) #1

declare dso_local i32 @_initialize_mi_cmd_env(...) #1

declare dso_local i32 @_initialize_mi_interp(...) #1

declare dso_local i32 @_initialize_mi_main(...) #1

declare dso_local i32 @_initialize_tui_hooks(...) #1

declare dso_local i32 @_initialize_tui_interp(...) #1

declare dso_local i32 @_initialize_tui_layout(...) #1

declare dso_local i32 @_initialize_tui_out(...) #1

declare dso_local i32 @_initialize_tui_regs(...) #1

declare dso_local i32 @_initialize_tui_stack(...) #1

declare dso_local i32 @_initialize_tui_win(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
