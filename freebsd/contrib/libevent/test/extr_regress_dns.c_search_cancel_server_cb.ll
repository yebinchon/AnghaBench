; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_dns.c_search_cancel_server_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_dns.c_search_cancel_server_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_server_request = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [45 x i8] c"Only handling one question at a time; got %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"got question, %s\00", align 1
@request_count = common dso_local global i64 0, align 8
@current_req = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdns_server_request*, i8*)* @search_cancel_server_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_cancel_server_cb(%struct.evdns_server_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evdns_server_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.evdns_server_request* %0, %struct.evdns_server_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %7 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %12 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @TT_DIE(i8* %15)
  br label %17

17:                                               ; preds = %10, %2
  %18 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %19 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @TT_BLATHER(i8* %25)
  %27 = load i64, i64* @request_count, align 8
  %28 = icmp sgt i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @tt_assert(i32 %29)
  %31 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %32 = call i32 @evdns_server_request_respond(%struct.evdns_server_request* %31, i32 3)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @tt_assert(i32 %35)
  %37 = load i64, i64* @request_count, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* @request_count, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %17
  %41 = load i32, i32* @current_req, align 4
  %42 = call i32 @evdns_cancel_request(i32* null, i32 %41)
  br label %43

43:                                               ; preds = %40, %17
  br label %44

44:                                               ; preds = %43
  ret void
}

declare dso_local i32 @TT_DIE(i8*) #1

declare dso_local i32 @TT_BLATHER(i8*) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i32 @evdns_server_request_respond(%struct.evdns_server_request*, i32) #1

declare dso_local i32 @evdns_cancel_request(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
