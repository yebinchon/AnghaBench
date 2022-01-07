; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_timerstats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_timerstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32 }
%struct.info_timer_stats = type { i32, i32, i32, i32 }

@impl_ver = common dso_local global i64 0, align 8
@REQ_TIMER_STATS = common dso_local global i32 0, align 4
@INFO_ERR_IMPL = common dso_local global i32 0, align 4
@IMPL_XNTPD = common dso_local global i64 0, align 8
@IMPL_XNTPD_OLD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"time since reset:  %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"alarms handled:    %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"alarm overruns:    %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"calls to transmit: %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @timerstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timerstats(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.info_timer_stats*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %9

9:                                                ; preds = %21, %2
  %10 = load i64, i64* @impl_ver, align 8
  %11 = load i32, i32* @REQ_TIMER_STATS, align 4
  %12 = bitcast %struct.info_timer_stats** %5 to i8*
  %13 = call i32 @doquery(i64 %10, i32 %11, i32 0, i32 0, i32 0, i32* null, i64* %6, i64* %7, i8* %12, i32 0, i32 16)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @INFO_ERR_IMPL, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load i64, i64* @impl_ver, align 8
  %19 = load i64, i64* @IMPL_XNTPD, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* @IMPL_XNTPD_OLD, align 8
  store i64 %22, i64* @impl_ver, align 8
  br label %9

23:                                               ; preds = %17, %9
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %67

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @check1item(i64 %28, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %67

33:                                               ; preds = %27
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @checkitemsize(i64 %34, i32 16)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %67

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.info_timer_stats*, %struct.info_timer_stats** %5, align 8
  %41 = getelementptr inbounds %struct.info_timer_stats, %struct.info_timer_stats* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ntohl(i32 %42)
  %44 = trunc i64 %43 to i32
  %45 = call i32 @fprintf(i32* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.info_timer_stats*, %struct.info_timer_stats** %5, align 8
  %48 = getelementptr inbounds %struct.info_timer_stats, %struct.info_timer_stats* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ntohl(i32 %49)
  %51 = trunc i64 %50 to i32
  %52 = call i32 @fprintf(i32* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.info_timer_stats*, %struct.info_timer_stats** %5, align 8
  %55 = getelementptr inbounds %struct.info_timer_stats, %struct.info_timer_stats* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @ntohl(i32 %56)
  %58 = trunc i64 %57 to i32
  %59 = call i32 @fprintf(i32* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.info_timer_stats*, %struct.info_timer_stats** %5, align 8
  %62 = getelementptr inbounds %struct.info_timer_stats, %struct.info_timer_stats* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @ntohl(i32 %63)
  %65 = trunc i64 %64 to i32
  %66 = call i32 @fprintf(i32* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %38, %37, %32, %26
  ret void
}

declare dso_local i32 @doquery(i64, i32, i32, i32, i32, i32*, i64*, i64*, i8*, i32, i32) #1

declare dso_local i32 @check1item(i64, i32*) #1

declare dso_local i32 @checkitemsize(i64, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i64 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
