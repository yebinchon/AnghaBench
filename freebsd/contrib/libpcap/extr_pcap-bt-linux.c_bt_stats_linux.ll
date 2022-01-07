; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bt-linux.c_bt_stats_linux.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bt-linux.c_bt_stats_linux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.pcap_bt* }
%struct.pcap_bt = type { i32 }
%struct.pcap_stat = type { i64, i64, i64 }
%struct.hci_dev_info = type { i32, %struct.hci_dev_stats }
%struct.hci_dev_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@HCIGETDEVINFO = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't get stats via ioctl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.pcap_stat*)* @bt_stats_linux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_stats_linux(%struct.TYPE_3__* %0, %struct.pcap_stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.pcap_stat*, align 8
  %6 = alloca %struct.pcap_bt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hci_dev_info, align 8
  %9 = alloca %struct.hci_dev_stats*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.pcap_stat* %1, %struct.pcap_stat** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load %struct.pcap_bt*, %struct.pcap_bt** %11, align 8
  store %struct.pcap_bt* %12, %struct.pcap_bt** %6, align 8
  %13 = getelementptr inbounds %struct.hci_dev_info, %struct.hci_dev_info* %8, i32 0, i32 1
  store %struct.hci_dev_stats* %13, %struct.hci_dev_stats** %9, align 8
  %14 = load %struct.pcap_bt*, %struct.pcap_bt** %6, align 8
  %15 = getelementptr inbounds %struct.pcap_bt, %struct.pcap_bt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.hci_dev_info, %struct.hci_dev_info* %8, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  br label %18

18:                                               ; preds = %32, %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HCIGETDEVINFO, align 4
  %23 = bitcast %struct.hci_dev_info* %8 to i8*
  %24 = call i32 @ioctl(i32 %21, i32 %22, i8* %23)
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EINTR, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i1 [ false, %25 ], [ %31, %28 ]
  br i1 %33, label %18, label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %42 = load i64, i64* @errno, align 8
  %43 = call i32 @pcap_fmt_errmsg_for_errno(i32 %40, i32 %41, i64 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %81

44:                                               ; preds = %34
  %45 = load %struct.hci_dev_stats*, %struct.hci_dev_stats** %9, align 8
  %46 = getelementptr inbounds %struct.hci_dev_stats, %struct.hci_dev_stats* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.hci_dev_stats*, %struct.hci_dev_stats** %9, align 8
  %49 = getelementptr inbounds %struct.hci_dev_stats, %struct.hci_dev_stats* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load %struct.hci_dev_stats*, %struct.hci_dev_stats** %9, align 8
  %53 = getelementptr inbounds %struct.hci_dev_stats, %struct.hci_dev_stats* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load %struct.hci_dev_stats*, %struct.hci_dev_stats** %9, align 8
  %57 = getelementptr inbounds %struct.hci_dev_stats, %struct.hci_dev_stats* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load %struct.hci_dev_stats*, %struct.hci_dev_stats** %9, align 8
  %61 = getelementptr inbounds %struct.hci_dev_stats, %struct.hci_dev_stats* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load %struct.hci_dev_stats*, %struct.hci_dev_stats** %9, align 8
  %65 = getelementptr inbounds %struct.hci_dev_stats, %struct.hci_dev_stats* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = load %struct.pcap_stat*, %struct.pcap_stat** %5, align 8
  %69 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load %struct.hci_dev_stats*, %struct.hci_dev_stats** %9, align 8
  %71 = getelementptr inbounds %struct.hci_dev_stats, %struct.hci_dev_stats* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.hci_dev_stats*, %struct.hci_dev_stats** %9, align 8
  %74 = getelementptr inbounds %struct.hci_dev_stats, %struct.hci_dev_stats* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.pcap_stat*, %struct.pcap_stat** %5, align 8
  %78 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.pcap_stat*, %struct.pcap_stat** %5, align 8
  %80 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %44, %37
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
