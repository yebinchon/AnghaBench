; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somsolib.c_som_solib_restart.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somsolib.c_som_solib_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { %struct.so_list* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i64 }
%struct.TYPE_15__ = type { i32*, i64 }
%struct.TYPE_14__ = type { i32*, i64 }
%struct.TYPE_13__ = type { i32*, i64 }
%struct.TYPE_12__ = type { i32*, i64 }
%struct.TYPE_11__ = type { i32*, i64 }
%struct.TYPE_10__ = type { i32*, i64 }
%struct.TYPE_9__ = type { i32*, i64 }

@so_list_head = common dso_local global %struct.so_list* null, align 8
@som_solib_total_st_size = common dso_local global i64 0, align 8
@som_solib_st_size_threshold_exceeded = common dso_local global i64 0, align 8
@dld_cache = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @som_solib_restart() #0 {
  %1 = alloca %struct.so_list*, align 8
  %2 = alloca %struct.so_list*, align 8
  %3 = load %struct.so_list*, %struct.so_list** @so_list_head, align 8
  store %struct.so_list* %3, %struct.so_list** %1, align 8
  %4 = call i32 @disable_breakpoints_in_shlibs(i32 0)
  br label %5

5:                                                ; preds = %8, %0
  %6 = load %struct.so_list*, %struct.so_list** %1, align 8
  %7 = icmp ne %struct.so_list* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load %struct.so_list*, %struct.so_list** %1, align 8
  %10 = getelementptr inbounds %struct.so_list, %struct.so_list* %9, i32 0, i32 0
  %11 = load %struct.so_list*, %struct.so_list** %10, align 8
  store %struct.so_list* %11, %struct.so_list** %2, align 8
  %12 = load %struct.so_list*, %struct.so_list** %1, align 8
  %13 = call i32 @xfree(%struct.so_list* %12)
  %14 = load %struct.so_list*, %struct.so_list** %2, align 8
  store %struct.so_list* %14, %struct.so_list** %1, align 8
  br label %5

15:                                               ; preds = %5
  store %struct.so_list* null, %struct.so_list** @so_list_head, align 8
  store i64 0, i64* @som_solib_total_st_size, align 8
  store i64 0, i64* @som_solib_st_size_threshold_exceeded, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 7), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 6, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 6, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 5, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 5, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 4, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 4, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 3, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 3, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 2, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 2, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 1, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 1, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dld_cache, i32 0, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @disable_breakpoints_in_shlibs(i32) #1

declare dso_local i32 @xfree(%struct.so_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
