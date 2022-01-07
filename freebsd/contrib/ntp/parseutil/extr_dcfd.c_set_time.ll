; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/parseutil/extr_dcfd.c_set_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/parseutil/extr_dcfd.c_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@no_set = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"set_time: %s \00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"setting time (offset %s)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"settimeofday()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timeval*)* @set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_time(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca %struct.timeval, align 4
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  %4 = load i64, i64* @no_set, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %27

7:                                                ; preds = %1
  %8 = load %struct.timeval*, %struct.timeval** %2, align 8
  %9 = call i32 @pr_timeval(%struct.timeval* %8)
  %10 = call i32 @LPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @LOG_NOTICE, align 4
  %12 = load %struct.timeval*, %struct.timeval** %2, align 8
  %13 = call i32 @pr_timeval(%struct.timeval* %12)
  %14 = call i32 @syslog(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = call i32 @gettimeofday(%struct.timeval* %3, i64 0)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %7
  %18 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %27

19:                                               ; preds = %7
  %20 = load %struct.timeval*, %struct.timeval** %2, align 8
  %21 = call i32 @timeradd(%struct.timeval* %3, %struct.timeval* %20)
  %22 = call i32 @settimeofday(%struct.timeval* %3, i64 0)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  br label %27

27:                                               ; preds = %6, %26, %17
  ret void
}

declare dso_local i32 @LPRINTF(i8*, i32) #1

declare dso_local i32 @pr_timeval(%struct.timeval*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i64) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @timeradd(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @settimeofday(%struct.timeval*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
