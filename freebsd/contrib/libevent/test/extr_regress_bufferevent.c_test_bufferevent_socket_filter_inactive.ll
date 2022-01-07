; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_bufferevent.c_test_bufferevent_socket_filter_inactive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_bufferevent.c_test_bufferevent_socket_filter_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.bufferevent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_bufferevent_socket_filter_inactive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bufferevent_socket_filter_inactive(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca %struct.bufferevent*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.basic_test_data*
  store %struct.basic_test_data* %7, %struct.basic_test_data** %3, align 8
  store %struct.bufferevent* null, %struct.bufferevent** %4, align 8
  store %struct.bufferevent* null, %struct.bufferevent** %5, align 8
  %8 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %9 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.bufferevent* @bufferevent_socket_new(i32 %10, i32 -1, i32 0)
  store %struct.bufferevent* %11, %struct.bufferevent** %4, align 8
  %12 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %13 = call i32 @tt_assert(%struct.bufferevent* %12)
  %14 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %15 = call %struct.bufferevent* @bufferevent_filter_new(%struct.bufferevent* %14, i32* null, i32* null, i32 0, i32* null, i32* null)
  store %struct.bufferevent* %15, %struct.bufferevent** %5, align 8
  %16 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %17 = call i32 @tt_assert(%struct.bufferevent* %16)
  br label %18

18:                                               ; preds = %1
  %19 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %20 = icmp ne %struct.bufferevent* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %23 = call i32 @bufferevent_free(%struct.bufferevent* %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %26 = icmp ne %struct.bufferevent* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %29 = call i32 @bufferevent_free(%struct.bufferevent* %28)
  br label %30

30:                                               ; preds = %27, %24
  ret void
}

declare dso_local %struct.bufferevent* @bufferevent_socket_new(i32, i32, i32) #1

declare dso_local i32 @tt_assert(%struct.bufferevent*) #1

declare dso_local %struct.bufferevent* @bufferevent_filter_new(%struct.bufferevent*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
