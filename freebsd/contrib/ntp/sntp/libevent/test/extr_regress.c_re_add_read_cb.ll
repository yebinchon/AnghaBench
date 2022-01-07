; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.c_re_add_read_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.c_re_add_read_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }

@readd_test_event_last_added = common dso_local global %struct.event* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@test_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @re_add_read_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_add_read_cb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca %struct.event*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.event*
  store %struct.event* %11, %struct.event** %8, align 8
  %12 = load %struct.event*, %struct.event** %8, align 8
  store %struct.event* %12, %struct.event** @readd_test_event_last_added, align 8
  %13 = load i32, i32* %4, align 4
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %15 = call i64 @read(i32 %13, i8* %14, i32 256)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = call i32 @tt_fail_perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.event*, %struct.event** %8, align 8
  %21 = call i32 @event_get_base(%struct.event* %20)
  %22 = call i32 @event_base_loopbreak(i32 %21)
  br label %28

23:                                               ; preds = %3
  %24 = load %struct.event*, %struct.event** %8, align 8
  %25 = call i32 @event_add(%struct.event* %24, i32* null)
  %26 = load i32, i32* @test_ok, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @test_ok, align 4
  br label %28

28:                                               ; preds = %18, %23
  ret void
}

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @tt_fail_perror(i8*) #1

declare dso_local i32 @event_base_loopbreak(i32) #1

declare dso_local i32 @event_get_base(%struct.event*) #1

declare dso_local i32 @event_add(%struct.event*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
