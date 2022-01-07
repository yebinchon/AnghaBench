; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-snoop.c_pcap_stats_snoop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-snoop.c_pcap_stats_snoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.pcap_snoop* }
%struct.pcap_snoop = type { %struct.pcap_stat }
%struct.pcap_stat = type { i64 }
%struct.rawstats = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }

@SIOCRAWSTATS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SIOCRAWSTATS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.pcap_stat*)* @pcap_stats_snoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_stats_snoop(%struct.TYPE_7__* %0, %struct.pcap_stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.pcap_stat*, align 8
  %6 = alloca %struct.pcap_snoop*, align 8
  %7 = alloca %struct.rawstats*, align 8
  %8 = alloca %struct.rawstats, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.pcap_stat* %1, %struct.pcap_stat** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = load %struct.pcap_snoop*, %struct.pcap_snoop** %10, align 8
  store %struct.pcap_snoop* %11, %struct.pcap_snoop** %6, align 8
  store %struct.rawstats* %8, %struct.rawstats** %7, align 8
  %12 = load %struct.rawstats*, %struct.rawstats** %7, align 8
  %13 = call i32 @memset(%struct.rawstats* %12, i32 0, i32 32)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SIOCRAWSTATS, align 4
  %18 = load %struct.rawstats*, %struct.rawstats** %7, align 8
  %19 = bitcast %struct.rawstats* %18 to i8*
  %20 = call i64 @ioctl(i32 %16, i32 %17, i8* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @pcap_fmt_errmsg_for_errno(i32 %25, i32 4, i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %56

28:                                               ; preds = %2
  %29 = load %struct.rawstats*, %struct.rawstats** %7, align 8
  %30 = getelementptr inbounds %struct.rawstats, %struct.rawstats* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.rawstats*, %struct.rawstats** %7, align 8
  %34 = getelementptr inbounds %struct.rawstats, %struct.rawstats* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %32, %36
  %38 = load %struct.rawstats*, %struct.rawstats** %7, align 8
  %39 = getelementptr inbounds %struct.rawstats, %struct.rawstats* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %37, %41
  %43 = load %struct.rawstats*, %struct.rawstats** %7, align 8
  %44 = getelementptr inbounds %struct.rawstats, %struct.rawstats* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %42, %46
  %48 = load %struct.pcap_snoop*, %struct.pcap_snoop** %6, align 8
  %49 = getelementptr inbounds %struct.pcap_snoop, %struct.pcap_snoop* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %struct.pcap_stat*, %struct.pcap_stat** %5, align 8
  %52 = load %struct.pcap_snoop*, %struct.pcap_snoop** %6, align 8
  %53 = getelementptr inbounds %struct.pcap_snoop, %struct.pcap_snoop* %52, i32 0, i32 0
  %54 = bitcast %struct.pcap_stat* %51 to i8*
  %55 = bitcast %struct.pcap_stat* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 8, i1 false)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %28, %22
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @memset(%struct.rawstats*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
