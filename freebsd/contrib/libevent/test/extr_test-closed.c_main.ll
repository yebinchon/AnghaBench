; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_test-closed.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_test-closed.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.event_config = type { i32 }
%struct.event = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"test string\00", align 1
@EV_FEATURE_EARLY_CLOSE = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@EVUTIL_SHUT_WR = common dso_local global i32 0, align 4
@EV_CLOSED = common dso_local global i32 0, align 4
@EV_TIMEOUT = common dso_local global i32 0, align 4
@closed_cb = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.event_base*, align 8
  %7 = alloca %struct.event_config*, align 8
  %8 = alloca %struct.event*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [2 x i32], align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %11 = call %struct.event_config* (...) @event_config_new()
  store %struct.event_config* %11, %struct.event_config** %7, align 8
  %12 = load %struct.event_config*, %struct.event_config** %7, align 8
  %13 = load i32, i32* @EV_FEATURE_EARLY_CLOSE, align 4
  %14 = call i32 @event_config_require_features(%struct.event_config* %12, i32 %13)
  %15 = load %struct.event_config*, %struct.event_config** %7, align 8
  %16 = call %struct.event_base* @event_base_new_with_config(%struct.event_config* %15)
  store %struct.event_base* %16, %struct.event_base** %6, align 8
  %17 = load %struct.event_config*, %struct.event_config** %7, align 8
  %18 = call i32 @event_config_free(%struct.event_config* %17)
  %19 = load %struct.event_base*, %struct.event_base** %6, align 8
  %20 = icmp ne %struct.event_base* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

22:                                               ; preds = %2
  %23 = load i32, i32* @AF_UNIX, align 4
  %24 = load i32, i32* @SOCK_STREAM, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %26 = call i32 @evutil_socketpair(i32 %23, i32 %24, i32 0, i32* %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %60

29:                                               ; preds = %22
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = trunc i64 %34 to i32
  %36 = add nsw i32 %35, 1
  %37 = call i64 @send(i32 %31, i8* %32, i32 %36, i32 0)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %60

40:                                               ; preds = %29
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EVUTIL_SHUT_WR, align 4
  %44 = call i32 @shutdown(i32 %42, i32 %43)
  %45 = load %struct.event_base*, %struct.event_base** %6, align 8
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EV_CLOSED, align 4
  %49 = load i32, i32* @EV_TIMEOUT, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @closed_cb, align 4
  %52 = call i32 (...) @event_self_cbarg()
  %53 = call %struct.event* @event_new(%struct.event_base* %45, i32 %47, i32 %50, i32 %51, i32 %52)
  store %struct.event* %53, %struct.event** %8, align 8
  %54 = load %struct.event*, %struct.event** %8, align 8
  %55 = call i32 @event_add(%struct.event* %54, i32* @timeout)
  %56 = load %struct.event_base*, %struct.event_base** %6, align 8
  %57 = call i32 @event_base_dispatch(%struct.event_base* %56)
  %58 = load %struct.event_base*, %struct.event_base** %6, align 8
  %59 = call i32 @event_base_free(%struct.event_base* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %40, %39, %28, %21
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.event_config* @event_config_new(...) #1

declare dso_local i32 @event_config_require_features(%struct.event_config*, i32) #1

declare dso_local %struct.event_base* @event_base_new_with_config(%struct.event_config*) #1

declare dso_local i32 @event_config_free(%struct.event_config*) #1

declare dso_local i32 @evutil_socketpair(i32, i32, i32, i32*) #1

declare dso_local i64 @send(i32, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local %struct.event* @event_new(%struct.event_base*, i32, i32, i32, i32) #1

declare dso_local i32 @event_self_cbarg(...) #1

declare dso_local i32 @event_add(%struct.event*, i32*) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

declare dso_local i32 @event_base_free(%struct.event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
