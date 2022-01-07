; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcap.c_sf_write_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcap.c_sf_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.pcap_file_header = type { i32, i32, i32, i64, i32, i32, i32 }

@PCAP_TSTAMP_PRECISION_NANO = common dso_local global i64 0, align 8
@NSEC_TCPDUMP_MAGIC = common dso_local global i32 0, align 4
@TCPDUMP_MAGIC = common dso_local global i32 0, align 4
@PCAP_VERSION_MAJOR = common dso_local global i32 0, align 4
@PCAP_VERSION_MINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i32, i32)* @sf_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sf_write_header(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pcap_file_header, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCAP_TSTAMP_PRECISION_NANO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @NSEC_TCPDUMP_MAGIC, align 4
  br label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @TCPDUMP_MAGIC, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 6
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* @PCAP_VERSION_MAJOR, align 4
  %27 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 5
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @PCAP_VERSION_MINOR, align 4
  %29 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %11, align 4
  %33 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = bitcast %struct.pcap_file_header* %12 to i8*
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @fwrite(i8* %37, i32 40, i32 1, i32* %38)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %43

42:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
