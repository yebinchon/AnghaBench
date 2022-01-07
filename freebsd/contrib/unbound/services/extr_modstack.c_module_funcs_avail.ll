; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_modstack.c_module_funcs_avail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_modstack.c_module_funcs_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_func_block = type opaque

@module_funcs_avail.fb = internal global [5 x %struct.module_func_block* ()*] [%struct.module_func_block* ()* bitcast (i32* @dns64_get_funcblock to %struct.module_func_block* ()*), %struct.module_func_block* ()* bitcast (i32* @respip_get_funcblock to %struct.module_func_block* ()*), %struct.module_func_block* ()* bitcast (i32* @val_get_funcblock to %struct.module_func_block* ()*), %struct.module_func_block* ()* bitcast (i32* @iter_get_funcblock to %struct.module_func_block* ()*), %struct.module_func_block* ()* null], align 16
@dns64_get_funcblock = common dso_local global i32 0, align 4
@respip_get_funcblock = common dso_local global i32 0, align 4
@val_get_funcblock = common dso_local global i32 0, align 4
@iter_get_funcblock = common dso_local global i32 0, align 4
@cachedb_get_funcblock = common dso_local global i32 0, align 4
@ipsecmod_get_funcblock = common dso_local global i32 0, align 4
@pythonmod_get_funcblock = common dso_local global i32 0, align 4
@subnetmod_get_funcblock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.module_func_block* (...)** ()* @module_funcs_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.module_func_block* (...)** @module_funcs_avail() #0 {
  ret %struct.module_func_block* (...)** bitcast ([5 x %struct.module_func_block* ()*]* @module_funcs_avail.fb to %struct.module_func_block* (...)**)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
