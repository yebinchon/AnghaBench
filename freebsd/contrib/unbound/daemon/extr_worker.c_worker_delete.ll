; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { i64, i32, %struct.TYPE_2__, i32, i32, i32, %struct.worker*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64 }

@verbosity = common dso_local global i64 0, align 8
@VERB_OPS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"mesh has\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @worker_delete(%struct.worker* %0) #0 {
  %2 = alloca %struct.worker*, align 8
  store %struct.worker* %0, %struct.worker** %2, align 8
  %3 = load %struct.worker*, %struct.worker** %2, align 8
  %4 = icmp ne %struct.worker* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %113

6:                                                ; preds = %1
  %7 = load %struct.worker*, %struct.worker** %2, align 8
  %8 = getelementptr inbounds %struct.worker, %struct.worker* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %6
  %13 = load i64, i64* @verbosity, align 8
  %14 = load i64, i64* @VERB_OPS, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load %struct.worker*, %struct.worker** %2, align 8
  %18 = getelementptr inbounds %struct.worker, %struct.worker* %17, i32 0, i32 12
  %19 = load %struct.worker*, %struct.worker** %2, align 8
  %20 = load %struct.worker*, %struct.worker** %2, align 8
  %21 = getelementptr inbounds %struct.worker, %struct.worker* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @server_stats_log(i32* %18, %struct.worker* %19, i64 %22)
  %24 = load %struct.worker*, %struct.worker** %2, align 8
  %25 = getelementptr inbounds %struct.worker, %struct.worker* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @mesh_stats(i64 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.worker*, %struct.worker** %2, align 8
  %30 = call i32 @worker_mem_report(%struct.worker* %29, i32* null)
  br label %31

31:                                               ; preds = %16, %12, %6
  %32 = load %struct.worker*, %struct.worker** %2, align 8
  %33 = getelementptr inbounds %struct.worker, %struct.worker* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @outside_network_quit_prepare(i32 %34)
  %36 = load %struct.worker*, %struct.worker** %2, align 8
  %37 = getelementptr inbounds %struct.worker, %struct.worker* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @mesh_delete(i64 %39)
  %41 = load %struct.worker*, %struct.worker** %2, align 8
  %42 = getelementptr inbounds %struct.worker, %struct.worker* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @sldns_buffer_free(i32 %44)
  %46 = load %struct.worker*, %struct.worker** %2, align 8
  %47 = getelementptr inbounds %struct.worker, %struct.worker* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @forwards_delete(i32 %49)
  %51 = load %struct.worker*, %struct.worker** %2, align 8
  %52 = getelementptr inbounds %struct.worker, %struct.worker* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @hints_delete(i32 %54)
  %56 = load %struct.worker*, %struct.worker** %2, align 8
  %57 = getelementptr inbounds %struct.worker, %struct.worker* %56, i32 0, i32 11
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @listen_delete(i32 %58)
  %60 = load %struct.worker*, %struct.worker** %2, align 8
  %61 = getelementptr inbounds %struct.worker, %struct.worker* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @outside_network_delete(i32 %62)
  %64 = load %struct.worker*, %struct.worker** %2, align 8
  %65 = getelementptr inbounds %struct.worker, %struct.worker* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @comm_signal_delete(i32 %66)
  %68 = load %struct.worker*, %struct.worker** %2, align 8
  %69 = getelementptr inbounds %struct.worker, %struct.worker* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @tube_delete(i32 %70)
  %72 = load %struct.worker*, %struct.worker** %2, align 8
  %73 = getelementptr inbounds %struct.worker, %struct.worker* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @comm_timer_delete(i32 %74)
  %76 = load %struct.worker*, %struct.worker** %2, align 8
  %77 = getelementptr inbounds %struct.worker, %struct.worker* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @comm_timer_delete(i32 %79)
  %81 = load %struct.worker*, %struct.worker** %2, align 8
  %82 = getelementptr inbounds %struct.worker, %struct.worker* %81, i32 0, i32 6
  %83 = load %struct.worker*, %struct.worker** %82, align 8
  %84 = call i32 @free(%struct.worker* %83)
  %85 = load %struct.worker*, %struct.worker** %2, align 8
  %86 = getelementptr inbounds %struct.worker, %struct.worker* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %31
  br label %90

90:                                               ; preds = %89, %31
  %91 = load %struct.worker*, %struct.worker** %2, align 8
  %92 = getelementptr inbounds %struct.worker, %struct.worker* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @comm_base_delete(i32 %93)
  %95 = load %struct.worker*, %struct.worker** %2, align 8
  %96 = getelementptr inbounds %struct.worker, %struct.worker* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ub_randfree(i32 %97)
  %99 = load %struct.worker*, %struct.worker** %2, align 8
  %100 = getelementptr inbounds %struct.worker, %struct.worker* %99, i32 0, i32 3
  %101 = call i32 @alloc_clear(i32* %100)
  %102 = load %struct.worker*, %struct.worker** %2, align 8
  %103 = getelementptr inbounds %struct.worker, %struct.worker* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @regional_destroy(i32 %105)
  %107 = load %struct.worker*, %struct.worker** %2, align 8
  %108 = getelementptr inbounds %struct.worker, %struct.worker* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @regional_destroy(i32 %109)
  %111 = load %struct.worker*, %struct.worker** %2, align 8
  %112 = call i32 @free(%struct.worker* %111)
  br label %113

113:                                              ; preds = %90, %5
  ret void
}

declare dso_local i32 @server_stats_log(i32*, %struct.worker*, i64) #1

declare dso_local i32 @mesh_stats(i64, i8*) #1

declare dso_local i32 @worker_mem_report(%struct.worker*, i32*) #1

declare dso_local i32 @outside_network_quit_prepare(i32) #1

declare dso_local i32 @mesh_delete(i64) #1

declare dso_local i32 @sldns_buffer_free(i32) #1

declare dso_local i32 @forwards_delete(i32) #1

declare dso_local i32 @hints_delete(i32) #1

declare dso_local i32 @listen_delete(i32) #1

declare dso_local i32 @outside_network_delete(i32) #1

declare dso_local i32 @comm_signal_delete(i32) #1

declare dso_local i32 @tube_delete(i32) #1

declare dso_local i32 @comm_timer_delete(i32) #1

declare dso_local i32 @free(%struct.worker*) #1

declare dso_local i32 @comm_base_delete(i32) #1

declare dso_local i32 @ub_randfree(i32) #1

declare dso_local i32 @alloc_clear(i32*) #1

declare dso_local i32 @regional_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
