; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_sock.c_be_socket_adj_timeouts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_sock.c_be_socket_adj_timeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32, i32, i32 }

@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*)* @be_socket_adj_timeouts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_socket_adj_timeouts(%struct.bufferevent* %0) #0 {
  %2 = alloca %struct.bufferevent*, align 8
  %3 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %5 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %4, i32 0, i32 2
  %6 = load i32, i32* @EV_READ, align 4
  %7 = call i64 @event_pending(i32* %5, i32 %6, i32* null)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %11 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %10, i32 0, i32 3
  %12 = call i64 @evutil_timerisset(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %16 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %15, i32 0, i32 2
  %17 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %18 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %17, i32 0, i32 3
  %19 = call i64 @be_socket_add(i32* %16, i32* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %14
  br label %27

23:                                               ; preds = %9
  %24 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %25 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %24, i32 0, i32 2
  %26 = call i32 @event_remove_timer(i32* %25)
  br label %27

27:                                               ; preds = %23, %22
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %30 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %29, i32 0, i32 0
  %31 = load i32, i32* @EV_WRITE, align 4
  %32 = call i64 @event_pending(i32* %30, i32 %31, i32* null)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %36 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %35, i32 0, i32 1
  %37 = call i64 @evutil_timerisset(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %41 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %40, i32 0, i32 0
  %42 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %43 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %42, i32 0, i32 1
  %44 = call i64 @be_socket_add(i32* %41, i32* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %39
  br label %52

48:                                               ; preds = %34
  %49 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %50 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %49, i32 0, i32 0
  %51 = call i32 @event_remove_timer(i32* %50)
  br label %52

52:                                               ; preds = %48, %47
  br label %53

53:                                               ; preds = %52, %28
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @event_pending(i32*, i32, i32*) #1

declare dso_local i64 @evutil_timerisset(i32*) #1

declare dso_local i64 @be_socket_add(i32*, i32*) #1

declare dso_local i32 @event_remove_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
