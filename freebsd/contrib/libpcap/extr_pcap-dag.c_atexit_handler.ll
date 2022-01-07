; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dag.c_atexit_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dag.c_atexit_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@pcap_dags = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @atexit_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atexit_handler() #0 {
  br label %1

1:                                                ; preds = %26, %0
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcap_dags, align 8
  %3 = icmp ne %struct.TYPE_2__* %2, null
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcap_dags, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i64 (...) @getpid()
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcap_dags, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcap_dags, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @dag_platform_cleanup(i32* %18)
  br label %20

20:                                               ; preds = %15, %10
  br label %26

21:                                               ; preds = %4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcap_dags, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @delete_pcap_dag(i32* %24)
  br label %26

26:                                               ; preds = %21, %20
  br label %1

27:                                               ; preds = %1
  ret void
}

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @dag_platform_cleanup(i32*) #1

declare dso_local i32 @delete_pcap_dag(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
