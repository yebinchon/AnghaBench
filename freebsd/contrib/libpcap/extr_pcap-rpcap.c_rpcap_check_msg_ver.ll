; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_rpcap_check_msg_ver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_rpcap_check_msg_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcap_header = type { i64, i32 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Server sent us a message with version %u when we were expecting %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.rpcap_header*, i8*)* @rpcap_check_msg_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcap_check_msg_ver(i32 %0, i64 %1, %struct.rpcap_header* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.rpcap_header*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store %struct.rpcap_header* %2, %struct.rpcap_header** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.rpcap_header*, %struct.rpcap_header** %8, align 8
  %11 = getelementptr inbounds %struct.rpcap_header, %struct.rpcap_header* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.rpcap_header*, %struct.rpcap_header** %8, align 8
  %18 = getelementptr inbounds %struct.rpcap_header, %struct.rpcap_header* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @rpcap_discard(i32 %16, i32 %19, i8* %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 -1, i32* %5, align 4
  br label %37

24:                                               ; preds = %15
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %30 = load %struct.rpcap_header*, %struct.rpcap_header** %8, align 8
  %31 = getelementptr inbounds %struct.rpcap_header, %struct.rpcap_header* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @pcap_snprintf(i8* %28, i32 %29, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %33)
  br label %35

35:                                               ; preds = %27, %24
  store i32 -1, i32* %5, align 4
  br label %37

36:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %35, %23
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @rpcap_discard(i32, i32, i8*) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
