; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_linux_check_direction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_linux_check_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.pcap_linux* }
%struct.pcap_linux = type { i64 }
%struct.sockaddr_ll = type { i64, i64, i64 }

@PACKET_OUTGOING = common dso_local global i64 0, align 8
@LINUX_SLL_P_CAN = common dso_local global i64 0, align 8
@LINUX_SLL_P_CANFD = common dso_local global i64 0, align 8
@PCAP_D_OUT = common dso_local global i64 0, align 8
@PCAP_D_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.sockaddr_ll*)* @linux_check_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_check_direction(%struct.TYPE_3__* %0, %struct.sockaddr_ll* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.sockaddr_ll*, align 8
  %6 = alloca %struct.pcap_linux*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.sockaddr_ll* %1, %struct.sockaddr_ll** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.pcap_linux*, %struct.pcap_linux** %8, align 8
  store %struct.pcap_linux* %9, %struct.pcap_linux** %6, align 8
  %10 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %5, align 8
  %11 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PACKET_OUTGOING, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %2
  %16 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %5, align 8
  %17 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.pcap_linux*, %struct.pcap_linux** %6, align 8
  %20 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %60

24:                                               ; preds = %15
  %25 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %5, align 8
  %26 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LINUX_SLL_P_CAN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %5, align 8
  %32 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LINUX_SLL_P_CANFD, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30, %24
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PCAP_D_OUT, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %60

43:                                               ; preds = %36, %30
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PCAP_D_IN, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %60

50:                                               ; preds = %43
  br label %59

51:                                               ; preds = %2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PCAP_D_OUT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %60

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %50
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %57, %49, %42, %23
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
