; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_pcap_sendqueue_transmit_npf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_pcap_sendqueue_transmit_npf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.pcap_win* }
%struct.pcap_win = type { i32* }
%struct.TYPE_6__ = type { i32, i32 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Cannot transmit a queue to an offline capture or to a TurboCap port\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error opening adapter: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*, i32)* @pcap_sendqueue_transmit_npf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_sendqueue_transmit_npf(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcap_win*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.pcap_win*, %struct.pcap_win** %14, align 8
  store %struct.pcap_win* %15, %struct.pcap_win** %8, align 8
  %16 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load %struct.pcap_win*, %struct.pcap_win** %8, align 8
  %22 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %30 = call i32 (i32, i32, i8*, ...) @pcap_snprintf(i32 %28, i32 %29, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %58

31:                                               ; preds = %3
  %32 = load %struct.pcap_win*, %struct.pcap_win** %8, align 8
  %33 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @PacketSendPackets(i32* %34, i32 %37, i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %31
  %49 = call i32 (...) @GetLastError()
  %50 = call i32 @pcap_win32_err_to_str(i32 %49, i8* %20)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %55 = call i32 (i32, i32, i8*, ...) @pcap_snprintf(i32 %53, i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %56

56:                                               ; preds = %48, %31
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %58

58:                                               ; preds = %56, %25
  %59 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pcap_snprintf(i32, i32, i8*, ...) #2

declare dso_local i32 @PacketSendPackets(i32*, i32, i32, i32) #2

declare dso_local i32 @pcap_win32_err_to_str(i32, i8*) #2

declare dso_local i32 @GetLastError(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
