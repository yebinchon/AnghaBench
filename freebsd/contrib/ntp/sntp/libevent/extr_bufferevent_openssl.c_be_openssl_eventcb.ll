; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_be_openssl_eventcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_be_openssl_eventcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_openssl = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@BEV_EVENT_EOF = common dso_local global i16 0, align 2
@BEV_EVENT_ERROR = common dso_local global i16 0, align 2
@BEV_EVENT_TIMEOUT = common dso_local global i16 0, align 2
@BEV_EVENT_CONNECTED = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i16, i8*)* @be_openssl_eventcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_openssl_eventcb(%struct.bufferevent* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bufferevent_openssl*, align 8
  %8 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.bufferevent_openssl*
  store %struct.bufferevent_openssl* %10, %struct.bufferevent_openssl** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i16, i16* %5, align 2
  %12 = sext i16 %11 to i32
  %13 = load i16, i16* @BEV_EVENT_EOF, align 2
  %14 = sext i16 %13 to i32
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %7, align 8
  %19 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i16, i16* @BEV_EVENT_EOF, align 2
  %24 = sext i16 %23 to i32
  store i32 %24, i32* %8, align 4
  br label %28

25:                                               ; preds = %17
  %26 = load i16, i16* @BEV_EVENT_ERROR, align 2
  %27 = sext i16 %26 to i32
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %25, %22
  br label %60

29:                                               ; preds = %3
  %30 = load i16, i16* %5, align 2
  %31 = sext i16 %30 to i32
  %32 = load i16, i16* @BEV_EVENT_TIMEOUT, align 2
  %33 = sext i16 %32 to i32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i16, i16* %5, align 2
  %38 = sext i16 %37 to i32
  store i32 %38, i32* %8, align 4
  br label %59

39:                                               ; preds = %29
  %40 = load i16, i16* %5, align 2
  %41 = sext i16 %40 to i32
  %42 = load i16, i16* @BEV_EVENT_ERROR, align 2
  %43 = sext i16 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i16, i16* %5, align 2
  %48 = sext i16 %47 to i32
  store i32 %48, i32* %8, align 4
  br label %58

49:                                               ; preds = %39
  %50 = load i16, i16* %5, align 2
  %51 = sext i16 %50 to i32
  %52 = load i16, i16* @BEV_EVENT_CONNECTED, align 2
  %53 = sext i16 %52 to i32
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %49
  br label %58

58:                                               ; preds = %57, %46
  br label %59

59:                                               ; preds = %58, %36
  br label %60

60:                                               ; preds = %59, %28
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %7, align 8
  %65 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @bufferevent_run_eventcb_(i32* %66, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %63, %60
  ret void
}

declare dso_local i32 @bufferevent_run_eventcb_(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
