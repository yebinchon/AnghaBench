; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_IGNORE_FIRST_LINK_MAP_ENTRY.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_IGNORE_FIRST_LINK_MAP_ENTRY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.link_map_offsets = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.so_list*)* @IGNORE_FIRST_LINK_MAP_ENTRY to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IGNORE_FIRST_LINK_MAP_ENTRY(%struct.so_list* %0) #0 {
  %2 = alloca %struct.so_list*, align 8
  %3 = alloca %struct.link_map_offsets*, align 8
  store %struct.so_list* %0, %struct.so_list** %2, align 8
  %4 = call %struct.link_map_offsets* (...) @SVR4_FETCH_LINK_MAP_OFFSETS()
  store %struct.link_map_offsets* %4, %struct.link_map_offsets** %3, align 8
  %5 = load %struct.so_list*, %struct.so_list** %2, align 8
  %6 = getelementptr inbounds %struct.so_list, %struct.so_list* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.link_map_offsets*, %struct.link_map_offsets** %3, align 8
  %11 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = load %struct.link_map_offsets*, %struct.link_map_offsets** %3, align 8
  %15 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @extract_unsigned_integer(i64 %13, i32 %16)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local %struct.link_map_offsets* @SVR4_FETCH_LINK_MAP_OFFSETS(...) #1

declare dso_local i64 @extract_unsigned_integer(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
