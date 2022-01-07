; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-profiler.c_cvmx_collect_sample.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-profiler.c_cvmx_collect_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@eccb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@read_percpu_block = common dso_local global i64 0, align 8
@EVENT_PERCPU_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_collect_sample() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eccb, i32 0, i32 1), align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call i32 (...) @cvmx_read_config_blk()
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i64, i64* @read_percpu_block, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = call i32 (...) @cvmx_get_core_num()
  %10 = load i32, i32* @EVENT_PERCPU_BUFFER_SIZE, align 4
  %11 = call i32 @cvmx_init_pcpu_block(i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %8, %5
  %13 = call i32 (...) @cvmx_add_sample_to_buffer()
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eccb, i32 0, i32 0, i32 0), align 4
  %15 = call i32 @cvmx_reset_perf_counter(i32 0, i32 %14)
  ret void
}

declare dso_local i32 @cvmx_read_config_blk(...) #1

declare dso_local i32 @cvmx_init_pcpu_block(i32, i32) #1

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @cvmx_add_sample_to_buffer(...) #1

declare dso_local i32 @cvmx_reset_perf_counter(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
