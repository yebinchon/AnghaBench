; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_iface_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_iface_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_ll = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@AF_PACKET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@PCAP_ERROR_IFACE_NOT_UP = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@PCAP_ERROR = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"getsockopt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32)* @iface_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iface_bind(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_ll, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 4, i32* %12, align 4
  %13 = call i32 @memset(%struct.sockaddr_ll* %10, i32 0, i32 12)
  %14 = load i32, i32* @AF_PACKET, align 4
  %15 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %10, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %10, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %10, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = bitcast %struct.sockaddr_ll* %10 to %struct.sockaddr*
  %22 = call i32 @bind(i32 %20, %struct.sockaddr* %21, i32 12)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %36

24:                                               ; preds = %4
  %25 = load i32, i32* @errno, align 4
  %26 = load i32, i32* @ENETDOWN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @PCAP_ERROR_IFACE_NOT_UP, align 4
  store i32 %29, i32* %5, align 4
  br label %63

30:                                               ; preds = %24
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @pcap_fmt_errmsg_for_errno(i8* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %35, i32* %5, align 4
  br label %63

36:                                               ; preds = %4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SOL_SOCKET, align 4
  %39 = load i32, i32* @SO_ERROR, align 4
  %40 = call i32 @getsockopt(i32 %37, i32 %38, i32 %39, i32* %11, i32* %12)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @pcap_fmt_errmsg_for_errno(i8* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %63

47:                                               ; preds = %36
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @ENETDOWN, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @PCAP_ERROR_IFACE_NOT_UP, align 4
  store i32 %52, i32* %5, align 4
  br label %63

53:                                               ; preds = %47
  %54 = load i32, i32* %11, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @pcap_fmt_errmsg_for_errno(i8* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %63

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %56, %51, %42, %30, %28
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @memset(%struct.sockaddr_ll*, i32, i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i32, i8*) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
