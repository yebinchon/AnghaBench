; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_udp_svc_valid_udp_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_udp_svc_valid_udp_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_udp_header = type { i64, i32, i64 }
%union.socket_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DS_UDP_TAG = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@DS_UDP_IPV4_HDR_LEN = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@DS_UDP_IPV6_HDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds_udp_header*, %union.socket_addr*)* @udp_svc_valid_udp_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_svc_valid_udp_hdr(%struct.ds_udp_header* %0, %union.socket_addr* %1) #0 {
  %3 = alloca %struct.ds_udp_header*, align 8
  %4 = alloca %union.socket_addr*, align 8
  store %struct.ds_udp_header* %0, %struct.ds_udp_header** %3, align 8
  store %union.socket_addr* %1, %union.socket_addr** %4, align 8
  %5 = load %struct.ds_udp_header*, %struct.ds_udp_header** %3, align 8
  %6 = getelementptr inbounds %struct.ds_udp_header, %struct.ds_udp_header* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i32, i32* @DS_UDP_TAG, align 4
  %9 = call i64 @htobe32(i32 %8)
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %11, label %51

11:                                               ; preds = %2
  %12 = load %struct.ds_udp_header*, %struct.ds_udp_header** %3, align 8
  %13 = getelementptr inbounds %struct.ds_udp_header, %struct.ds_udp_header* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load %union.socket_addr*, %union.socket_addr** %4, align 8
  %18 = bitcast %union.socket_addr* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AF_INET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.ds_udp_header*, %struct.ds_udp_header** %3, align 8
  %25 = getelementptr inbounds %struct.ds_udp_header, %struct.ds_udp_header* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DS_UDP_IPV4_HDR_LEN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %49, label %29

29:                                               ; preds = %23, %16, %11
  %30 = load %struct.ds_udp_header*, %struct.ds_udp_header** %3, align 8
  %31 = getelementptr inbounds %struct.ds_udp_header, %struct.ds_udp_header* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 6
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %union.socket_addr*, %union.socket_addr** %4, align 8
  %36 = bitcast %union.socket_addr* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AF_INET6, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.ds_udp_header*, %struct.ds_udp_header** %3, align 8
  %43 = getelementptr inbounds %struct.ds_udp_header, %struct.ds_udp_header* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DS_UDP_IPV6_HDR_LEN, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %41, %34, %29
  %48 = phi i1 [ false, %34 ], [ false, %29 ], [ %46, %41 ]
  br label %49

49:                                               ; preds = %47, %23
  %50 = phi i1 [ true, %23 ], [ %48, %47 ]
  br label %51

51:                                               ; preds = %49, %2
  %52 = phi i1 [ false, %2 ], [ %50, %49 ]
  %53 = zext i1 %52 to i32
  ret i32 %53
}

declare dso_local i64 @htobe32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
