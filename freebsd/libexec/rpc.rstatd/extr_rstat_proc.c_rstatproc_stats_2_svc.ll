; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rpc.rstatd/extr_rstat_proc.c_rstatproc_stats_2_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rpc.rstatd/extr_rstat_proc.c_rstatproc_stats_2_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.svc_req = type { i32 }

@stat_is_init = common dso_local global i32 0, align 4
@sincelastreq = common dso_local global i64 0, align 8
@stats_all = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @rstatproc_stats_2_svc(i8* %0, %struct.svc_req* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.svc_req*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.svc_req* %1, %struct.svc_req** %4, align 8
  %5 = load i32, i32* @stat_is_init, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = call i32 (...) @stat_init()
  br label %9

9:                                                ; preds = %7, %2
  store i64 0, i64* @sincelastreq, align 8
  ret i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats_all, i32 0, i32 0)
}

declare dso_local i32 @stat_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
