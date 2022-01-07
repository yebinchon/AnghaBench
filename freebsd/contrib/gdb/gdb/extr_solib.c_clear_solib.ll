; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib.c_clear_solib.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib.c_clear_solib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { i64, %struct.so_list* }

@exec_bfd = common dso_local global i32* null, align 8
@bfd_target_aout_flavour = common dso_local global i64 0, align 8
@so_list_head = common dso_local global %struct.so_list* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_solib() #0 {
  %1 = alloca %struct.so_list*, align 8
  %2 = load i32*, i32** @exec_bfd, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32*, i32** @exec_bfd, align 8
  %6 = call i64 @bfd_get_flavour(i32* %5)
  %7 = load i64, i64* @bfd_target_aout_flavour, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = call i32 @disable_breakpoints_in_shlibs(i32 1)
  br label %11

11:                                               ; preds = %9, %4, %0
  br label %12

12:                                               ; preds = %29, %11
  %13 = load %struct.so_list*, %struct.so_list** @so_list_head, align 8
  %14 = icmp ne %struct.so_list* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load %struct.so_list*, %struct.so_list** @so_list_head, align 8
  store %struct.so_list* %16, %struct.so_list** %1, align 8
  %17 = load %struct.so_list*, %struct.so_list** %1, align 8
  %18 = getelementptr inbounds %struct.so_list, %struct.so_list* %17, i32 0, i32 1
  %19 = load %struct.so_list*, %struct.so_list** %18, align 8
  store %struct.so_list* %19, %struct.so_list** @so_list_head, align 8
  %20 = load %struct.so_list*, %struct.so_list** %1, align 8
  %21 = getelementptr inbounds %struct.so_list, %struct.so_list* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.so_list*, %struct.so_list** %1, align 8
  %26 = getelementptr inbounds %struct.so_list, %struct.so_list* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @remove_target_sections(i64 %27)
  br label %29

29:                                               ; preds = %24, %15
  %30 = load %struct.so_list*, %struct.so_list** %1, align 8
  %31 = call i32 @free_so(%struct.so_list* %30)
  br label %12

32:                                               ; preds = %12
  %33 = call i32 (...) @TARGET_SO_CLEAR_SOLIB()
  ret void
}

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local i32 @disable_breakpoints_in_shlibs(i32) #1

declare dso_local i32 @remove_target_sections(i64) #1

declare dso_local i32 @free_so(%struct.so_list*) #1

declare dso_local i32 @TARGET_SO_CLEAR_SOLIB(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
