; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_test-fdleak.c_client_read_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_test-fdleak.c_client_read_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.event_base = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Incorrect data received!\00", align 1
@num_requests = common dso_local global i64 0, align 8
@MAX_REQUESTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i8*)* @client_read_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @client_read_cb(%struct.bufferevent* %0, i8* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.event_base*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %8 = call %struct.event_base* @bufferevent_get_base(%struct.bufferevent* %7)
  store %struct.event_base* %8, %struct.event_base** %6, align 8
  %9 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %10 = call i32 @bufferevent_read(%struct.bufferevent* %9, i8* %5, i32 1)
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 65
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @exit(i32 2) #3
  unreachable

17:                                               ; preds = %2
  %18 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %19 = call i32 @bufferevent_free(%struct.bufferevent* %18)
  %20 = load i64, i64* @num_requests, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* @num_requests, align 8
  %22 = load i64, i64* @num_requests, align 8
  %23 = load i64, i64* @MAX_REQUESTS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.event_base*, %struct.event_base** %6, align 8
  %27 = call i32 @event_base_loopbreak(%struct.event_base* %26)
  br label %31

28:                                               ; preds = %17
  %29 = load %struct.event_base*, %struct.event_base** %6, align 8
  %30 = call i32 @start_client(%struct.event_base* %29)
  br label %31

31:                                               ; preds = %28, %25
  ret void
}

declare dso_local %struct.event_base* @bufferevent_get_base(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_read(%struct.bufferevent*, i8*, i32) #1

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

declare dso_local i32 @event_base_loopbreak(%struct.event_base*) #1

declare dso_local i32 @start_client(%struct.event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
