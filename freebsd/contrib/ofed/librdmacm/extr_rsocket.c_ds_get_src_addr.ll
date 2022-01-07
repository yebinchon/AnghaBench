; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_get_src_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_get_src_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32 }
%struct.sockaddr = type { i32 }
%union.socket_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, %struct.sockaddr*, i32, %union.socket_addr*, i32*)* @ds_get_src_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_get_src_addr(%struct.rsocket* %0, %struct.sockaddr* %1, i32 %2, %union.socket_addr* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsocket*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.socket_addr*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %7, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store i32 %2, i32* %9, align 4
  store %union.socket_addr* %3, %union.socket_addr** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %11, align 8
  store i32 4, i32* %15, align 4
  %16 = load %struct.rsocket*, %struct.rsocket** %7, align 8
  %17 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %union.socket_addr*, %union.socket_addr** %10, align 8
  %20 = bitcast %union.socket_addr* %19 to i32*
  %21 = load i32*, i32** %11, align 8
  %22 = call i32 @getsockname(i32 %18, i32* %20, i32* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %5
  %26 = load %union.socket_addr*, %union.socket_addr** %10, align 8
  %27 = call i32 @rs_any_addr(%union.socket_addr* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25, %5
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %6, align 4
  br label %68

31:                                               ; preds = %25
  %32 = load %union.socket_addr*, %union.socket_addr** %10, align 8
  %33 = bitcast %union.socket_addr* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %14, align 4
  %36 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %37 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SOCK_DGRAM, align 4
  %40 = call i32 @socket(i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %6, align 4
  br label %68

45:                                               ; preds = %31
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @connect(i32 %46, %struct.sockaddr* %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %64

53:                                               ; preds = %45
  %54 = load i32*, i32** %11, align 8
  store i32 4, i32* %54, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load %union.socket_addr*, %union.socket_addr** %10, align 8
  %57 = bitcast %union.socket_addr* %56 to i32*
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @getsockname(i32 %55, i32* %57, i32* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load %union.socket_addr*, %union.socket_addr** %10, align 8
  %62 = bitcast %union.socket_addr* %61 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %53, %52
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @close(i32 %65)
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %43, %29
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @getsockname(i32, i32*, i32*) #1

declare dso_local i32 @rs_any_addr(%union.socket_addr*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
