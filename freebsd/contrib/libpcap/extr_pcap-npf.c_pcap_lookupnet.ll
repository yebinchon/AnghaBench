; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_pcap_lookupnet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_pcap_lookupnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@MAX_NETWORK_ADDRESSES = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcap_lookupnet(i8* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sockaddr_in*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i32, i32* @MAX_NETWORK_ADDRESSES, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca %struct.TYPE_9__, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @MAX_NETWORK_ADDRESSES, align 4
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %12, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @PacketGetNetInfoEx(i8* %22, %struct.TYPE_9__* %19, i64* %12)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %74

28:                                               ; preds = %4
  store i64 0, i64* %14, align 8
  br label %29

29:                                               ; preds = %68, %28
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %29
  %34 = load i64, i64* %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AF_INET, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %33
  %42 = load i64, i64* %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = bitcast %struct.TYPE_6__* %44 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %45, %struct.sockaddr_in** %13, align 8
  %46 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i64, i64* %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = bitcast i32* %54 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %55, %struct.sockaddr_in** %13, align 8
  %56 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %63
  store i32 %66, i32* %64, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %74

67:                                               ; preds = %33
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %14, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %14, align 8
  br label %29

71:                                               ; preds = %29
  %72 = load i32*, i32** %8, align 8
  store i32 0, i32* %72, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 0, i32* %73, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %74

74:                                               ; preds = %71, %41, %25
  %75 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PacketGetNetInfoEx(i8*, %struct.TYPE_9__*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
