; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_date_to_rd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_date_to_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calendar = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ntpcal_date_to_rd(%struct.calendar* %0) #0 {
  %2 = alloca %struct.calendar*, align 8
  store %struct.calendar* %0, %struct.calendar** %2, align 8
  %3 = load %struct.calendar*, %struct.calendar** %2, align 8
  %4 = getelementptr inbounds %struct.calendar, %struct.calendar* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = sub nsw i64 %5, 1
  %7 = load %struct.calendar*, %struct.calendar** %2, align 8
  %8 = getelementptr inbounds %struct.calendar, %struct.calendar* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %9, 1
  %11 = load %struct.calendar*, %struct.calendar** %2, align 8
  %12 = getelementptr inbounds %struct.calendar, %struct.calendar* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %13, 1
  %15 = call i64 @ntpcal_edate_to_eradays(i64 %6, i64 %10, i64 %14)
  %16 = add nsw i64 %15, 1
  ret i64 %16
}

declare dso_local i64 @ntpcal_edate_to_eradays(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
