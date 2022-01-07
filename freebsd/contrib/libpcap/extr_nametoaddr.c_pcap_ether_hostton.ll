; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_nametoaddr.c_pcap_ether_hostton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_nametoaddr.c_pcap_ether_hostton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_etherent = type { i32, i32 }

@pcap_ether_hostton.fp = internal global i32* null, align 8
@pcap_ether_hostton.init = internal global i32 0, align 4
@PCAP_ETHERS_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pcap_ether_hostton(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pcap_etherent*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @pcap_ether_hostton.init, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @PCAP_ETHERS_FILE, align 4
  %10 = call i32* @fopen(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** @pcap_ether_hostton.fp, align 8
  %11 = load i32, i32* @pcap_ether_hostton.init, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @pcap_ether_hostton.init, align 4
  %13 = load i32*, i32** @pcap_ether_hostton.fp, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i32* null, i32** %2, align 8
  br label %52

16:                                               ; preds = %8
  br label %25

17:                                               ; preds = %1
  %18 = load i32*, i32** @pcap_ether_hostton.fp, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32* null, i32** %2, align 8
  br label %52

21:                                               ; preds = %17
  %22 = load i32*, i32** @pcap_ether_hostton.fp, align 8
  %23 = call i32 @rewind(i32* %22)
  br label %24

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %16
  br label %26

26:                                               ; preds = %50, %25
  %27 = load i32*, i32** @pcap_ether_hostton.fp, align 8
  %28 = call %struct.pcap_etherent* @pcap_next_etherent(i32* %27)
  store %struct.pcap_etherent* %28, %struct.pcap_etherent** %4, align 8
  %29 = icmp ne %struct.pcap_etherent* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load %struct.pcap_etherent*, %struct.pcap_etherent** %4, align 8
  %32 = getelementptr inbounds %struct.pcap_etherent, %struct.pcap_etherent* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @strcmp(i32 %33, i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = call i64 @malloc(i32 6)
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.pcap_etherent*, %struct.pcap_etherent** %4, align 8
  %45 = getelementptr inbounds %struct.pcap_etherent, %struct.pcap_etherent* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(i32* %43, i32 %46, i32 6)
  %48 = load i32*, i32** %5, align 8
  store i32* %48, i32** %2, align 8
  br label %52

49:                                               ; preds = %37
  br label %51

50:                                               ; preds = %30
  br label %26

51:                                               ; preds = %49, %26
  store i32* null, i32** %2, align 8
  br label %52

52:                                               ; preds = %51, %42, %20, %15
  %53 = load i32*, i32** %2, align 8
  ret i32* %53
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local %struct.pcap_etherent* @pcap_next_etherent(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
