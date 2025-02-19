; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_rpcap-protocol.c_rpcap_createhdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_rpcap-protocol.c_rpcap_createhdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcap_header = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcap_createhdr(%struct.rpcap_header* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rpcap_header*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rpcap_header* %0, %struct.rpcap_header** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.rpcap_header*, %struct.rpcap_header** %6, align 8
  %12 = call i32 @memset(%struct.rpcap_header* %11, i32 0, i32 24)
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.rpcap_header*, %struct.rpcap_header** %6, align 8
  %15 = getelementptr inbounds %struct.rpcap_header, %struct.rpcap_header* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.rpcap_header*, %struct.rpcap_header** %6, align 8
  %18 = getelementptr inbounds %struct.rpcap_header, %struct.rpcap_header* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @htons(i32 %19)
  %21 = load %struct.rpcap_header*, %struct.rpcap_header** %6, align 8
  %22 = getelementptr inbounds %struct.rpcap_header, %struct.rpcap_header* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @htonl(i32 %23)
  %25 = load %struct.rpcap_header*, %struct.rpcap_header** %6, align 8
  %26 = getelementptr inbounds %struct.rpcap_header, %struct.rpcap_header* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  ret void
}

declare dso_local i32 @memset(%struct.rpcap_header*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
