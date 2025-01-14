; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_check_exit_conditions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_check_exit_conditions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n_pending_ntp = common dso_local global i64 0, align 8
@n_pending_dns = common dso_local global i64 0, align 8
@time_derived = common dso_local global i64 0, align 8
@WAIT = common dso_local global i32 0, align 4
@base = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@shutting_down = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%d NTP and %d name queries pending\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_exit_conditions() #0 {
  %1 = load i64, i64* @n_pending_ntp, align 8
  %2 = icmp eq i64 0, %1
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i64, i64* @n_pending_dns, align 8
  %5 = icmp eq i64 0, %4
  br i1 %5, label %13, label %6

6:                                                ; preds = %3, %0
  %7 = load i64, i64* @time_derived, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load i32, i32* @WAIT, align 4
  %11 = call i32 @HAVE_OPT(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9, %3
  %14 = load i32, i32* @base, align 4
  %15 = call i32 @event_base_loopexit(i32 %14, i32* null)
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* @shutting_down, align 4
  br label %22

17:                                               ; preds = %9, %6
  %18 = load i64, i64* @n_pending_ntp, align 8
  %19 = load i64, i64* @n_pending_dns, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @TRACE(i32 2, i8* %20)
  br label %22

22:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @HAVE_OPT(i32) #1

declare dso_local i32 @event_base_loopexit(i32, i32*) #1

declare dso_local i32 @TRACE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
