; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_timer_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_timer_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_pkt = type { i32 }
%struct.info_timer_stats = type { i8*, i8*, i8*, i8* }

@current_time = common dso_local global i64 0, align 8
@timer_timereset = common dso_local global i64 0, align 8
@alarm_overflow = common dso_local global i64 0, align 8
@timer_xmtcalls = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.req_pkt*)* @timer_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_stats(i32* %0, i32* %1, %struct.req_pkt* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.req_pkt*, align 8
  %7 = alloca %struct.info_timer_stats*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.req_pkt* %2, %struct.req_pkt** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.req_pkt*, %struct.req_pkt** %6, align 8
  %12 = call i64 @prepare_pkt(i32* %9, i32* %10, %struct.req_pkt* %11, i32 32)
  %13 = inttoptr i64 %12 to %struct.info_timer_stats*
  store %struct.info_timer_stats* %13, %struct.info_timer_stats** %7, align 8
  %14 = load i64, i64* @current_time, align 8
  %15 = load i64, i64* @timer_timereset, align 8
  %16 = sub nsw i64 %14, %15
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i8* @htonl(i32 %18)
  %20 = load %struct.info_timer_stats*, %struct.info_timer_stats** %7, align 8
  %21 = getelementptr inbounds %struct.info_timer_stats, %struct.info_timer_stats* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.info_timer_stats*, %struct.info_timer_stats** %7, align 8
  %23 = getelementptr inbounds %struct.info_timer_stats, %struct.info_timer_stats* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.info_timer_stats*, %struct.info_timer_stats** %7, align 8
  %26 = getelementptr inbounds %struct.info_timer_stats, %struct.info_timer_stats* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load i64, i64* @alarm_overflow, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i8* @htonl(i32 %28)
  %30 = load %struct.info_timer_stats*, %struct.info_timer_stats** %7, align 8
  %31 = getelementptr inbounds %struct.info_timer_stats, %struct.info_timer_stats* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i64, i64* @timer_xmtcalls, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i8* @htonl(i32 %33)
  %35 = load %struct.info_timer_stats*, %struct.info_timer_stats** %7, align 8
  %36 = getelementptr inbounds %struct.info_timer_stats, %struct.info_timer_stats* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = call i32 (...) @more_pkt()
  %38 = call i32 (...) @flush_pkt()
  ret void
}

declare dso_local i64 @prepare_pkt(i32*, i32*, %struct.req_pkt*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @more_pkt(...) #1

declare dso_local i32 @flush_pkt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
