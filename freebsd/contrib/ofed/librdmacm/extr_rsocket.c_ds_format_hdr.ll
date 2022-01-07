; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_format_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_format_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_header = type { i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%union.socket_addr = type { %struct.TYPE_7__, [8 x i8] }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@AF_INET = common dso_local global i64 0, align 8
@DS_IPV4_HDR_LEN = common dso_local global i32 0, align 4
@DS_IPV6_HDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds_header*, %union.socket_addr*)* @ds_format_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_format_hdr(%struct.ds_header* %0, %union.socket_addr* %1) #0 {
  %3 = alloca %struct.ds_header*, align 8
  %4 = alloca %union.socket_addr*, align 8
  store %struct.ds_header* %0, %struct.ds_header** %3, align 8
  store %union.socket_addr* %1, %union.socket_addr** %4, align 8
  %5 = load %union.socket_addr*, %union.socket_addr** %4, align 8
  %6 = bitcast %union.socket_addr* %5 to %struct.TYPE_7__*
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AF_INET, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load %struct.ds_header*, %struct.ds_header** %3, align 8
  %13 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %12, i32 0, i32 0
  store i32 4, i32* %13, align 4
  %14 = load i32, i32* @DS_IPV4_HDR_LEN, align 4
  %15 = load %struct.ds_header*, %struct.ds_header** %3, align 8
  %16 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %union.socket_addr*, %union.socket_addr** %4, align 8
  %18 = bitcast %union.socket_addr* %17 to %struct.TYPE_9__*
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ds_header*, %struct.ds_header** %3, align 8
  %22 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %union.socket_addr*, %union.socket_addr** %4, align 8
  %24 = bitcast %union.socket_addr* %23 to %struct.TYPE_9__*
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ds_header*, %struct.ds_header** %3, align 8
  %29 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  br label %59

31:                                               ; preds = %2
  %32 = load %struct.ds_header*, %struct.ds_header** %3, align 8
  %33 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %32, i32 0, i32 0
  store i32 6, i32* %33, align 4
  %34 = load i32, i32* @DS_IPV6_HDR_LEN, align 4
  %35 = load %struct.ds_header*, %struct.ds_header** %3, align 8
  %36 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %union.socket_addr*, %union.socket_addr** %4, align 8
  %38 = bitcast %union.socket_addr* %37 to %struct.TYPE_12__*
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ds_header*, %struct.ds_header** %3, align 8
  %42 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %union.socket_addr*, %union.socket_addr** %4, align 8
  %44 = bitcast %union.socket_addr* %43 to %struct.TYPE_12__*
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ds_header*, %struct.ds_header** %3, align 8
  %48 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load %struct.ds_header*, %struct.ds_header** %3, align 8
  %52 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %union.socket_addr*, %union.socket_addr** %4, align 8
  %56 = bitcast %union.socket_addr* %55 to %struct.TYPE_12__*
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = call i32 @memcpy(i32* %54, i32* %57, i32 16)
  br label %59

59:                                               ; preds = %31, %11
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
