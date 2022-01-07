; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_freebsd.c_l2_packet_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_freebsd.c_l2_packet_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_packet_data = type { i32, i32 (i32, i32, i8*, i64)*, i64 }
%struct.pcap_pkthdr = type { i32 }
%struct.l2_ethhdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @l2_packet_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_packet_receive(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.l2_packet_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pcap_pkthdr, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.l2_ethhdr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.l2_packet_data*
  store %struct.l2_packet_data* %15, %struct.l2_packet_data** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32* @pcap_next(i32* %18, %struct.pcap_pkthdr* %9)
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %9, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 4
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %3
  br label %62

28:                                               ; preds = %22
  %29 = load i32*, i32** %10, align 8
  %30 = bitcast i32* %29 to %struct.l2_ethhdr*
  store %struct.l2_ethhdr* %30, %struct.l2_ethhdr** %11, align 8
  %31 = load %struct.l2_packet_data*, %struct.l2_packet_data** %7, align 8
  %32 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %11, align 8
  %37 = bitcast %struct.l2_ethhdr* %36 to i8*
  store i8* %37, i8** %12, align 8
  %38 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %13, align 8
  br label %49

41:                                               ; preds = %28
  %42 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %11, align 8
  %43 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %42, i64 1
  %44 = bitcast %struct.l2_ethhdr* %43 to i8*
  store i8* %44, i8** %12, align 8
  %45 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 %47, 4
  store i64 %48, i64* %13, align 8
  br label %49

49:                                               ; preds = %41, %35
  %50 = load %struct.l2_packet_data*, %struct.l2_packet_data** %7, align 8
  %51 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %50, i32 0, i32 1
  %52 = load i32 (i32, i32, i8*, i64)*, i32 (i32, i32, i8*, i64)** %51, align 8
  %53 = load %struct.l2_packet_data*, %struct.l2_packet_data** %7, align 8
  %54 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %11, align 8
  %57 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i32 %52(i32 %55, i32 %58, i8* %59, i64 %60)
  br label %62

62:                                               ; preds = %49, %27
  ret void
}

declare dso_local i32* @pcap_next(i32*, %struct.pcap_pkthdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
