; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_prism_if_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_prism_if_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_pkthdr = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@WLANCAP_MAGIC_COOKIE_V1 = common dso_local global i64 0, align 8
@WLANCAP_MAGIC_COOKIE_V2 = common dso_local global i64 0, align 8
@PRISM_HDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prism_if_print(i32* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pcap_pkthdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %12 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %15 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @tstr, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  %24 = call i32 @ND_PRINT(i32* %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %68

26:                                               ; preds = %3
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @EXTRACT_32BITS(i32* %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @WLANCAP_MAGIC_COOKIE_V1, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @WLANCAP_MAGIC_COOKIE_V2, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32, %26
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ieee802_11_avs_radio_print(i32* %37, i32* %38, i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %68

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @PRISM_HDR_LEN, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @tstr, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i32*
  %51 = call i32 @ND_PRINT(i32* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %68

53:                                               ; preds = %42
  %54 = load i32, i32* @PRISM_HDR_LEN, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* @PRISM_HDR_LEN, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @PRISM_HDR_LEN, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @PRISM_HDR_LEN, align 4
  %65 = sub nsw i32 %63, %64
  %66 = call i32 @ieee802_11_print(i32* %55, i32* %59, i32 %62, i32 %65, i32 0, i32 0)
  %67 = add nsw i32 %54, %66
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %53, %46, %36, %19
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i64 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ieee802_11_avs_radio_print(i32*, i32*, i32, i32) #1

declare dso_local i32 @ieee802_11_print(i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
