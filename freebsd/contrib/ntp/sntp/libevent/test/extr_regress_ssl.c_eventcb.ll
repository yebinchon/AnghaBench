; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_ssl.c_eventcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_ssl.c_eventcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Got event %d\00", align 1
@BEV_EVENT_CONNECTED = common dso_local global i16 0, align 2
@n_connected = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@stop_when_connected = common dso_local global i64 0, align 8
@pending_connect_events = common dso_local global i64 0, align 8
@exit_base = common dso_local global i32 0, align 4
@BEV_EVENT_EOF = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [15 x i8] c"Got a good EOF\00", align 1
@got_close = common dso_local global i32 0, align 4
@BEV_EVENT_ERROR = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [14 x i8] c"Got an error.\00", align 1
@got_error = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i16, i8*)* @eventcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eventcb(%struct.bufferevent* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %9 = load i16, i16* %5, align 2
  %10 = sext i16 %9 to i32
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @TT_BLATHER(i8* %12)
  %14 = load i16, i16* %5, align 2
  %15 = sext i16 %14 to i32
  %16 = load i16, i16* @BEV_EVENT_CONNECTED, align 2
  %17 = sext i16 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %3
  %21 = load i32, i32* @n_connected, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @n_connected, align 4
  %23 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %24 = call i32* @bufferevent_openssl_get_ssl(%struct.bufferevent* %23)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @tt_assert(i32* %25)
  %27 = load i32*, i32** %7, align 8
  %28 = call i32* @SSL_get_peer_certificate(i32* %27)
  store i32* %28, i32** %8, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp eq i64 0, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %20
  %33 = load i32*, i32** %8, align 8
  %34 = icmp eq i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  %38 = call i32 @tt_assert(i32* %37)
  br label %46

39:                                               ; preds = %20
  %40 = load i32*, i32** %8, align 8
  %41 = icmp ne i32* %40, null
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  %45 = call i32 @tt_assert(i32* %44)
  br label %46

46:                                               ; preds = %39, %32
  %47 = load i64, i64* @stop_when_connected, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i64, i64* @pending_connect_events, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* @pending_connect_events, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @exit_base, align 4
  %55 = call i32 @event_base_loopexit(i32 %54, i32* null)
  br label %56

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %46
  br label %86

58:                                               ; preds = %3
  %59 = load i16, i16* %5, align 2
  %60 = sext i16 %59 to i32
  %61 = load i16, i16* @BEV_EVENT_EOF, align 2
  %62 = sext i16 %61 to i32
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = call i32 @TT_BLATHER(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @got_close, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @got_close, align 4
  %69 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %70 = call i32 @bufferevent_free(%struct.bufferevent* %69)
  br label %85

71:                                               ; preds = %58
  %72 = load i16, i16* %5, align 2
  %73 = sext i16 %72 to i32
  %74 = load i16, i16* @BEV_EVENT_ERROR, align 2
  %75 = sext i16 %74 to i32
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = call i32 @TT_BLATHER(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @got_error, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @got_error, align 4
  %82 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %83 = call i32 @bufferevent_free(%struct.bufferevent* %82)
  br label %84

84:                                               ; preds = %78, %71
  br label %85

85:                                               ; preds = %84, %65
  br label %86

86:                                               ; preds = %85, %57
  br label %87

87:                                               ; preds = %86
  ret void
}

declare dso_local i32 @TT_BLATHER(i8*) #1

declare dso_local i32* @bufferevent_openssl_get_ssl(%struct.bufferevent*) #1

declare dso_local i32 @tt_assert(i32*) #1

declare dso_local i32* @SSL_get_peer_certificate(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @event_base_loopexit(i32, i32*) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
