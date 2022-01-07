; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sl.c_sl_bsdos_if_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sl.c_sl_bsdos_if_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.pcap_pkthdr = type { i64, i64 }
%struct.ip = type { i32 }

@SLIP_HDRLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sl_bsdos_if_print(%struct.TYPE_6__* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.pcap_pkthdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ip*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %12 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %15 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @SLIP_HDRLEN, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = load i32, i32* @tstr, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.TYPE_6__*
  %25 = call i32 @ND_PRINT(%struct.TYPE_6__* %24)
  %26 = load i64, i64* %8, align 8
  store i64 %26, i64* %4, align 8
  br label %41

27:                                               ; preds = %3
  %28 = load i64, i64* @SLIP_HDRLEN, align 8
  %29 = load i64, i64* %9, align 8
  %30 = sub nsw i64 %29, %28
  store i64 %30, i64* %9, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* @SLIP_HDRLEN, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = bitcast i32* %33 to %struct.ip*
  store %struct.ip* %34, %struct.ip** %10, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = load %struct.ip*, %struct.ip** %10, align 8
  %37 = bitcast %struct.ip* %36 to i32*
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @ip_print(%struct.TYPE_6__* %35, i32* %37, i64 %38)
  %40 = load i64, i64* @SLIP_HDRLEN, align 8
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %27, %20
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @ip_print(%struct.TYPE_6__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
