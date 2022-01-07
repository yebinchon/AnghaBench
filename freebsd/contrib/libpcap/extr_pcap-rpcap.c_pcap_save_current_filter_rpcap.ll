; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_save_current_filter_rpcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_save_current_filter_rpcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.pcap_rpcap* }
%struct.pcap_rpcap = type { i32, i64, i64 }

@PCAP_OPENFLAG_NOCAPTURE_RPCAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @pcap_save_current_filter_rpcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcap_save_current_filter_rpcap(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcap_rpcap*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %7, align 8
  store %struct.pcap_rpcap* %8, %struct.pcap_rpcap** %5, align 8
  %9 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %5, align 8
  %10 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %2
  %14 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %5, align 8
  %15 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PCAP_OPENFLAG_NOCAPTURE_RPCAP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %13
  %21 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %5, align 8
  %22 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %5, align 8
  %27 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @free(i64 %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i8*, i8** %4, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @strdup(i8* %35)
  %37 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %5, align 8
  %38 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %34, %13, %2
  ret void
}

declare dso_local i32 @free(i64) #1

declare dso_local i64 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
