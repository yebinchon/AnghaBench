; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_fils_hlp.c_fils_process_hlp_udp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_fils_hlp.c_fils_process_hlp_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i32 }
%struct.iphdr = type { i32 }
%struct.udphdr = type { i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"FILS: HLP request UDP: sport=%u dport=%u ulen=%u sum=0x%x\00", align 1
@DHCP_SERVER_PORT = common dso_local global i32 0, align 4
@DHCP_CLIENT_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.sta_info*, i32*, i32*, i64)* @fils_process_hlp_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fils_process_hlp_udp(%struct.hostapd_data* %0, %struct.sta_info* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostapd_data*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca %struct.udphdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %7, align 8
  store %struct.sta_info* %1, %struct.sta_info** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = icmp ult i64 %17, 20
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %77

20:                                               ; preds = %5
  %21 = load i32*, i32** %10, align 8
  %22 = bitcast i32* %21 to %struct.iphdr*
  store %struct.iphdr* %22, %struct.iphdr** %12, align 8
  %23 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %24 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %23, i64 1
  %25 = bitcast %struct.iphdr* %24 to %struct.udphdr*
  store %struct.udphdr* %25, %struct.udphdr** %13, align 8
  %26 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %27 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ntohs(i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %31 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ntohs(i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %35 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ntohs(i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %43 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ntohs(i32 %44)
  %46 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41, i32 %45)
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %48, 16
  br i1 %49, label %56, label %50

50:                                               ; preds = %20
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %11, align 8
  %54 = sub i64 %53, 4
  %55 = icmp ugt i64 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %20
  store i32 0, i32* %6, align 4
  br label %77

57:                                               ; preds = %50
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @DHCP_SERVER_PORT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @DHCP_CLIENT_PORT, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %67 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %68 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %69 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %68, i64 1
  %70 = bitcast %struct.udphdr* %69 to i32*
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = sub i64 %72, 16
  %74 = trunc i64 %73 to i32
  %75 = call i32 @fils_process_hlp_dhcp(%struct.hostapd_data* %66, %struct.sta_info* %67, i32* %70, i32 %74)
  store i32 %75, i32* %6, align 4
  br label %77

76:                                               ; preds = %61, %57
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %65, %56, %19
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @fils_process_hlp_dhcp(%struct.hostapd_data*, %struct.sta_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
