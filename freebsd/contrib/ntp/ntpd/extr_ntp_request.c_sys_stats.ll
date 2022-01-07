; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_sys_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_sys_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_pkt = type { i32 }
%struct.info_sys_stats = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@current_time = common dso_local global i64 0, align 8
@sys_stattime = common dso_local global i64 0, align 8
@sys_restricted = common dso_local global i64 0, align 8
@sys_oldversion = common dso_local global i64 0, align 8
@sys_newversion = common dso_local global i64 0, align 8
@sys_declined = common dso_local global i64 0, align 8
@sys_badlength = common dso_local global i64 0, align 8
@sys_processed = common dso_local global i64 0, align 8
@sys_badauth = common dso_local global i64 0, align 8
@sys_limitrejected = common dso_local global i64 0, align 8
@sys_received = common dso_local global i64 0, align 8
@sys_lamport = common dso_local global i64 0, align 8
@sys_tsrounding = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.req_pkt*)* @sys_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sys_stats(i32* %0, i32* %1, %struct.req_pkt* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.req_pkt*, align 8
  %7 = alloca %struct.info_sys_stats*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.req_pkt* %2, %struct.req_pkt** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.req_pkt*, %struct.req_pkt** %6, align 8
  %11 = call i64 @prepare_pkt(i32* %8, i32* %9, %struct.req_pkt* %10, i32 104)
  %12 = inttoptr i64 %11 to %struct.info_sys_stats*
  store %struct.info_sys_stats* %12, %struct.info_sys_stats** %7, align 8
  %13 = load i64, i64* @current_time, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i8* @htonl(i32 %14)
  %16 = load %struct.info_sys_stats*, %struct.info_sys_stats** %7, align 8
  %17 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %16, i32 0, i32 12
  store i8* %15, i8** %17, align 8
  %18 = load i64, i64* @current_time, align 8
  %19 = load i64, i64* @sys_stattime, align 8
  %20 = sub nsw i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = call i8* @htonl(i32 %21)
  %23 = load %struct.info_sys_stats*, %struct.info_sys_stats** %7, align 8
  %24 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %23, i32 0, i32 11
  store i8* %22, i8** %24, align 8
  %25 = load i64, i64* @sys_restricted, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i8* @htonl(i32 %26)
  %28 = load %struct.info_sys_stats*, %struct.info_sys_stats** %7, align 8
  %29 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %28, i32 0, i32 10
  store i8* %27, i8** %29, align 8
  %30 = load i64, i64* @sys_oldversion, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i8* @htonl(i32 %31)
  %33 = load %struct.info_sys_stats*, %struct.info_sys_stats** %7, align 8
  %34 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %33, i32 0, i32 9
  store i8* %32, i8** %34, align 8
  %35 = load i64, i64* @sys_newversion, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i8* @htonl(i32 %36)
  %38 = load %struct.info_sys_stats*, %struct.info_sys_stats** %7, align 8
  %39 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %38, i32 0, i32 8
  store i8* %37, i8** %39, align 8
  %40 = load i64, i64* @sys_declined, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i8* @htonl(i32 %41)
  %43 = load %struct.info_sys_stats*, %struct.info_sys_stats** %7, align 8
  %44 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load i64, i64* @sys_badlength, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i8* @htonl(i32 %46)
  %48 = load %struct.info_sys_stats*, %struct.info_sys_stats** %7, align 8
  %49 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* @sys_processed, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i8* @htonl(i32 %51)
  %53 = load %struct.info_sys_stats*, %struct.info_sys_stats** %7, align 8
  %54 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load i64, i64* @sys_badauth, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i8* @htonl(i32 %56)
  %58 = load %struct.info_sys_stats*, %struct.info_sys_stats** %7, align 8
  %59 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* @sys_limitrejected, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i8* @htonl(i32 %61)
  %63 = load %struct.info_sys_stats*, %struct.info_sys_stats** %7, align 8
  %64 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* @sys_received, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i8* @htonl(i32 %66)
  %68 = load %struct.info_sys_stats*, %struct.info_sys_stats** %7, align 8
  %69 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* @sys_lamport, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i8* @htonl(i32 %71)
  %73 = load %struct.info_sys_stats*, %struct.info_sys_stats** %7, align 8
  %74 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i64, i64* @sys_tsrounding, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i8* @htonl(i32 %76)
  %78 = load %struct.info_sys_stats*, %struct.info_sys_stats** %7, align 8
  %79 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = call i32 (...) @more_pkt()
  %81 = call i32 (...) @flush_pkt()
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
