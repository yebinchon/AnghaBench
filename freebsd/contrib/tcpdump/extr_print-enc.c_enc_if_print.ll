; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-enc.c_enc_if_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-enc.c_enc_if_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_pkthdr = type { i64, i64 }
%struct.enchdr = type { i32, i32, i32 }

@ENC_HDRLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[|enc]\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"(unprotected): \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@M_AUTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"authentic\00", align 1
@M_CONF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"confidential\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"SPI 0x%08x: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @enc_if_print(i32* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pcap_pkthdr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.enchdr*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %12 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %15 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @ENC_HDRLEN, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str to i32*))
  br label %74

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = bitcast i32* %24 to %struct.enchdr*
  store %struct.enchdr* %25, %struct.enchdr** %10, align 8
  %26 = load %struct.enchdr*, %struct.enchdr** %10, align 8
  %27 = getelementptr inbounds %struct.enchdr, %struct.enchdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @ND_PRINT(i32* bitcast ([16 x i8]* @.str.1 to i32*))
  br label %37

34:                                               ; preds = %23
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.2 to i32*))
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @M_AUTH, align 4
  %40 = call i32 @ENC_PRINT_TYPE(i32 %38, i32 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @M_CONF, align 4
  %43 = call i32 @ENC_PRINT_TYPE(i32 %41, i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.enchdr*, %struct.enchdr** %10, align 8
  %46 = getelementptr inbounds %struct.enchdr, %struct.enchdr* %45, i32 0, i32 2
  %47 = call i32 @EXTRACT_32BITS(i32* %46)
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i32*
  %50 = call i32 @ND_PRINT(i32* %49)
  %51 = load i64, i64* @ENC_HDRLEN, align 8
  %52 = load i64, i64* %7, align 8
  %53 = sub nsw i64 %52, %51
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* @ENC_HDRLEN, align 8
  %55 = load i64, i64* %8, align 8
  %56 = sub nsw i64 %55, %54
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* @ENC_HDRLEN, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 %57
  store i32* %59, i32** %6, align 8
  %60 = load %struct.enchdr*, %struct.enchdr** %10, align 8
  %61 = getelementptr inbounds %struct.enchdr, %struct.enchdr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %73 [
    i32 129, label %63
    i32 128, label %68
  ]

63:                                               ; preds = %37
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @ip_print(i32* %64, i32* %65, i64 %66)
  br label %73

68:                                               ; preds = %37
  %69 = load i32*, i32** %4, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @ip6_print(i32* %69, i32* %70, i64 %71)
  br label %73

73:                                               ; preds = %37, %68, %63
  br label %74

74:                                               ; preds = %73, %20
  %75 = load i64, i64* @ENC_HDRLEN, align 8
  ret i64 %75
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ENC_PRINT_TYPE(i32, i32, i8*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ip_print(i32*, i32*, i64) #1

declare dso_local i32 @ip6_print(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
