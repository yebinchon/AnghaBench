; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-septel.c_septel_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-septel.c_septel_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, i64, %struct.pcap_septel* }
%struct.TYPE_10__ = type { i32* }
%struct.pcap_septel = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.pcap_pkthdr = type { i32, i16, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32 (i32*, %struct.pcap_pkthdr*, i32*)*, i32*)* @septel_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @septel_read(%struct.TYPE_12__* %0, i32 %1, i32 (i32*, %struct.pcap_pkthdr*, i32*)* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32*, %struct.pcap_pkthdr*, i32*)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pcap_septel*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.pcap_pkthdr, align 4
  %20 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i32*, %struct.pcap_pkthdr*, i32*)* %2, i32 (i32*, %struct.pcap_pkthdr*, i32*)** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  %23 = load %struct.pcap_septel*, %struct.pcap_septel** %22, align 8
  store %struct.pcap_septel* %23, %struct.pcap_septel** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 221, i32* %15, align 4
  br label %24

24:                                               ; preds = %121, %4
  store i16 0, i16* %16, align 2
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %25

25:                                               ; preds = %61, %24
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  store i32 -2, i32* %5, align 4
  br label %127

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i32, i32* %15, align 4
  %36 = call %struct.TYPE_14__* @GCT_grab(i32 %35)
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %11, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %38 = bitcast %struct.TYPE_14__* %37 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %12, align 8
  %39 = load i32, i32* %18, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %18, align 4
  br label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %43 = icmp eq %struct.TYPE_13__* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %18, align 4
  %46 = icmp slt i32 %45, 100
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i1 [ false, %41 ], [ %46, %44 ]
  br i1 %48, label %34, label %49

49:                                               ; preds = %47
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %51 = icmp ne %struct.TYPE_13__* %50, null
  br i1 %51, label %52, label %117

52:                                               ; preds = %49
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 52992
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 36609
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %63 = call i32 @relm(%struct.TYPE_14__* %62)
  br label %25

64:                                               ; preds = %58, %52
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %66 = call i32* @get_param(%struct.TYPE_13__* %65)
  store i32* %66, i32** %20, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i16, i16* %68, align 2
  store i16 %69, i16* %16, align 2
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load i16, i16* %16, align 2
  %75 = zext i16 %74 to i32
  %76 = icmp sgt i32 %73, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %64
  %78 = load i16, i16* %16, align 2
  %79 = zext i16 %78 to i32
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %77, %64
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32*, i32** %20, align 8
  %92 = load i16, i16* %16, align 2
  %93 = load i32, i32* %17, align 4
  %94 = call i64 @bpf_filter(i32* %90, i32* %91, i16 zeroext %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %86, %80
  %97 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %19, i32 0, i32 2
  %98 = call i32 @gettimeofday(i32* %97, i32* null)
  %99 = load i32, i32* %17, align 4
  %100 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %19, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = load i16, i16* %16, align 2
  %102 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %19, i32 0, i32 1
  store i16 %101, i16* %102, align 4
  %103 = load %struct.pcap_septel*, %struct.pcap_septel** %10, align 8
  %104 = getelementptr inbounds %struct.pcap_septel, %struct.pcap_septel* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load i32 (i32*, %struct.pcap_pkthdr*, i32*)*, i32 (i32*, %struct.pcap_pkthdr*, i32*)** %8, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load i32*, i32** %20, align 8
  %111 = call i32 %108(i32* %109, %struct.pcap_pkthdr* %19, i32* %110)
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %96, %86
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %116 = call i32 @relm(%struct.TYPE_14__* %115)
  br label %120

117:                                              ; preds = %49
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %24, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %13, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %125, %30
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_14__* @GCT_grab(i32) #1

declare dso_local i32 @relm(%struct.TYPE_14__*) #1

declare dso_local i32* @get_param(%struct.TYPE_13__*) #1

declare dso_local i64 @bpf_filter(i32*, i32*, i16 zeroext, i32) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
