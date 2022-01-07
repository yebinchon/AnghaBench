; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_rpcap_read_packet_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_rpcap_read_packet_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }

@SOCK_RECEIVEALL_NO = common dso_local global i32 0, align 4
@SOCK_EOF_IS_ERROR = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"The server terminated the connection.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*, i64)* @rpcap_read_packet_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcap_read_packet_msg(i32 %0, %struct.TYPE_3__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %65, %3
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %73

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = sub i64 %25, %27
  %29 = load i32, i32* @SOCK_RECEIVEALL_NO, align 4
  %30 = load i32, i32* @SOCK_EOF_IS_ERROR, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %36 = call i32 @sock_recv(i32 %23, i32* %24, i64 %28, i32 %31, i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %46

39:                                               ; preds = %22
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  store i32 -1, i32* %4, align 4
  br label %80

46:                                               ; preds = %22
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, -3
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  store i32 -3, i32* %4, align 4
  br label %80

56:                                               ; preds = %46
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %64 = call i32 @pcap_snprintf(i32 %62, i32 %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %80

65:                                               ; preds = %56
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %9, align 4
  br label %17

73:                                               ; preds = %17
  %74 = load i32*, i32** %8, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32* %74, i32** %76, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %73, %59, %49, %39
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @sock_recv(i32, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @pcap_snprintf(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
