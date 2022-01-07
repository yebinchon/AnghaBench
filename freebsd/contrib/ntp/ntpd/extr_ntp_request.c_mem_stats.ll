; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_mem_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_mem_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_pkt = type { i32 }
%struct.info_mem_stats = type { i64*, i8*, i8*, i8*, i8*, i8*, i8* }

@current_time = common dso_local global i64 0, align 8
@peer_timereset = common dso_local global i64 0, align 8
@total_peer_structs = common dso_local global i64 0, align 8
@peer_free_count = common dso_local global i64 0, align 8
@findpeer_calls = common dso_local global i64 0, align 8
@peer_allocations = common dso_local global i64 0, align 8
@peer_demobilizations = common dso_local global i64 0, align 8
@NTP_HASH_SIZE = common dso_local global i32 0, align 4
@peer_hash_count = common dso_local global i64* null, align 8
@UCHAR_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.req_pkt*)* @mem_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_stats(i32* %0, i32* %1, %struct.req_pkt* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.req_pkt*, align 8
  %7 = alloca %struct.info_mem_stats*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.req_pkt* %2, %struct.req_pkt** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.req_pkt*, %struct.req_pkt** %6, align 8
  %12 = call i64 @prepare_pkt(i32* %9, i32* %10, %struct.req_pkt* %11, i32 56)
  %13 = inttoptr i64 %12 to %struct.info_mem_stats*
  store %struct.info_mem_stats* %13, %struct.info_mem_stats** %7, align 8
  %14 = load i64, i64* @current_time, align 8
  %15 = load i64, i64* @peer_timereset, align 8
  %16 = sub nsw i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = call i8* @htonl(i32 %17)
  %19 = load %struct.info_mem_stats*, %struct.info_mem_stats** %7, align 8
  %20 = getelementptr inbounds %struct.info_mem_stats, %struct.info_mem_stats* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load i64, i64* @total_peer_structs, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i8* @htons(i32 %22)
  %24 = load %struct.info_mem_stats*, %struct.info_mem_stats** %7, align 8
  %25 = getelementptr inbounds %struct.info_mem_stats, %struct.info_mem_stats* %24, i32 0, i32 5
  store i8* %23, i8** %25, align 8
  %26 = load i64, i64* @peer_free_count, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i8* @htons(i32 %27)
  %29 = load %struct.info_mem_stats*, %struct.info_mem_stats** %7, align 8
  %30 = getelementptr inbounds %struct.info_mem_stats, %struct.info_mem_stats* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load i64, i64* @findpeer_calls, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i8* @htonl(i32 %32)
  %34 = load %struct.info_mem_stats*, %struct.info_mem_stats** %7, align 8
  %35 = getelementptr inbounds %struct.info_mem_stats, %struct.info_mem_stats* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i64, i64* @peer_allocations, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i8* @htonl(i32 %37)
  %39 = load %struct.info_mem_stats*, %struct.info_mem_stats** %7, align 8
  %40 = getelementptr inbounds %struct.info_mem_stats, %struct.info_mem_stats* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i64, i64* @peer_demobilizations, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i8* @htonl(i32 %42)
  %44 = load %struct.info_mem_stats*, %struct.info_mem_stats** %7, align 8
  %45 = getelementptr inbounds %struct.info_mem_stats, %struct.info_mem_stats* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %65, %3
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @NTP_HASH_SIZE, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load i64*, i64** @peer_hash_count, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @UCHAR_MAX, align 4
  %58 = call i64 @max(i32 %56, i32 %57)
  %59 = load %struct.info_mem_stats*, %struct.info_mem_stats** %7, align 8
  %60 = getelementptr inbounds %struct.info_mem_stats, %struct.info_mem_stats* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 %58, i64* %64, align 8
  br label %65

65:                                               ; preds = %50
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %46

68:                                               ; preds = %46
  %69 = call i32 (...) @more_pkt()
  %70 = call i32 (...) @flush_pkt()
  ret void
}

declare dso_local i64 @prepare_pkt(i32*, i32*, %struct.req_pkt*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @more_pkt(...) #1

declare dso_local i32 @flush_pkt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
