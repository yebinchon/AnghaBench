; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_hello-world.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_hello-world.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.evconnlistener = type { i32 }
%struct.event = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Could not initialize libevent!\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@PORT = common dso_local global i32 0, align 4
@listener_cb = common dso_local global i32 0, align 4
@LEV_OPT_REUSEABLE = common dso_local global i32 0, align 4
@LEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Could not create a listener!\0A\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@signal_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Could not create/add a signal event!\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.event_base*, align 8
  %7 = alloca %struct.evconnlistener*, align 8
  %8 = alloca %struct.event*, align 8
  %9 = alloca %struct.sockaddr_in, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call %struct.event_base* (...) @event_base_new()
  store %struct.event_base* %10, %struct.event_base** %6, align 8
  %11 = load %struct.event_base*, %struct.event_base** %6, align 8
  %12 = icmp ne %struct.event_base* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %63

16:                                               ; preds = %2
  %17 = call i32 @memset(%struct.sockaddr_in* %9, i32 0, i32 8)
  %18 = load i32, i32* @AF_INET, align 4
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @PORT, align 4
  %21 = call i32 @htons(i32 %20)
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.event_base*, %struct.event_base** %6, align 8
  %24 = load i32, i32* @listener_cb, align 4
  %25 = load %struct.event_base*, %struct.event_base** %6, align 8
  %26 = bitcast %struct.event_base* %25 to i8*
  %27 = load i32, i32* @LEV_OPT_REUSEABLE, align 4
  %28 = load i32, i32* @LEV_OPT_CLOSE_ON_FREE, align 4
  %29 = or i32 %27, %28
  %30 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %31 = call %struct.evconnlistener* @evconnlistener_new_bind(%struct.event_base* %23, i32 %24, i8* %26, i32 %29, i32 -1, %struct.sockaddr* %30, i32 8)
  store %struct.evconnlistener* %31, %struct.evconnlistener** %7, align 8
  %32 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %33 = icmp ne %struct.evconnlistener* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %16
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %63

37:                                               ; preds = %16
  %38 = load %struct.event_base*, %struct.event_base** %6, align 8
  %39 = load i32, i32* @SIGINT, align 4
  %40 = load i32, i32* @signal_cb, align 4
  %41 = load %struct.event_base*, %struct.event_base** %6, align 8
  %42 = bitcast %struct.event_base* %41 to i8*
  %43 = call %struct.event* @evsignal_new(%struct.event_base* %38, i32 %39, i32 %40, i8* %42)
  store %struct.event* %43, %struct.event** %8, align 8
  %44 = load %struct.event*, %struct.event** %8, align 8
  %45 = icmp ne %struct.event* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.event*, %struct.event** %8, align 8
  %48 = call i64 @event_add(%struct.event* %47, i32* null)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %37
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %63

53:                                               ; preds = %46
  %54 = load %struct.event_base*, %struct.event_base** %6, align 8
  %55 = call i32 @event_base_dispatch(%struct.event_base* %54)
  %56 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %57 = call i32 @evconnlistener_free(%struct.evconnlistener* %56)
  %58 = load %struct.event*, %struct.event** %8, align 8
  %59 = call i32 @event_free(%struct.event* %58)
  %60 = load %struct.event_base*, %struct.event_base** %6, align 8
  %61 = call i32 @event_base_free(%struct.event_base* %60)
  %62 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %53, %50, %34, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.event_base* @event_base_new(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.evconnlistener* @evconnlistener_new_bind(%struct.event_base*, i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local %struct.event* @evsignal_new(%struct.event_base*, i32, i32, i8*) #1

declare dso_local i64 @event_add(%struct.event*, i32*) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

declare dso_local i32 @evconnlistener_free(%struct.evconnlistener*) #1

declare dso_local i32 @event_free(%struct.event*) #1

declare dso_local i32 @event_base_free(%struct.event_base*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
