; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-atm.c_atm_if_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-atm.c_atm_if_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.pcap_pkthdr = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@LLC_UI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"CNLPID \00", align 1
@LLCSAP_SNAP = common dso_local global i32 0, align 4
@LLCSAP_ISONS = common dso_local global i32 0, align 4
@LLCSAP_IP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%08x%08x %08x%08x \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atm_if_print(%struct.TYPE_6__* %0, %struct.pcap_pkthdr* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.pcap_pkthdr*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %13 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %16 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %20, %3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = load i32, i32* @tstr, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.TYPE_6__*
  %28 = call i32 @ND_PRINT(%struct.TYPE_6__* %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %135

30:                                               ; preds = %20
  %31 = load i64*, i64** %7, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @LLC_UI, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([8 x i8]* @.str.1 to %struct.TYPE_6__*))
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = load i64*, i64** %7, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, 1
  %49 = call i32 @isoclns_print(%struct.TYPE_6__* %44, i64* %46, i32 %48)
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %135

51:                                               ; preds = %30
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 3
  br i1 %56, label %57, label %64

57:                                               ; preds = %54, %51
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = load i32, i32* @tstr, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to %struct.TYPE_6__*
  %62 = call i32 @ND_PRINT(%struct.TYPE_6__* %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %135

64:                                               ; preds = %54
  %65 = load i64*, i64** %7, align 8
  %66 = call i64 @EXTRACT_24BITS(i64* %65)
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i32, i32* @LLCSAP_SNAP, align 4
  %69 = call i64 @LLC_UI_HDR(i32 %68)
  %70 = icmp ne i64 %67, %69
  br i1 %70, label %71, label %124

71:                                               ; preds = %64
  %72 = load i64, i64* %10, align 8
  %73 = load i32, i32* @LLCSAP_ISONS, align 4
  %74 = call i64 @LLC_UI_HDR(i32 %73)
  %75 = icmp ne i64 %72, %74
  br i1 %75, label %76, label %124

76:                                               ; preds = %71
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* @LLCSAP_IP, align 4
  %79 = call i64 @LLC_UI_HDR(i32 %78)
  %80 = icmp ne i64 %77, %79
  br i1 %80, label %81, label %124

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 20
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 20
  br i1 %86, label %87, label %94

87:                                               ; preds = %84, %81
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = load i32, i32* @tstr, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to %struct.TYPE_6__*
  %92 = call i32 @ND_PRINT(%struct.TYPE_6__* %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %4, align 4
  br label %135

94:                                               ; preds = %84
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %94
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %101 = load i64*, i64** %7, align 8
  %102 = call i32 @EXTRACT_32BITS(i64* %101)
  %103 = load i64*, i64** %7, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 4
  %105 = call i32 @EXTRACT_32BITS(i64* %104)
  %106 = load i64*, i64** %7, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 8
  %108 = call i32 @EXTRACT_32BITS(i64* %107)
  %109 = load i64*, i64** %7, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 12
  %111 = call i32 @EXTRACT_32BITS(i64* %110)
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to %struct.TYPE_6__*
  %114 = call i32 @ND_PRINT(%struct.TYPE_6__* %113)
  br label %115

115:                                              ; preds = %99, %94
  %116 = load i64*, i64** %7, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 20
  store i64* %117, i64** %7, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sub nsw i32 %118, 20
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %8, align 4
  %121 = sub nsw i32 %120, 20
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 20
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %115, %76, %71, %64
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = load i64*, i64** %7, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i64 @atm_llc_print(%struct.TYPE_6__* %125, i64* %126, i32 %127, i32 %128)
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %129
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %124, %87, %57, %43, %23
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @isoclns_print(%struct.TYPE_6__*, i64*, i32) #1

declare dso_local i64 @EXTRACT_24BITS(i64*) #1

declare dso_local i64 @LLC_UI_HDR(i32) #1

declare dso_local i32 @EXTRACT_32BITS(i64*) #1

declare dso_local i64 @atm_llc_print(%struct.TYPE_6__*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
