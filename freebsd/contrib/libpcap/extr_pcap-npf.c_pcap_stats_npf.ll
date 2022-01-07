; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_pcap_stats_npf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_pcap_stats_npf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.pcap_win* }
%struct.pcap_win = type { i32 }
%struct.pcap_stat = type { i32, i32, i32 }
%struct.bpf_stat = type { i32, i32, i32 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"PacketGetStats error: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.pcap_stat*)* @pcap_stats_npf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_stats_npf(%struct.TYPE_3__* %0, %struct.pcap_stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.pcap_stat*, align 8
  %6 = alloca %struct.pcap_win*, align 8
  %7 = alloca %struct.bpf_stat, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.pcap_stat* %1, %struct.pcap_stat** %5, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.pcap_win*, %struct.pcap_win** %12, align 8
  store %struct.pcap_win* %13, %struct.pcap_win** %6, align 8
  %14 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.pcap_win*, %struct.pcap_win** %6, align 8
  %20 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PacketGetStats(i32 %21, %struct.bpf_stat* %7)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %2
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 @pcap_win32_err_to_str(i32 %25, i8* %18)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %31 = call i32 @pcap_snprintf(i32 %29, i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %43

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.bpf_stat, %struct.bpf_stat* %7, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pcap_stat*, %struct.pcap_stat** %5, align 8
  %36 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.bpf_stat, %struct.bpf_stat* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pcap_stat*, %struct.pcap_stat** %5, align 8
  %40 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.pcap_stat*, %struct.pcap_stat** %5, align 8
  %42 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %43

43:                                               ; preds = %32, %24
  %44 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PacketGetStats(i32, %struct.bpf_stat*) #2

declare dso_local i32 @pcap_win32_err_to_str(i32, i8*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @pcap_snprintf(i32, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
