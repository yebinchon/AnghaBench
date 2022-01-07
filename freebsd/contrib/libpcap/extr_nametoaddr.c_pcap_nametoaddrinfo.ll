; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_nametoaddr.c_pcap_nametoaddrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_nametoaddr.c_pcap_nametoaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32 }

@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.addrinfo* @pcap_nametoaddrinfo(i8* %0) #0 {
  %2 = alloca %struct.addrinfo*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.addrinfo, align 4
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = call i32 @memset(%struct.addrinfo* %4, i32 0, i32 12)
  %8 = load i32, i32* @PF_UNSPEC, align 4
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @SOCK_STREAM, align 4
  %11 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @IPPROTO_TCP, align 4
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @getaddrinfo(i8* %14, i32* null, %struct.addrinfo* %4, %struct.addrinfo** %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store %struct.addrinfo* null, %struct.addrinfo** %2, align 8
  br label %21

19:                                               ; preds = %1
  %20 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  store %struct.addrinfo* %20, %struct.addrinfo** %2, align 8
  br label %21

21:                                               ; preds = %19, %18
  %22 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  ret %struct.addrinfo* %22
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
