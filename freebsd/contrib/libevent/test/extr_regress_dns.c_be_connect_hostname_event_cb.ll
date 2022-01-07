; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_dns.c_be_connect_hostname_event_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_dns.c_be_connect_hostname_event_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.be_conn_hostname_result = type { i16, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Got a bufferevent event %d\00", align 1
@BEV_EVENT_CONNECTED = common dso_local global i16 0, align 2
@BEV_EVENT_ERROR = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [17 x i8] c"DNS error %d: %s\00", align 1
@total_connected_or_failed = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Got %d connections or errors.\00", align 1
@total_n_accepted = common dso_local global i32 0, align 4
@be_connect_hostname_base = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Two events on one bufferevent. %d,%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i16, i8*)* @be_connect_hostname_event_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_connect_hostname_event_cb(%struct.bufferevent* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.be_conn_hostname_result*, align 8
  %8 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.be_conn_hostname_result*
  store %struct.be_conn_hostname_result* %10, %struct.be_conn_hostname_result** %7, align 8
  %11 = load %struct.be_conn_hostname_result*, %struct.be_conn_hostname_result** %7, align 8
  %12 = getelementptr inbounds %struct.be_conn_hostname_result, %struct.be_conn_hostname_result* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 4
  %14 = icmp ne i16 %13, 0
  br i1 %14, label %67, label %15

15:                                               ; preds = %3
  %16 = load i16, i16* %5, align 2
  %17 = sext i16 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @TT_BLATHER(i8* %18)
  %20 = load i16, i16* %5, align 2
  %21 = load %struct.be_conn_hostname_result*, %struct.be_conn_hostname_result** %7, align 8
  %22 = getelementptr inbounds %struct.be_conn_hostname_result, %struct.be_conn_hostname_result* %21, i32 0, i32 0
  store i16 %20, i16* %22, align 4
  %23 = load i16, i16* %5, align 2
  %24 = sext i16 %23 to i32
  %25 = load i16, i16* @BEV_EVENT_CONNECTED, align 2
  %26 = sext i16 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %15
  %30 = load i16, i16* %5, align 2
  %31 = sext i16 %30 to i32
  %32 = load i16, i16* @BEV_EVENT_ERROR, align 2
  %33 = sext i16 %32 to i32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %29, %15
  %37 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %38 = call i32 @bufferevent_socket_get_dns_error(%struct.bufferevent* %37)
  store i32 %38, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.be_conn_hostname_result*, %struct.be_conn_hostname_result** %7, align 8
  %43 = getelementptr inbounds %struct.be_conn_hostname_result, %struct.be_conn_hostname_result* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @evutil_gai_strerror(i32 %45)
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @TT_BLATHER(i8* %48)
  br label %50

50:                                               ; preds = %40, %36
  %51 = load i32, i32* @total_connected_or_failed, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @total_connected_or_failed, align 4
  %53 = load i32, i32* @total_connected_or_failed, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @TT_BLATHER(i8* %55)
  %57 = load i32, i32* @total_n_accepted, align 4
  %58 = icmp sge i32 %57, 3
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load i32, i32* @total_connected_or_failed, align 4
  %61 = icmp sge i32 %60, 5
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @be_connect_hostname_base, align 4
  %64 = call i32 @event_base_loopexit(i32 %63, i32* null)
  br label %65

65:                                               ; preds = %62, %59, %50
  br label %66

66:                                               ; preds = %65, %29
  br label %76

67:                                               ; preds = %3
  %68 = load %struct.be_conn_hostname_result*, %struct.be_conn_hostname_result** %7, align 8
  %69 = getelementptr inbounds %struct.be_conn_hostname_result, %struct.be_conn_hostname_result* %68, i32 0, i32 0
  %70 = load i16, i16* %69, align 4
  %71 = load i16, i16* %5, align 2
  %72 = sext i16 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @TT_FAIL(i8* %74)
  br label %76

76:                                               ; preds = %67, %66
  ret void
}

declare dso_local i32 @TT_BLATHER(i8*) #1

declare dso_local i32 @bufferevent_socket_get_dns_error(%struct.bufferevent*) #1

declare dso_local i32 @evutil_gai_strerror(i32) #1

declare dso_local i32 @event_base_loopexit(i32, i32*) #1

declare dso_local i32 @TT_FAIL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
