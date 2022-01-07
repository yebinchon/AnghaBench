; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_isocal_date_to_ntp64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_isocal_date_to_ntp64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isodate = type { i32, i32, i32, i64, i64, i64 }

@DAY_NTP_STARTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isocal_date_to_ntp64(%struct.isodate* %0) #0 {
  %2 = alloca %struct.isodate*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.isodate* %0, %struct.isodate** %2, align 8
  %6 = load %struct.isodate*, %struct.isodate** %2, align 8
  %7 = getelementptr inbounds %struct.isodate, %struct.isodate* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = sub nsw i32 %9, 1
  %11 = call i32 @isocal_weeks_in_years(i32 %10)
  %12 = load %struct.isodate*, %struct.isodate** %2, align 8
  %13 = getelementptr inbounds %struct.isodate, %struct.isodate* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = add nsw i32 %11, %15
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = mul nsw i32 %18, 7
  %20 = load %struct.isodate*, %struct.isodate** %2, align 8
  %21 = getelementptr inbounds %struct.isodate, %struct.isodate* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = add nsw i32 %19, %23
  store i32 %24, i32* %4, align 4
  %25 = load %struct.isodate*, %struct.isodate** %2, align 8
  %26 = getelementptr inbounds %struct.isodate, %struct.isodate* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.isodate*, %struct.isodate** %2, align 8
  %29 = getelementptr inbounds %struct.isodate, %struct.isodate* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.isodate*, %struct.isodate** %2, align 8
  %32 = getelementptr inbounds %struct.isodate, %struct.isodate* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ntpcal_etime_to_seconds(i32 %27, i32 %30, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @DAY_NTP_STARTS, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ntpcal_dayjoin(i32 %37, i32 %38)
  ret i32 %39
}

declare dso_local i32 @isocal_weeks_in_years(i32) #1

declare dso_local i32 @ntpcal_etime_to_seconds(i32, i32, i32) #1

declare dso_local i32 @ntpcal_dayjoin(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
