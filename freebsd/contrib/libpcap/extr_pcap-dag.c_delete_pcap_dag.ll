; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dag.c_delete_pcap_dag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dag.c_delete_pcap_dag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32* }

@pcap_dags = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @delete_pcap_dag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_pcap_dag(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %4, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pcap_dags, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %3, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = icmp ne i32* %12, %13
  br label %15

15:                                               ; preds = %9, %6
  %16 = phi i1 [ false, %6 ], [ %14, %9 ]
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %4, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %3, align 8
  br label %6

23:                                               ; preds = %15
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = icmp eq i32* %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %40, align 8
  br label %45

41:                                               ; preds = %32
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** @pcap_dags, align 8
  br label %45

45:                                               ; preds = %41, %35
  br label %46

46:                                               ; preds = %45, %26, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
