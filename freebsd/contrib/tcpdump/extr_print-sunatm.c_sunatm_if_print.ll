; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sunatm.c_sunatm_if_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sunatm.c_sunatm_if_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.pcap_pkthdr = type { i64, i64 }

@PKT_BEGIN_POS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[|atm]\00", align 1
@DIR_POS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Tx: \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Rx: \00", align 1
@ATM_LANE = common dso_local global i64 0, align 8
@ATM_LLC = common dso_local global i64 0, align 8
@ATM_UNKNOWN = common dso_local global i64 0, align 8
@VCI_POS = common dso_local global i64 0, align 8
@VPI_POS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sunatm_if_print(%struct.TYPE_5__* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.pcap_pkthdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %14 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %17 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @PKT_BEGIN_POS, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([7 x i8]* @.str to %struct.TYPE_5__*))
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %4, align 8
  br label %82

26:                                               ; preds = %3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i64, i64* @DIR_POS, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 128
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %41 = bitcast i8* %40 to %struct.TYPE_5__*
  %42 = call i32 @ND_PRINT(%struct.TYPE_5__* %41)
  br label %43

43:                                               ; preds = %31, %26
  %44 = load i32*, i32** %7, align 8
  %45 = load i64, i64* @DIR_POS, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 15
  switch i32 %48, label %53 [
    i32 129, label %49
    i32 128, label %51
  ]

49:                                               ; preds = %43
  %50 = load i64, i64* @ATM_LANE, align 8
  store i64 %50, i64* %12, align 8
  br label %55

51:                                               ; preds = %43
  %52 = load i64, i64* @ATM_LLC, align 8
  store i64 %52, i64* %12, align 8
  br label %55

53:                                               ; preds = %43
  %54 = load i64, i64* @ATM_UNKNOWN, align 8
  store i64 %54, i64* %12, align 8
  br label %55

55:                                               ; preds = %53, %51, %49
  %56 = load i32*, i32** %7, align 8
  %57 = load i64, i64* @VCI_POS, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = call i32 @EXTRACT_16BITS(i32* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i64, i64* @VPI_POS, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %11, align 4
  %64 = load i64, i64* @PKT_BEGIN_POS, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 %64
  store i32* %66, i32** %7, align 8
  %67 = load i64, i64* @PKT_BEGIN_POS, align 8
  %68 = load i64, i64* %8, align 8
  %69 = sub nsw i64 %68, %67
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* @PKT_BEGIN_POS, align 8
  %71 = load i64, i64* %9, align 8
  %72 = sub nsw i64 %71, %70
  store i64 %72, i64* %9, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i64, i64* %12, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @atm_print(%struct.TYPE_5__* %73, i32 %74, i32 %75, i64 %76, i32* %77, i64 %78, i64 %79)
  %81 = load i64, i64* @PKT_BEGIN_POS, align 8
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %55, %22
  %83 = load i64, i64* %4, align 8
  ret i64 %83
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @atm_print(%struct.TYPE_5__*, i32, i32, i64, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
