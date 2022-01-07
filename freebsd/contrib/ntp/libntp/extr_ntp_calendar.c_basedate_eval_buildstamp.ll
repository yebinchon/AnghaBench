; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_basedate_eval_buildstamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_basedate_eval_buildstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calendar = type { i32 }

@NTP_TO_UNIX_DAYS = common dso_local global i64 0, align 8
@DAY_NTP_STARTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @basedate_eval_buildstamp() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.calendar, align 4
  %3 = alloca i64, align 8
  %4 = call i32 @ntpcal_get_build_date(%struct.calendar* %2)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* @NTP_TO_UNIX_DAYS, align 8
  store i64 %7, i64* %1, align 8
  br label %24

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.calendar, %struct.calendar* %2, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = call i64 @ntpcal_date_to_rd(%struct.calendar* %2)
  %13 = load i64, i64* @DAY_NTP_STARTS, align 8
  %14 = sub nsw i64 %12, %13
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @NTP_TO_UNIX_DAYS, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  %19 = load i64, i64* @NTP_TO_UNIX_DAYS, align 8
  br label %22

20:                                               ; preds = %8
  %21 = load i64, i64* %3, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i64 [ %19, %18 ], [ %21, %20 ]
  store i64 %23, i64* %1, align 8
  br label %24

24:                                               ; preds = %22, %6
  %25 = load i64, i64* %1, align 8
  ret i64 %25
}

declare dso_local i32 @ntpcal_get_build_date(%struct.calendar*) #1

declare dso_local i64 @ntpcal_date_to_rd(%struct.calendar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
