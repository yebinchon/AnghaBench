; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_rpcap-protocol.c_rpcap_senderror.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_rpcap-protocol.c_rpcap_senderror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcap_header = type { i32 }

@RPCAP_NETBUF_SIZE = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@RPCAP_MSG_ERROR = common dso_local global i32 0, align 4
@SOCKBUF_CHECKONLY = common dso_local global i32 0, align 4
@SOCKBUF_BUFFERIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcap_senderror(i32 %0, i32 %1, i16 zeroext %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i16 %2, i16* %9, align 2
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* @RPCAP_NETBUF_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  store i32 %28, i32* %15, align 4
  br label %29

29:                                               ; preds = %27, %5
  %30 = bitcast i8* %20 to %struct.rpcap_header*
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @RPCAP_MSG_ERROR, align 4
  %33 = load i16, i16* %9, align 2
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @rpcap_createhdr(%struct.rpcap_header* %30, i32 %31, i32 %32, i16 zeroext %33, i32 %34)
  %36 = load i32, i32* @RPCAP_NETBUF_SIZE, align 4
  %37 = load i32, i32* @SOCKBUF_CHECKONLY, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %40 = call i64 @sock_bufferize(i8* null, i32 4, i8* null, i32* %14, i32 %36, i32 %37, i8* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %62

43:                                               ; preds = %29
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @RPCAP_NETBUF_SIZE, align 4
  %47 = load i32, i32* @SOCKBUF_BUFFERIZE, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %50 = call i64 @sock_bufferize(i8* %44, i32 %45, i8* %20, i32* %14, i32 %46, i32 %47, i8* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %62

53:                                               ; preds = %43
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %58 = call i64 @sock_send(i32 %54, i8* %20, i32 %55, i8* %56, i32 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %62

61:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %62

62:                                               ; preds = %61, %60, %52, %42
  %63 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @rpcap_createhdr(%struct.rpcap_header*, i32, i32, i16 zeroext, i32) #2

declare dso_local i64 @sock_bufferize(i8*, i32, i8*, i32*, i32, i32, i8*, i32) #2

declare dso_local i64 @sock_send(i32, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
