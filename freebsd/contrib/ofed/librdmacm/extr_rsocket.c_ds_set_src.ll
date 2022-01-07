; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_set_src.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_set_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.ds_header = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %union.socket_addr, i32 }
%union.socket_addr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.sockaddr, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr*, i32*, %struct.ds_header*)* @ds_set_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_set_src(%struct.sockaddr* %0, i32* %1, %struct.ds_header* %2) #0 {
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ds_header*, align 8
  %7 = alloca %union.socket_addr, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ds_header* %2, %struct.ds_header** %6, align 8
  %8 = call i32 @memset(%union.socket_addr* %7, i32 0, i32 16)
  %9 = load %struct.ds_header*, %struct.ds_header** %6, align 8
  %10 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %36

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ugt i64 %16, 12
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  store i32 12, i32* %19, align 4
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i32, i32* @AF_INET, align 4
  %22 = bitcast %union.socket_addr* %7 to %struct.TYPE_7__*
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ds_header*, %struct.ds_header** %6, align 8
  %25 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = bitcast %union.socket_addr* %7 to %struct.TYPE_7__*
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ds_header*, %struct.ds_header** %6, align 8
  %30 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = bitcast %union.socket_addr* %7 to %struct.TYPE_7__*
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  br label %66

36:                                               ; preds = %3
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ugt i64 %39, 16
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32*, i32** %5, align 8
  store i32 16, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %36
  %44 = load i32, i32* @AF_INET6, align 4
  %45 = bitcast %union.socket_addr* %7 to %struct.TYPE_8__*
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ds_header*, %struct.ds_header** %6, align 8
  %48 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = bitcast %union.socket_addr* %7 to %struct.TYPE_8__*
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ds_header*, %struct.ds_header** %6, align 8
  %53 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = bitcast %union.socket_addr* %7 to %struct.TYPE_8__*
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = bitcast %union.socket_addr* %7 to %struct.TYPE_8__*
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.ds_header*, %struct.ds_header** %6, align 8
  %62 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = call i32 @memcpy(%struct.sockaddr* %60, %union.socket_addr* %64, i32 16)
  br label %66

66:                                               ; preds = %43, %20
  %67 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(%struct.sockaddr* %67, %union.socket_addr* %7, i32 %69)
  ret void
}

declare dso_local i32 @memset(%union.socket_addr*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, %union.socket_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
