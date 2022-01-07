; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_ntp64_to_date.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_ntp64_to_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calendar = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@DAY_NTP_STARTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntpcal_ntp64_to_date(%struct.calendar* %0, i32* %1) #0 {
  %3 = alloca %struct.calendar*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  store %struct.calendar* %0, %struct.calendar** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call { i64, i32 } @ntpcal_daysplit(i32* %7)
  %9 = bitcast %struct.TYPE_3__* %6 to { i64, i32 }*
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %11 = extractvalue { i64, i32 } %8, 0
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %13 = extractvalue { i64, i32 } %8, 1
  store i32 %13, i32* %12, align 8
  %14 = bitcast %struct.TYPE_3__* %5 to i8*
  %15 = bitcast %struct.TYPE_3__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = load %struct.calendar*, %struct.calendar** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @ntpcal_daysec_to_date(%struct.calendar* %16, i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, %19
  store i64 %22, i64* %20, align 8
  %23 = load %struct.calendar*, %struct.calendar** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DAY_NTP_STARTS, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @ntpcal_rd_to_date(%struct.calendar* %23, i64 %27)
  ret i32 %28
}

declare dso_local { i64, i32 } @ntpcal_daysplit(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ntpcal_daysec_to_date(%struct.calendar*, i32) #1

declare dso_local i32 @ntpcal_rd_to_date(%struct.calendar*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
