; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_set_solib_svr4_fetch_link_map_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_set_solib_svr4_fetch_link_map_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.link_map_offsets = type opaque
%struct.link_map_offsets.0 = type opaque

@fetch_link_map_offsets_gdbarch_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_solib_svr4_fetch_link_map_offsets(%struct.gdbarch* %0, %struct.link_map_offsets* ()* %1) #0 {
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca %struct.link_map_offsets* ()*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  store %struct.link_map_offsets* ()* %1, %struct.link_map_offsets* ()** %4, align 8
  %5 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %6 = load i32, i32* @fetch_link_map_offsets_gdbarch_data, align 4
  %7 = load %struct.link_map_offsets* ()*, %struct.link_map_offsets* ()** %4, align 8
  %8 = bitcast %struct.link_map_offsets* ()* %7 to %struct.link_map_offsets.0* (...)*
  %9 = call i32 @set_gdbarch_data(%struct.gdbarch* %5, i32 %6, %struct.link_map_offsets.0* (...)* %8)
  ret void
}

declare dso_local i32 @set_gdbarch_data(%struct.gdbarch*, i32, %struct.link_map_offsets.0* (...)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
