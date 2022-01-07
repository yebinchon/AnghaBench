; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_read_rpcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_read_rpcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.pcap_rpcap* }
%struct.pcap_rpcap = type { i32, i64 }
%struct.pcap_pkthdr = type { i32 }

@PCAP_ERROR_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32 (i32*, %struct.pcap_pkthdr*, i32*)*, i32*)* @pcap_read_rpcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_read_rpcap(%struct.TYPE_5__* %0, i32 %1, i32 (i32*, %struct.pcap_pkthdr*, i32*)* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32*, %struct.pcap_pkthdr*, i32*)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pcap_rpcap*, align 8
  %11 = alloca %struct.pcap_pkthdr, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i32*, %struct.pcap_pkthdr*, i32*)* %2, i32 (i32*, %struct.pcap_pkthdr*, i32*)** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %16, align 8
  store %struct.pcap_rpcap* %17, %struct.pcap_rpcap** %10, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %10, align 8
  %19 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %4
  %23 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %10, align 8
  %24 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = call i64 @pcap_startcapture_remote(%struct.TYPE_5__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %85

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %22
  br label %34

34:                                               ; preds = %33, %4
  br label %35

35:                                               ; preds = %82, %34
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @PACKET_COUNT_IS_UNLIMITED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i1 [ true, %35 ], [ %42, %39 ]
  br i1 %44, label %45, label %83

45:                                               ; preds = %43
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @PCAP_ERROR_BREAK, align 4
  store i32 %53, i32* %5, align 4
  br label %85

54:                                               ; preds = %45
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = call i32 @pcap_read_nocb_remote(%struct.TYPE_5__* %55, %struct.pcap_pkthdr* %11, i32** %12)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32 (i32*, %struct.pcap_pkthdr*, i32*)*, i32 (i32*, %struct.pcap_pkthdr*, i32*)** %8, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 %60(i32* %61, %struct.pcap_pkthdr* %11, i32* %62)
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %82

66:                                               ; preds = %54
  %67 = load i32, i32* %14, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %5, align 4
  br label %85

71:                                               ; preds = %66
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* @PCAP_ERROR_BREAK, align 4
  store i32 %79, i32* %5, align 4
  br label %85

80:                                               ; preds = %71
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %5, align 4
  br label %85

82:                                               ; preds = %59
  br label %35

83:                                               ; preds = %43
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %83, %80, %76, %69, %50, %31
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i64 @pcap_startcapture_remote(%struct.TYPE_5__*) #1

declare dso_local i64 @PACKET_COUNT_IS_UNLIMITED(i32) #1

declare dso_local i32 @pcap_read_nocb_remote(%struct.TYPE_5__*, %struct.pcap_pkthdr*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
