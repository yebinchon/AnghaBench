; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-tc.c_TcCleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-tc.c_TcCleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32*)*, i32 (i32*)* }
%struct.TYPE_5__ = type { %struct.pcap_tc* }
%struct.pcap_tc = type { i32*, i32*, i32* }

@g_TcFunctions = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @TcCleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TcCleanup(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.pcap_tc*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load %struct.pcap_tc*, %struct.pcap_tc** %5, align 8
  store %struct.pcap_tc* %6, %struct.pcap_tc** %3, align 8
  %7 = load %struct.pcap_tc*, %struct.pcap_tc** %3, align 8
  %8 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_TcFunctions, i32 0, i32 1), align 8
  %13 = load %struct.pcap_tc*, %struct.pcap_tc** %3, align 8
  %14 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 %12(i32* %15)
  %17 = load %struct.pcap_tc*, %struct.pcap_tc** %3, align 8
  %18 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.pcap_tc*, %struct.pcap_tc** %3, align 8
  %21 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_TcFunctions, i32 0, i32 0), align 8
  %26 = load %struct.pcap_tc*, %struct.pcap_tc** %3, align 8
  %27 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 %25(i32* %28)
  %30 = load %struct.pcap_tc*, %struct.pcap_tc** %3, align 8
  %31 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %24, %19
  %33 = load %struct.pcap_tc*, %struct.pcap_tc** %3, align 8
  %34 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.pcap_tc*, %struct.pcap_tc** %3, align 8
  %39 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @free(i32* %40)
  %42 = load %struct.pcap_tc*, %struct.pcap_tc** %3, align 8
  %43 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %32
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = call i32 @pcap_cleanup_live_common(%struct.TYPE_5__* %45)
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @pcap_cleanup_live_common(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
