; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_first_link_map_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_first_link_map_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_map_offsets = type { i32, i64 }
%struct.cleanup = type { i32 }

@xfree = common dso_local global i32 0, align 4
@debug_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @first_link_map_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @first_link_map_member() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.link_map_offsets*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cleanup*, align 8
  store i32 0, i32* %1, align 4
  %5 = call %struct.link_map_offsets* (...) @SVR4_FETCH_LINK_MAP_OFFSETS()
  store %struct.link_map_offsets* %5, %struct.link_map_offsets** %2, align 8
  %6 = load %struct.link_map_offsets*, %struct.link_map_offsets** %2, align 8
  %7 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i8* @xmalloc(i32 %8)
  store i8* %9, i8** %3, align 8
  %10 = load i32, i32* @xfree, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call %struct.cleanup* @make_cleanup(i32 %10, i8* %11)
  store %struct.cleanup* %12, %struct.cleanup** %4, align 8
  %13 = load i64, i64* @debug_base, align 8
  %14 = load %struct.link_map_offsets*, %struct.link_map_offsets** %2, align 8
  %15 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = load i8*, i8** %3, align 8
  %19 = load %struct.link_map_offsets*, %struct.link_map_offsets** %2, align 8
  %20 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @read_memory(i64 %17, i8* %18, i32 %21)
  %23 = load i8*, i8** %3, align 8
  %24 = load %struct.link_map_offsets*, %struct.link_map_offsets** %2, align 8
  %25 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @extract_unsigned_integer(i8* %23, i32 %26)
  store i32 %27, i32* %1, align 4
  %28 = load %struct.cleanup*, %struct.cleanup** %4, align 8
  %29 = call i32 @do_cleanups(%struct.cleanup* %28)
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local %struct.link_map_offsets* @SVR4_FETCH_LINK_MAP_OFFSETS(...) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @read_memory(i64, i8*, i32) #1

declare dso_local i32 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
