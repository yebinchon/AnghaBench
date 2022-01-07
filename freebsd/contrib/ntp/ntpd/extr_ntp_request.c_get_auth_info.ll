; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_get_auth_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_get_auth_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_pkt = type { i32 }
%struct.info_auth = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@authnumkeys = common dso_local global i64 0, align 8
@authnumfreekeys = common dso_local global i64 0, align 8
@authkeylookups = common dso_local global i64 0, align 8
@authkeynotfound = common dso_local global i64 0, align 8
@authencryptions = common dso_local global i64 0, align 8
@authdecryptions = common dso_local global i64 0, align 8
@authkeyuncached = common dso_local global i64 0, align 8
@authkeyexpired = common dso_local global i64 0, align 8
@current_time = common dso_local global i64 0, align 8
@auth_timereset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.req_pkt*)* @get_auth_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_auth_info(i32* %0, i32* %1, %struct.req_pkt* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.req_pkt*, align 8
  %7 = alloca %struct.info_auth*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.req_pkt* %2, %struct.req_pkt** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.req_pkt*, %struct.req_pkt** %6, align 8
  %11 = call i64 @prepare_pkt(i32* %8, i32* %9, %struct.req_pkt* %10, i32 72)
  %12 = inttoptr i64 %11 to %struct.info_auth*
  store %struct.info_auth* %12, %struct.info_auth** %7, align 8
  %13 = load i64, i64* @authnumkeys, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i8* @htonl(i32 %14)
  %16 = load %struct.info_auth*, %struct.info_auth** %7, align 8
  %17 = getelementptr inbounds %struct.info_auth, %struct.info_auth* %16, i32 0, i32 8
  store i8* %15, i8** %17, align 8
  %18 = load i64, i64* @authnumfreekeys, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i8* @htonl(i32 %19)
  %21 = load %struct.info_auth*, %struct.info_auth** %7, align 8
  %22 = getelementptr inbounds %struct.info_auth, %struct.info_auth* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  %23 = load i64, i64* @authkeylookups, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i8* @htonl(i32 %24)
  %26 = load %struct.info_auth*, %struct.info_auth** %7, align 8
  %27 = getelementptr inbounds %struct.info_auth, %struct.info_auth* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load i64, i64* @authkeynotfound, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i8* @htonl(i32 %29)
  %31 = load %struct.info_auth*, %struct.info_auth** %7, align 8
  %32 = getelementptr inbounds %struct.info_auth, %struct.info_auth* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* @authencryptions, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i8* @htonl(i32 %34)
  %36 = load %struct.info_auth*, %struct.info_auth** %7, align 8
  %37 = getelementptr inbounds %struct.info_auth, %struct.info_auth* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* @authdecryptions, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i8* @htonl(i32 %39)
  %41 = load %struct.info_auth*, %struct.info_auth** %7, align 8
  %42 = getelementptr inbounds %struct.info_auth, %struct.info_auth* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i64, i64* @authkeyuncached, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i8* @htonl(i32 %44)
  %46 = load %struct.info_auth*, %struct.info_auth** %7, align 8
  %47 = getelementptr inbounds %struct.info_auth, %struct.info_auth* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i64, i64* @authkeyexpired, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i8* @htonl(i32 %49)
  %51 = load %struct.info_auth*, %struct.info_auth** %7, align 8
  %52 = getelementptr inbounds %struct.info_auth, %struct.info_auth* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i64, i64* @current_time, align 8
  %54 = load i64, i64* @auth_timereset, align 8
  %55 = sub nsw i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = call i8* @htonl(i32 %56)
  %58 = load %struct.info_auth*, %struct.info_auth** %7, align 8
  %59 = getelementptr inbounds %struct.info_auth, %struct.info_auth* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = call i32 (...) @more_pkt()
  %61 = call i32 (...) @flush_pkt()
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
