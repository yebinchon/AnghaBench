; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bpf.c_pcap_stats_bpf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bpf.c_pcap_stats_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.pcap_stat = type { i64, i32, i32 }
%struct.bpf_stat = type { i32, i32 }

@BIOCGSTATS = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"BIOCGSTATS\00", align 1
@PCAP_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.pcap_stat*)* @pcap_stats_bpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_stats_bpf(%struct.TYPE_3__* %0, %struct.pcap_stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.pcap_stat*, align 8
  %6 = alloca %struct.bpf_stat, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.pcap_stat* %1, %struct.pcap_stat** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BIOCGSTATS, align 4
  %11 = ptrtoint %struct.bpf_stat* %6 to i32
  %12 = call i64 @ioctl(i32 %9, i32 %10, i32 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @pcap_fmt_errmsg_for_errno(i32 %17, i32 %18, i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %21, i32* %3, align 4
  br label %33

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.bpf_stat, %struct.bpf_stat* %6, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pcap_stat*, %struct.pcap_stat** %5, align 8
  %26 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.bpf_stat, %struct.bpf_stat* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pcap_stat*, %struct.pcap_stat** %5, align 8
  %30 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.pcap_stat*, %struct.pcap_stat** %5, align 8
  %32 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %22, %14
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
