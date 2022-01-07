; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ap1394.c_ap1394_if_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ap1394.c_ap1394_if_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.pcap_pkthdr = type { i64, i64 }
%struct.firewire_header = type { i32, i32, i32 }
%struct.lladdr_info = type { i8*, i32 }

@FIREWIRE_HDRLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"[|ap1394]\00", align 1
@fwaddr_string = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ap1394_if_print(%struct.TYPE_6__* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.pcap_pkthdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.firewire_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lladdr_info, align 8
  %13 = alloca %struct.lladdr_info, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %15 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %18 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @FIREWIRE_HDRLEN, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([10 x i8]* @.str to %struct.TYPE_6__*))
  %26 = load i64, i64* @FIREWIRE_HDRLEN, align 8
  store i64 %26, i64* %4, align 8
  br label %96

27:                                               ; preds = %3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @ap1394_hdr_print(%struct.TYPE_6__* %33, i32* %34, i64 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i64, i64* @FIREWIRE_HDRLEN, align 8
  %39 = load i64, i64* %8, align 8
  %40 = sub nsw i64 %39, %38
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* @FIREWIRE_HDRLEN, align 8
  %42 = load i64, i64* %9, align 8
  %43 = sub nsw i64 %42, %41
  store i64 %43, i64* %9, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = bitcast i32* %44 to %struct.firewire_header*
  store %struct.firewire_header* %45, %struct.firewire_header** %10, align 8
  %46 = load i64, i64* @FIREWIRE_HDRLEN, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 %46
  store i32* %48, i32** %7, align 8
  %49 = load %struct.firewire_header*, %struct.firewire_header** %10, align 8
  %50 = getelementptr inbounds %struct.firewire_header, %struct.firewire_header* %49, i32 0, i32 2
  %51 = call i32 @EXTRACT_16BITS(i32* %50)
  store i32 %51, i32* %11, align 4
  %52 = load %struct.firewire_header*, %struct.firewire_header** %10, align 8
  %53 = getelementptr inbounds %struct.firewire_header, %struct.firewire_header* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %12, i32 0, i32 1
  store i32 %54, i32* %55, align 8
  %56 = load i8*, i8** @fwaddr_string, align 8
  %57 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %12, i32 0, i32 0
  store i8* %56, i8** %57, align 8
  %58 = load %struct.firewire_header*, %struct.firewire_header** %10, align 8
  %59 = getelementptr inbounds %struct.firewire_header, %struct.firewire_header* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %13, i32 0, i32 1
  store i32 %60, i32* %61, align 8
  %62 = load i8*, i8** @fwaddr_string, align 8
  %63 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %13, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @ethertype_print(%struct.TYPE_6__* %64, i32 %65, i32* %66, i64 %67, i64 %68, %struct.lladdr_info* %12, %struct.lladdr_info* %13)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %37
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %71
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = load %struct.firewire_header*, %struct.firewire_header** %10, align 8
  %79 = bitcast %struct.firewire_header* %78 to i32*
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* @FIREWIRE_HDRLEN, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @ap1394_hdr_print(%struct.TYPE_6__* %77, i32* %79, i64 %82)
  br label %84

84:                                               ; preds = %76, %71
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = load i32*, i32** %7, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @ND_DEFAULTPRINT(i32* %90, i64 %91)
  br label %93

93:                                               ; preds = %89, %84
  br label %94

94:                                               ; preds = %93, %37
  %95 = load i64, i64* @FIREWIRE_HDRLEN, align 8
  store i64 %95, i64* %4, align 8
  br label %96

96:                                               ; preds = %94, %23
  %97 = load i64, i64* %4, align 8
  ret i64 %97
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @ap1394_hdr_print(%struct.TYPE_6__*, i32*, i64) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i64 @ethertype_print(%struct.TYPE_6__*, i32, i32*, i64, i64, %struct.lladdr_info*, %struct.lladdr_info*) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
