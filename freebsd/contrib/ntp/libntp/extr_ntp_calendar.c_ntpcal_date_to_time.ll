; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_date_to_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_date_to_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calendar = type { i32 }

@DAY_UNIX_STARTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntpcal_date_to_time(%struct.calendar* %0) #0 {
  %2 = alloca %struct.calendar*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.calendar* %0, %struct.calendar** %2, align 8
  %6 = load %struct.calendar*, %struct.calendar** %2, align 8
  %7 = call i64 @ntpcal_date_to_rd(%struct.calendar* %6)
  %8 = load i64, i64* @DAY_UNIX_STARTS, align 8
  %9 = sub nsw i64 %7, %8
  store i64 %9, i64* %4, align 8
  %10 = load %struct.calendar*, %struct.calendar** %2, align 8
  %11 = call i64 @ntpcal_date_to_daysec(%struct.calendar* %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @ntpcal_dayjoin(i64 %12, i64 %13)
  store i32 %14, i32* %3, align 4
  %15 = call i32 @vint64_to_time(i32* %3)
  ret i32 %15
}

declare dso_local i64 @ntpcal_date_to_rd(%struct.calendar*) #1

declare dso_local i64 @ntpcal_date_to_daysec(%struct.calendar*) #1

declare dso_local i32 @ntpcal_dayjoin(i64, i64) #1

declare dso_local i32 @vint64_to_time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
