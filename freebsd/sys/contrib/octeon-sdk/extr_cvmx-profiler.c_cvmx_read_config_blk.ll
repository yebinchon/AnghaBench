; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-profiler.c_cvmx_read_config_blk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-profiler.c_cvmx_read_config_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EVENT_BUFFER_CONFIG_BLOCK = common dso_local global i32 0, align 4
@eccb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@cvmx_config_block_t = common dso_local global i32 0, align 4
@events = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cfg_blk.events=%lu, sample_count=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cvmx_read_config_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_read_config_blk() #0 {
  %1 = load i32, i32* @EVENT_BUFFER_CONFIG_BLOCK, align 4
  %2 = call i64 @cvmx_get_memory_addr(i32 %1)
  %3 = inttoptr i64 %2 to i8*
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eccb, i32 0, i32 0), align 8
  %4 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eccb, i32 0, i32 0), align 8
  %5 = load i32, i32* @cvmx_config_block_t, align 4
  %6 = load i32, i32* @events, align 4
  %7 = call i32 @offsetof(i32 %5, i32 %6)
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %4, i64 %8
  %10 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eccb, i32 0, i32 1, i32 1), i8* %9, i32 4)
  %11 = call i32 @cvmx_atomic_set32(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eccb, i32 0, i32 2), i32 1)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eccb, i32 0, i32 1, i32 1), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eccb, i32 0, i32 1, i32 0), align 8
  %14 = call i32 @PRINTF(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  ret void
}

declare dso_local i64 @cvmx_get_memory_addr(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @cvmx_atomic_set32(i32*, i32) #1

declare dso_local i32 @PRINTF(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
