; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_udp.c_wpa_supplicant_ctrl_iface_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_udp.c_wpa_supplicant_ctrl_iface_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl_dst = type { %struct.wpa_ctrl_dst*, i32, i32, i32 }
%struct.sockaddr_in = type { i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"CTRL_IFACE monitor attached %s:%d\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_ctrl_dst**, %struct.sockaddr_in*, i32)* @wpa_supplicant_ctrl_iface_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_ctrl_iface_attach(%struct.wpa_ctrl_dst** %0, %struct.sockaddr_in* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_ctrl_dst**, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_ctrl_dst*, align 8
  store %struct.wpa_ctrl_dst** %0, %struct.wpa_ctrl_dst*** %5, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call %struct.wpa_ctrl_dst* @os_zalloc(i32 24)
  store %struct.wpa_ctrl_dst* %9, %struct.wpa_ctrl_dst** %8, align 8
  %10 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %8, align 8
  %11 = icmp eq %struct.wpa_ctrl_dst* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %40

13:                                               ; preds = %3
  %14 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %8, align 8
  %15 = getelementptr inbounds %struct.wpa_ctrl_dst, %struct.wpa_ctrl_dst* %14, i32 0, i32 3
  %16 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %17 = call i32 @os_memcpy(i32* %15, %struct.sockaddr_in* %16, i32 16)
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %8, align 8
  %20 = getelementptr inbounds %struct.wpa_ctrl_dst, %struct.wpa_ctrl_dst* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @MSG_INFO, align 4
  %22 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %8, align 8
  %23 = getelementptr inbounds %struct.wpa_ctrl_dst, %struct.wpa_ctrl_dst* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.wpa_ctrl_dst**, %struct.wpa_ctrl_dst*** %5, align 8
  %25 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %24, align 8
  %26 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %8, align 8
  %27 = getelementptr inbounds %struct.wpa_ctrl_dst, %struct.wpa_ctrl_dst* %26, i32 0, i32 0
  store %struct.wpa_ctrl_dst* %25, %struct.wpa_ctrl_dst** %27, align 8
  %28 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %8, align 8
  %29 = load %struct.wpa_ctrl_dst**, %struct.wpa_ctrl_dst*** %5, align 8
  store %struct.wpa_ctrl_dst* %28, %struct.wpa_ctrl_dst** %29, align 8
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @inet_ntoa(i32 %33)
  %35 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohs(i32 %37)
  %39 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %13, %12
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.wpa_ctrl_dst* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, %struct.sockaddr_in*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
