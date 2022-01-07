; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_pcap_stats_linux.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_pcap_stats_linux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, %struct.pcap_linux* }
%struct.TYPE_4__ = type { i64 }
%struct.pcap_linux = type { i64, %struct.pcap_stat, i32, i32 }
%struct.pcap_stat = type { i32, i64, i32 }

@EOPNOTSUPP = common dso_local global i64 0, align 8
@PACKET_STATISTICS = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@SOL_PACKET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.pcap_stat*)* @pcap_stats_linux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_stats_linux(%struct.TYPE_5__* %0, %struct.pcap_stat* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.pcap_stat*, align 8
  %5 = alloca %struct.pcap_linux*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.pcap_stat* %1, %struct.pcap_stat** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %9 = load %struct.pcap_linux*, %struct.pcap_linux** %8, align 8
  store %struct.pcap_linux* %9, %struct.pcap_linux** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.pcap_linux*, %struct.pcap_linux** %5, align 8
  %17 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.pcap_linux*, %struct.pcap_linux** %5, align 8
  %20 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @linux_if_drops(i32 %21)
  %23 = load %struct.pcap_linux*, %struct.pcap_linux** %5, align 8
  %24 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.pcap_linux*, %struct.pcap_linux** %5, align 8
  %26 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load %struct.pcap_linux*, %struct.pcap_linux** %5, align 8
  %31 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %29
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 8
  br label %37

37:                                               ; preds = %15, %2
  %38 = load %struct.pcap_linux*, %struct.pcap_linux** %5, align 8
  %39 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.pcap_stat*, %struct.pcap_stat** %4, align 8
  %42 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.pcap_stat*, %struct.pcap_stat** %4, align 8
  %44 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.pcap_linux*, %struct.pcap_linux** %5, align 8
  %46 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.pcap_stat*, %struct.pcap_stat** %4, align 8
  %50 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  ret i32 0
}

declare dso_local i64 @linux_if_drops(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
