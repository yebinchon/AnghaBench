; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_rpcap_doauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_rpcap_doauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_rmtauth = type { i32 }

@RPCAP_MAX_VERSION = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"The server doesn't support any protocol version that we support\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"rpcap_sendauth() returned %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.pcap_rmtauth*, i8*)* @rpcap_doauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcap_doauth(i32 %0, i32* %1, %struct.pcap_rmtauth* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pcap_rmtauth*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.pcap_rmtauth* %2, %struct.pcap_rmtauth** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* @RPCAP_MAX_VERSION, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load %struct.pcap_rmtauth*, %struct.pcap_rmtauth** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @rpcap_sendauth(i32 %13, i32* %14, %struct.pcap_rmtauth* %15, i8* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %50

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %50

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.pcap_rmtauth*, %struct.pcap_rmtauth** %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @rpcap_sendauth(i32 %26, i32* %27, %struct.pcap_rmtauth* %28, i8* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %50

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %50

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, -2
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %44 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %42, i32 %43, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %50

45:                                               ; preds = %38
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %46, i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 -1, i32* %5, align 4
  br label %50

50:                                               ; preds = %45, %41, %37, %33, %24, %20
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @rpcap_sendauth(i32, i32*, %struct.pcap_rmtauth*, i8*) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
