; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_locate_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_locate_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug_base = common dso_local global i64 0, align 8
@exec_bfd = common dso_local global i32* null, align 8
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@look_for_base = common dso_local global i32 0, align 4
@null_ptid = common dso_local global i32 0, align 4
@target_has_execution = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @locate_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @locate_base() #0 {
  %1 = load i64, i64* @debug_base, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %17

3:                                                ; preds = %0
  %4 = call i64 (...) @svr4_have_link_map_offsets()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = load i32*, i32** @exec_bfd, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i32*, i32** @exec_bfd, align 8
  %11 = call i64 @bfd_get_flavour(i32* %10)
  %12 = load i64, i64* @bfd_target_elf_flavour, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i64 (...) @elf_locate_base()
  store i64 %15, i64* @debug_base, align 8
  br label %16

16:                                               ; preds = %14, %9, %6
  br label %17

17:                                               ; preds = %16, %3, %0
  %18 = load i64, i64* @debug_base, align 8
  ret i64 %18
}

declare dso_local i64 @svr4_have_link_map_offsets(...) #1

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local i64 @elf_locate_base(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
