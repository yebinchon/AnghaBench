; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_log.c_isc_logconfig_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_log.c_isc_logconfig_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

@ISC_R_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_logconfig_use(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = call i32 @VALID_CONTEXT(%struct.TYPE_10__* %8)
  %10 = call i32 @REQUIRE(i32 %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = call i32 @VALID_CONFIG(%struct.TYPE_9__* %11)
  %13 = call i32 @REQUIRE(i32 %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = icmp eq %struct.TYPE_10__* %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @REQUIRE(i32 %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = call i64 @sync_channellist(%struct.TYPE_9__* %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @ISC_R_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* %3, align 8
  br label %43

28:                                               ; preds = %2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = call i32 @LOCK(i32* %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %6, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %37, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = call i32 @UNLOCK(i32* %39)
  %41 = call i32 @isc_logconfig_destroy(%struct.TYPE_9__** %6)
  %42 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %28, %26
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_CONTEXT(%struct.TYPE_10__*) #1

declare dso_local i32 @VALID_CONFIG(%struct.TYPE_9__*) #1

declare dso_local i64 @sync_channellist(%struct.TYPE_9__*) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @isc_logconfig_destroy(%struct.TYPE_9__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
