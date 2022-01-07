; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug.c_cvmx_debug_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug.c_cvmx_debug_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@cvmx_debug_globals = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [56 x i8] c"Debug _exit reached!, core %d, cvmx_debug_globals = %p\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"finished.\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"All cores done!\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"D0\00", align 1
@CVMX_MAX_CORES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Routing uart interrupts to Core #%u.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_debug_finish() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca i32, align 4
  %5 = call i32 (...) @cvmx_get_core_num()
  store i32 %5, i32* %1, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cvmx_debug_globals, align 8
  %7 = icmp ne %struct.TYPE_7__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %95

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cvmx_debug_globals, align 8
  %12 = call i32 (i8*, ...) @cvmx_debug_printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %10, %struct.TYPE_7__* %11)
  %13 = load i32, i32* @stdout, align 4
  %14 = call i32 @fflush(i32 %13)
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fflush(i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cvmx_debug_globals, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = call i32 @cvmx_spinlock_lock(i32* %18)
  call void (%struct.TYPE_6__*, ...) @cvmx_debug_get_state(%struct.TYPE_6__* sret %3)
  %20 = bitcast %struct.TYPE_6__* %2 to i8*
  %21 = bitcast %struct.TYPE_6__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 24, i1 false)
  %22 = load i32, i32* %1, align 4
  %23 = shl i32 1, %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = xor i32 %25, %23
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* %1, align 4
  %28 = shl i32 1, %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = call i32 @cvmx_debug_update_state(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %2)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %9
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @cvmx_debug_putcorepacket(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %9
  %40 = call i32 (...) @cvmx_debug_core_mask()
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %40, %42
  %44 = call i32 (...) @cvmx_debug_core_mask()
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = call i32 (i8*, ...) @cvmx_debug_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 @cvmx_debug_putpacket_noformat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  br label %54

54:                                               ; preds = %53, %39
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %1, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %82, %63
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @CVMX_MAX_CORES, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = shl i32 1, %71
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i32, i32* %4, align 4
  %77 = call i32 (i8*, ...) @cvmx_debug_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @cvmx_debug_set_focus_core(%struct.TYPE_6__* %2, i32 %78)
  %80 = call i32 @cvmx_debug_update_state(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %2)
  br label %85

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %64

85:                                               ; preds = %75, %64
  br label %86

86:                                               ; preds = %85, %59, %54
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cvmx_debug_globals, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = call i32 @cvmx_spinlock_unlock(i32* %88)
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = call i32 (...) @cvmx_debug_trigger_exception()
  br label %95

95:                                               ; preds = %8, %93, %86
  ret void
}

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @cvmx_debug_printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @cvmx_spinlock_lock(i32*) #1

declare dso_local void @cvmx_debug_get_state(%struct.TYPE_6__* sret, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cvmx_debug_update_state(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i32 @cvmx_debug_putcorepacket(i8*, i32) #1

declare dso_local i32 @cvmx_debug_core_mask(...) #1

declare dso_local i32 @cvmx_debug_putpacket_noformat(i8*) #1

declare dso_local i32 @cvmx_debug_set_focus_core(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cvmx_spinlock_unlock(i32*) #1

declare dso_local i32 @cvmx_debug_trigger_exception(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
