; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_be_openssl_adj_timeouts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_be_openssl_adj_timeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32, i32, i32 }
%struct.bufferevent_openssl = type { i64 }

@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*)* @be_openssl_adj_timeouts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_openssl_adj_timeouts(%struct.bufferevent* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca %struct.bufferevent_openssl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  %7 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %8 = call %struct.bufferevent_openssl* @upcast(%struct.bufferevent* %7)
  store %struct.bufferevent_openssl* %8, %struct.bufferevent_openssl** %4, align 8
  %9 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %10 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %15 = call i32 @bufferevent_generic_adj_timeouts_(%struct.bufferevent* %14)
  store i32 %15, i32* %2, align 4
  br label %70

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %18 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %17, i32 0, i32 2
  %19 = load i32, i32* @EV_READ, align 4
  %20 = call i64 @event_pending(i32* %18, i32 %19, i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %24 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %23, i32 0, i32 3
  %25 = call i64 @evutil_timerisset(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %29 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %28, i32 0, i32 2
  %30 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %31 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %30, i32 0, i32 3
  %32 = call i32 @bufferevent_add_event_(i32* %29, i32* %31)
  store i32 %32, i32* %5, align 4
  br label %37

33:                                               ; preds = %22
  %34 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %35 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %34, i32 0, i32 2
  %36 = call i32 @event_remove_timer(i32* %35)
  br label %37

37:                                               ; preds = %33, %27
  br label %38

38:                                               ; preds = %37, %16
  %39 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %40 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %39, i32 0, i32 0
  %41 = load i32, i32* @EV_WRITE, align 4
  %42 = call i64 @event_pending(i32* %40, i32 %41, i32* null)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  %45 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %46 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %45, i32 0, i32 1
  %47 = call i64 @evutil_timerisset(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %51 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %50, i32 0, i32 0
  %52 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %53 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %52, i32 0, i32 1
  %54 = call i32 @bufferevent_add_event_(i32* %51, i32* %53)
  store i32 %54, i32* %6, align 4
  br label %59

55:                                               ; preds = %44
  %56 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %57 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %56, i32 0, i32 0
  %58 = call i32 @event_remove_timer(i32* %57)
  br label %59

59:                                               ; preds = %55, %49
  br label %60

60:                                               ; preds = %59, %38
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi i1 [ true, %60 ], [ %65, %63 ]
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 -1, i32 0
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %13
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.bufferevent_openssl* @upcast(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_generic_adj_timeouts_(%struct.bufferevent*) #1

declare dso_local i64 @event_pending(i32*, i32, i32*) #1

declare dso_local i64 @evutil_timerisset(i32*) #1

declare dso_local i32 @bufferevent_add_event_(i32*, i32*) #1

declare dso_local i32 @event_remove_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
