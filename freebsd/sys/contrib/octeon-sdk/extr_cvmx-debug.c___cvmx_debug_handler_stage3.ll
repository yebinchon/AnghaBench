; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug.c___cvmx_debug_handler_stage3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug.c___cvmx_debug_handler_stage3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64, i32 }
%struct.TYPE_21__ = type { i32, i32 (%struct.TYPE_25__*, i32)* }
%struct.TYPE_25__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Entering debug exception handler\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Debug named block at %p\0A\00", align 1
@cvmx_debug_globals = common dso_local global %struct.TYPE_20__* null, align 8
@__cvmx_debug_mode_exception_occured = common dso_local global i64 0, align 8
@COP0_DEPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"Unexpected debug-mode exception occured at 0x%llx, 0x%llx spinning\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Communication changed: %d\0A\00", align 1
@COMM_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"Unknown communication spinning: %lld > %d.\0A\00", align 1
@cvmx_debug_comms = common dso_local global %struct.TYPE_21__** null, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"Starting to proxy\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Starting to wait for remote host\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Exiting debug exception handler\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cvmx_debug_handler_stage3(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_23__, align 4
  %9 = alloca %struct.TYPE_23__, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__, align 4
  %12 = alloca %struct.TYPE_23__, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__, align 4
  %15 = alloca %struct.TYPE_24__, align 4
  %16 = alloca %struct.TYPE_23__, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %17 = call i32 (i8*, ...) @cvmx_debug_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cvmx_debug_globals, align 8
  %19 = call i32 (i8*, ...) @cvmx_debug_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_20__* %18)
  %20 = load i64, i64* @__cvmx_debug_mode_exception_occured, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @COP0_DEPC, align 4
  %25 = call i32 @CVMX_MF_COP0(i64 %23, i32 %24)
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @__cvmx_debug_mode_exception_occured, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i64 %26, i32 %28)
  br label %30

30:                                               ; preds = %22, %30
  br label %30

31:                                               ; preds = %2
  %32 = call %struct.TYPE_25__* (...) @cvmx_debug_core_context()
  store %struct.TYPE_25__* %32, %struct.TYPE_25__** %5, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @cvmx_debug_save_core_context(%struct.TYPE_25__* %33, i64 %34, i64 %35)
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cvmx_debug_globals, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 2
  %39 = call i32 @cvmx_spinlock_lock(i32* %38)
  %40 = call i32 (...) @cvmx_debug_get_state()
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = bitcast %struct.TYPE_23__* %8 to i8*
  %43 = bitcast %struct.TYPE_23__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cvmx_debug_update_state(i32 %46)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cvmx_debug_globals, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 2
  %50 = call i32 @cvmx_spinlock_unlock(i32* %49)
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %52 = call i32 @cvmx_debug_print_cause(%struct.TYPE_25__* %51)
  br label %53

53:                                               ; preds = %157, %31
  store i32 0, i32* %6, align 4
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cvmx_debug_globals, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 2
  %56 = call i32 @cvmx_spinlock_lock(i32* %55)
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cvmx_debug_globals, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %53
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cvmx_debug_globals, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 (i8*, ...) @cvmx_debug_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cvmx_debug_globals, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @COMM_SIZE, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %61
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cvmx_debug_globals, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @COMM_SIZE, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %75, i32 %77)
  br label %79

79:                                               ; preds = %72, %79
  br label %79

80:                                               ; preds = %61
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cvmx_debug_globals, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, 1
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cvmx_debug_globals, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cvmx_debug_globals, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %80, %53
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cvmx_debug_globals, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 2
  %92 = call i32 @cvmx_spinlock_unlock(i32* %91)
  %93 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @cvmx_debug_comms, align 8
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cvmx_debug_globals, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %93, i64 %96
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %10, align 4
  %101 = call i32 (...) @cvmx_get_core_num()
  store i32 %101, i32* %13, align 4
  %102 = call i32 (...) @cvmx_debug_get_state()
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = bitcast %struct.TYPE_23__* %12 to i8*
  %105 = bitcast %struct.TYPE_23__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 4 %105, i64 4, i1 false)
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load volatile i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %10, align 4
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @cvmx_debug_stop_core(i32 %114, i32 %111, %struct.TYPE_24__* %11, i32 %112)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %89
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  store volatile i32 %119, i32* %122, align 4
  br label %160

123:                                              ; preds = %89
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %123
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = load volatile i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  store i32 %130, i32* %131, align 4
  %132 = call i32 (i8*, ...) @cvmx_debug_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %134 = call i32 @cvmx_debug_perform_proxy(%struct.TYPE_24__* %15, %struct.TYPE_25__* %133)
  store i32 %134, i32* %6, align 4
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  store volatile i32 %136, i32* %139, align 4
  br label %156

140:                                              ; preds = %123
  %141 = call i32 (i8*, ...) @cvmx_debug_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %142 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @cvmx_debug_comms, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cvmx_debug_globals, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %142, i64 %145
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 1
  %149 = load i32 (%struct.TYPE_25__*, i32)*, i32 (%struct.TYPE_25__*, i32)** %148, align 8
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %151 = call i32 (...) @cvmx_debug_get_state()
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  store i32 %151, i32* %152, align 4
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 %149(%struct.TYPE_25__* %150, i32 %154)
  br label %156

156:                                              ; preds = %140, %126
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %6, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %53, label %160

160:                                              ; preds = %157, %117
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %162 = call i32 @cvmx_debug_clear_status(%struct.TYPE_25__* %161)
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %164 = call i32 @cvmx_debug_restore_core_context(%struct.TYPE_25__* %163)
  %165 = call i32 (i8*, ...) @cvmx_debug_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cvmx_debug_printf(i8*, ...) #1

declare dso_local i32 @CVMX_MF_COP0(i64, i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i64, i32) #1

declare dso_local %struct.TYPE_25__* @cvmx_debug_core_context(...) #1

declare dso_local i32 @cvmx_debug_save_core_context(%struct.TYPE_25__*, i64, i64) #1

declare dso_local i32 @cvmx_spinlock_lock(i32*) #1

declare dso_local i32 @cvmx_debug_get_state(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cvmx_debug_update_state(i32) #1

declare dso_local i32 @cvmx_spinlock_unlock(i32*) #1

declare dso_local i32 @cvmx_debug_print_cause(%struct.TYPE_25__*) #1

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @cvmx_debug_stop_core(i32, i32, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @cvmx_debug_perform_proxy(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @cvmx_debug_clear_status(%struct.TYPE_25__*) #1

declare dso_local i32 @cvmx_debug_restore_core_context(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
