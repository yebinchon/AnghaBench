; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_util.c_record_clock_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_util.c_record_clock_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@stats_control = common dso_local global i32 0, align 4
@clockstats = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@MJD_1900 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"%lu %s %s %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @record_clock_stats(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @stats_control, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %36

10:                                               ; preds = %2
  %11 = call i32 @get_systime(%struct.TYPE_6__* %5)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @filegen_setup(%struct.TYPE_7__* @clockstats, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %16, 86400
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @MJD_1900, align 8
  %20 = add nsw i64 %18, %19
  store i64 %20, i64* %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = srem i32 %22, 86400
  store i32 %23, i32* %21, align 4
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clockstats, i32 0, i32 0), align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %10
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clockstats, i32 0, i32 0), align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @ulfptoa(%struct.TYPE_6__* %5, i32 3)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @stoa(i32* %30)
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @fprintf(i32* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %28, i32 %29, i32 %31, i8* %32)
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clockstats, i32 0, i32 0), align 8
  %35 = call i32 @fflush(i32* %34)
  br label %36

36:                                               ; preds = %9, %26, %10
  ret void
}

declare dso_local i32 @get_systime(%struct.TYPE_6__*) #1

declare dso_local i32 @filegen_setup(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i64, i32, i32, i8*) #1

declare dso_local i32 @ulfptoa(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @stoa(i32*) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
