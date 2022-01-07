; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_config_ttl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_config_ttl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }

@sys_ttl = common dso_local global i64* null, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"ttl: Number of TTL entries exceeds %zu. Ignoring TTL %d...\00", align 1
@sys_ttlmax = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @config_ttl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_ttl(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.TYPE_5__* @HEAD_PFIFO(i32 %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  br label %9

9:                                                ; preds = %34, %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %9
  %13 = load i64, i64* %3, align 8
  %14 = load i64*, i64** @sys_ttl, align 8
  %15 = call i64 @COUNTOF(i64* %14)
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** @sys_ttl, align 8
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %3, align 8
  %24 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64 %20, i64* %24, align 8
  br label %33

25:                                               ; preds = %12
  %26 = load i32, i32* @LOG_INFO, align 4
  %27 = load i64*, i64** @sys_ttl, align 8
  %28 = call i64 @COUNTOF(i64* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @msyslog(i32 %26, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %31)
  br label %33

33:                                               ; preds = %25, %17
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %4, align 8
  br label %9

38:                                               ; preds = %9
  %39 = load i64, i64* %3, align 8
  %40 = icmp ne i64 0, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i64, i64* %3, align 8
  %43 = sub i64 %42, 1
  store i64 %43, i64* @sys_ttlmax, align 8
  br label %44

44:                                               ; preds = %41, %38
  ret void
}

declare dso_local %struct.TYPE_5__* @HEAD_PFIFO(i32) #1

declare dso_local i64 @COUNTOF(i64*) #1

declare dso_local i32 @msyslog(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
