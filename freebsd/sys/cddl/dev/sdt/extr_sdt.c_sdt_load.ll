; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/sdt/extr_sdt.c_sdt_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/sdt/extr_sdt.c_sdt_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sdt_prov_list = common dso_local global i32 0, align 4
@dtrace_probe = common dso_local global i32 0, align 4
@sdt_probe_func = common dso_local global i32 0, align 4
@kld_load = common dso_local global i32 0, align 4
@sdt_kld_load = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@sdt_kld_load_tag = common dso_local global i8* null, align 8
@kld_unload_try = common dso_local global i32 0, align 4
@sdt_kld_unload_try = common dso_local global i32 0, align 4
@sdt_kld_unload_try_tag = common dso_local global i8* null, align 8
@sdt_linker_file_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sdt_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdt_load() #0 {
  %1 = call i32 @TAILQ_INIT(i32* @sdt_prov_list)
  %2 = load i32, i32* @dtrace_probe, align 4
  store i32 %2, i32* @sdt_probe_func, align 4
  %3 = load i32, i32* @kld_load, align 4
  %4 = load i32, i32* @sdt_kld_load, align 4
  %5 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %6 = call i8* @EVENTHANDLER_REGISTER(i32 %3, i32 %4, i32* null, i32 %5)
  store i8* %6, i8** @sdt_kld_load_tag, align 8
  %7 = load i32, i32* @kld_unload_try, align 4
  %8 = load i32, i32* @sdt_kld_unload_try, align 4
  %9 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %10 = call i8* @EVENTHANDLER_REGISTER(i32 %7, i32 %8, i32* null, i32 %9)
  store i8* %10, i8** @sdt_kld_unload_try_tag, align 8
  %11 = load i32, i32* @sdt_linker_file_cb, align 4
  %12 = call i32 @linker_file_foreach(i32 %11, i32* null)
  ret void
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32 @linker_file_foreach(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
