; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server = type { i64, %struct.server* }

@current_time = common dso_local global i64 0, align 8
@sys_servers = common dso_local global %struct.server* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer() #0 {
  %1 = alloca %struct.server*, align 8
  %2 = load i64, i64* @current_time, align 8
  %3 = add nsw i64 %2, 1
  store i64 %3, i64* @current_time, align 8
  %4 = load %struct.server*, %struct.server** @sys_servers, align 8
  store %struct.server* %4, %struct.server** %1, align 8
  br label %5

5:                                                ; preds = %23, %0
  %6 = load %struct.server*, %struct.server** %1, align 8
  %7 = icmp ne %struct.server* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = load %struct.server*, %struct.server** %1, align 8
  %10 = getelementptr inbounds %struct.server, %struct.server* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.server*, %struct.server** %1, align 8
  %15 = getelementptr inbounds %struct.server, %struct.server* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @current_time, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.server*, %struct.server** %1, align 8
  %21 = call i32 @transmit(%struct.server* %20)
  br label %22

22:                                               ; preds = %19, %13, %8
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.server*, %struct.server** %1, align 8
  %25 = getelementptr inbounds %struct.server, %struct.server* %24, i32 0, i32 1
  %26 = load %struct.server*, %struct.server** %25, align 8
  store %struct.server* %26, %struct.server** %1, align 8
  br label %5

27:                                               ; preds = %5
  ret void
}

declare dso_local i32 @transmit(%struct.server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
