; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug.c_cvmx_debug_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug.c_cvmx_debug_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (...)*, i32 (...)* }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@cvmx_debug_comms = common dso_local global %struct.TYPE_8__** null, align 8
@cvmx_debug_globals = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"cvmx_debug_init core: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Known cores at init: 0x%x\0A\00", align 1
@CVMX_SYNCW = common dso_local global i32 0, align 4
@CVMX_MAX_CORES = common dso_local global i32 0, align 4
@__cvmx_debug_stack_top_all = common dso_local global i32** null, align 8
@cvmx_debug_stack_all = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_debug_init() #0 {
  %1 = alloca %struct.TYPE_7__, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = call i32 (...) @cvmx_debug_core_mask()
  store i32 %8, i32* %5, align 4
  %9 = call i32 (...) @cvmx_debug_enabled()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %108

12:                                               ; preds = %0
  %13 = call i32 (...) @cvmx_debug_init_globals()
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @cvmx_coremask_barrier_sync(i32 %14)
  %16 = call i32 (...) @cvmx_debug_globals_check_version()
  %17 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @cvmx_debug_comms, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cvmx_debug_globals, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %17, i64 %20
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %3, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cvmx_debug_globals, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  store i32* %24, i32** %4, align 8
  %25 = call i32 (...) @cvmx_get_core_num()
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @cvmx_debug_install_handler(i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32 (...)*, i32 (...)** %29, align 8
  %31 = icmp ne i32 (...)* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %12
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32 (...)*, i32 (...)** %34, align 8
  %36 = call i32 (...) %35()
  br label %37

37:                                               ; preds = %32, %12
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @cvmx_spinlock_lock(i32* %38)
  call void (%struct.TYPE_7__*, ...) @cvmx_debug_get_state(%struct.TYPE_7__* sret %6)
  %40 = bitcast %struct.TYPE_7__* %1 to i8*
  %41 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 24, i1 false)
  %42 = load i32, i32* %2, align 4
  %43 = shl i32 1, %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %2, align 4
  %48 = shl i32 1, %47
  %49 = xor i32 %48, -1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = call i32 @cvmx_debug_update_state(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @cvmx_spinlock_unlock(i32* %54)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @cvmx_coremask_barrier_sync(i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @cvmx_coremask_first_core(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %37
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @cvmx_debug_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %62)
  call void (%struct.TYPE_7__*, ...) @cvmx_debug_get_state(%struct.TYPE_7__* sret %7)
  %64 = bitcast %struct.TYPE_7__* %1 to i8*
  %65 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 24, i1 false)
  %66 = load i32, i32* %2, align 4
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 3
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 4
  store i32 1, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 5
  store i32 1, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cvmx_debug_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = call i32 @cvmx_debug_update_state(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cvmx_debug_globals, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 8
  %79 = load i32, i32* @CVMX_SYNCW, align 4
  br label %80

80:                                               ; preds = %61, %37
  br label %81

81:                                               ; preds = %87, %80
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cvmx_debug_globals, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %81

88:                                               ; preds = %81
  %89 = call i64 (...) @cvmx_debug_booted()
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 (...) @cvmx_debug_trigger_exception()
  br label %93

93:                                               ; preds = %91, %88
  %94 = load i32, i32* %5, align 4
  %95 = call i64 @cvmx_coremask_first_core(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32 (...)*, i32 (...)** %99, align 8
  %101 = icmp ne i32 (...)* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32 (...)*, i32 (...)** %104, align 8
  %106 = call i32 (...) %105()
  br label %107

107:                                              ; preds = %102, %97
  br label %108

108:                                              ; preds = %11, %107, %93
  ret void
}

declare dso_local i32 @cvmx_debug_core_mask(...) #1

declare dso_local i32 @cvmx_debug_enabled(...) #1

declare dso_local i32 @cvmx_debug_init_globals(...) #1

declare dso_local i32 @cvmx_coremask_barrier_sync(i32) #1

declare dso_local i32 @cvmx_debug_globals_check_version(...) #1

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @cvmx_debug_install_handler(i32) #1

declare dso_local i32 @cvmx_spinlock_lock(i32*) #1

declare dso_local void @cvmx_debug_get_state(%struct.TYPE_7__* sret, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cvmx_debug_update_state(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8) #1

declare dso_local i32 @cvmx_spinlock_unlock(i32*) #1

declare dso_local i64 @cvmx_coremask_first_core(i32) #1

declare dso_local i32 @cvmx_debug_printf(i8*, i32) #1

declare dso_local i64 @cvmx_debug_booted(...) #1

declare dso_local i32 @cvmx_debug_trigger_exception(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
