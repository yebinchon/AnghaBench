; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somsolib.c_som_solib_in_dynamic_linker.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somsolib.c_som_solib_in_dynamic_linker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { %struct.unwind_table_entry* }
%struct.unwind_table_entry = type { i32 }
%struct.TYPE_13__ = type { %struct.unwind_table_entry* }
%struct.TYPE_12__ = type { %struct.unwind_table_entry* }
%struct.TYPE_11__ = type { %struct.unwind_table_entry* }
%struct.TYPE_10__ = type { %struct.unwind_table_entry* }
%struct.TYPE_9__ = type { %struct.unwind_table_entry* }
%struct.TYPE_15__ = type { %struct.unwind_table_entry* }

@dld_cache = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @som_solib_in_dynamic_linker(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.unwind_table_entry*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, -1073741824
  %9 = icmp eq i32 %8, -1073741824
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %49

11:                                               ; preds = %2
  %12 = call i32 (...) @som_solib_desire_dynamic_linker_symbols()
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.unwind_table_entry* @find_unwind_entry(i32 %13)
  store %struct.unwind_table_entry* %14, %struct.unwind_table_entry** %6, align 8
  %15 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %6, align 8
  %16 = icmp eq %struct.unwind_table_entry* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %49

18:                                               ; preds = %11
  %19 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %6, align 8
  %20 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 6, i32 0), align 8
  %21 = icmp eq %struct.unwind_table_entry* %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %6, align 8
  %24 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 5, i32 0), align 8
  %25 = icmp eq %struct.unwind_table_entry* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18
  store i32 1, i32* %3, align 4
  br label %49

27:                                               ; preds = %22
  %28 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %6, align 8
  %29 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 4, i32 0), align 8
  %30 = icmp eq %struct.unwind_table_entry* %28, %29
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %6, align 8
  %33 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 3, i32 0), align 8
  %34 = icmp eq %struct.unwind_table_entry* %32, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %6, align 8
  %37 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 2, i32 0), align 8
  %38 = icmp eq %struct.unwind_table_entry* %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %6, align 8
  %41 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 1, i32 0), align 8
  %42 = icmp eq %struct.unwind_table_entry* %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %6, align 8
  %45 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 0, i32 0), align 8
  %46 = icmp eq %struct.unwind_table_entry* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %39, %35, %31, %27
  store i32 1, i32* %3, align 4
  br label %49

48:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %47, %26, %17, %10
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @som_solib_desire_dynamic_linker_symbols(...) #1

declare dso_local %struct.unwind_table_entry* @find_unwind_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
