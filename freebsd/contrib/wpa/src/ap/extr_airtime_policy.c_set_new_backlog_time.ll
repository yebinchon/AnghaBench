; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_airtime_policy.c_set_new_backlog_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_airtime_policy.c_set_new_backlog_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sta_info = type { %struct.os_reltime }
%struct.os_reltime = type { i32, i32 }

@AIRTIME_BACKLOG_EXPIRY_FACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.sta_info*, %struct.os_reltime*)* @set_new_backlog_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_new_backlog_time(%struct.hostapd_data* %0, %struct.sta_info* %1, %struct.os_reltime* %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.os_reltime*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store %struct.os_reltime* %2, %struct.os_reltime** %6, align 8
  %7 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %8 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %7, i32 0, i32 0
  %9 = load %struct.os_reltime*, %struct.os_reltime** %6, align 8
  %10 = bitcast %struct.os_reltime* %8 to i8*
  %11 = bitcast %struct.os_reltime* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 8, i1 false)
  %12 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %13 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AIRTIME_BACKLOG_EXPIRY_FACTOR, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %20 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, %18
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %30, %3
  %25 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 1000000
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %32 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %37 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1000000
  store i32 %40, i32* %38, align 4
  br label %24

41:                                               ; preds = %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
