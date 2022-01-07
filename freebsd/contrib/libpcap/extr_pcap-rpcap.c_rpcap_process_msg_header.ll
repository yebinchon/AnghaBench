; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_rpcap_process_msg_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_rpcap_process_msg_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcap_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.rpcap_header*, i8*)* @rpcap_process_msg_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcap_process_msg_header(i32 %0, i32 %1, i32 %2, %struct.rpcap_header* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rpcap_header*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.rpcap_header* %3, %struct.rpcap_header** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.rpcap_header*, %struct.rpcap_header** %10, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = call i32 @rpcap_recv_msg_header(i32 %13, %struct.rpcap_header* %14, i8* %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %33

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.rpcap_header*, %struct.rpcap_header** %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @rpcap_check_msg_ver(i32 %20, i32 %21, %struct.rpcap_header* %22, i8* %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 -1, i32* %6, align 4
  br label %33

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.rpcap_header*, %struct.rpcap_header** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @rpcap_check_msg_type(i32 %28, i32 %29, %struct.rpcap_header* %30, i32* %12, i8* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %27, %26, %18
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @rpcap_recv_msg_header(i32, %struct.rpcap_header*, i8*) #1

declare dso_local i32 @rpcap_check_msg_ver(i32, i32, %struct.rpcap_header*, i8*) #1

declare dso_local i32 @rpcap_check_msg_type(i32, i32, %struct.rpcap_header*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
