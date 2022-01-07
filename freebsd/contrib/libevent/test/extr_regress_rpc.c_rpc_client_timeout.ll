; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_rpc.c_rpc_client_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_rpc.c_rpc_client_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp = type { i32 }
%struct.evrpc_base = type { i32 }
%struct.evrpc_pool = type { i32 }
%struct.msg = type { i32 }
%struct.kill = type { i32 }

@from_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"niels\00", align 1
@to_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"tester\00", align 1
@NeverReply = common dso_local global i32 0, align 4
@GotErrorCb = common dso_local global i32 0, align 4
@test_ok = common dso_local global i32 0, align 4
@saved_rpc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rpc_client_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_client_timeout() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.evhttp*, align 8
  %3 = alloca %struct.evrpc_base*, align 8
  %4 = alloca %struct.evrpc_pool*, align 8
  %5 = alloca %struct.msg*, align 8
  %6 = alloca %struct.kill*, align 8
  store %struct.evhttp* null, %struct.evhttp** %2, align 8
  store %struct.evrpc_base* null, %struct.evrpc_base** %3, align 8
  store %struct.evrpc_pool* null, %struct.evrpc_pool** %4, align 8
  store %struct.msg* null, %struct.msg** %5, align 8
  store %struct.kill* null, %struct.kill** %6, align 8
  %7 = call i32 @rpc_setup(%struct.evhttp** %2, i32* %1, %struct.evrpc_base** %3)
  %8 = load i32, i32* %1, align 4
  %9 = call %struct.evrpc_pool* @rpc_pool_with_connection(i32 %8)
  store %struct.evrpc_pool* %9, %struct.evrpc_pool** %4, align 8
  %10 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %11 = ptrtoint %struct.evrpc_pool* %10 to i32
  %12 = call i32 @tt_assert(i32 %11)
  %13 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %14 = call i32 @evrpc_pool_set_timeout(%struct.evrpc_pool* %13, i32 1)
  %15 = call %struct.msg* (...) @msg_new()
  store %struct.msg* %15, %struct.msg** %5, align 8
  %16 = load %struct.msg*, %struct.msg** %5, align 8
  %17 = ptrtoint %struct.msg* %16 to i32
  %18 = call i32 @tt_assert(i32 %17)
  %19 = load %struct.msg*, %struct.msg** %5, align 8
  %20 = load i32, i32* @from_name, align 4
  %21 = call i32 @EVTAG_ASSIGN(%struct.msg* %19, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.msg*, %struct.msg** %5, align 8
  %23 = load i32, i32* @to_name, align 4
  %24 = call i32 @EVTAG_ASSIGN(%struct.msg* %22, i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %25 = call %struct.kill* (...) @kill_new()
  store %struct.kill* %25, %struct.kill** %6, align 8
  %26 = load i32, i32* @NeverReply, align 4
  %27 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %28 = load %struct.msg*, %struct.msg** %5, align 8
  %29 = load %struct.kill*, %struct.kill** %6, align 8
  %30 = load i32, i32* @GotErrorCb, align 4
  %31 = call i32 @EVRPC_MAKE_REQUEST(i32 %26, %struct.evrpc_pool* %27, %struct.msg* %28, %struct.kill* %29, i32 %30, i32* null)
  store i32 0, i32* @test_ok, align 4
  %32 = call i32 (...) @event_dispatch()
  %33 = load i32, i32* @saved_rpc, align 4
  %34 = call i32 @EVRPC_REQUEST_DONE(i32 %33)
  %35 = load %struct.evrpc_base*, %struct.evrpc_base** %3, align 8
  %36 = call i32 @rpc_teardown(%struct.evrpc_base* %35)
  %37 = load i32, i32* @test_ok, align 4
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i32
  %40 = call i32 @tt_assert(i32 %39)
  br label %41

41:                                               ; preds = %0
  %42 = load %struct.msg*, %struct.msg** %5, align 8
  %43 = icmp ne %struct.msg* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.msg*, %struct.msg** %5, align 8
  %46 = call i32 @msg_free(%struct.msg* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.kill*, %struct.kill** %6, align 8
  %49 = icmp ne %struct.kill* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.kill*, %struct.kill** %6, align 8
  %52 = call i32 @kill_free(%struct.kill* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %55 = icmp ne %struct.evrpc_pool* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %58 = call i32 @evrpc_pool_free(%struct.evrpc_pool* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %61 = icmp ne %struct.evhttp* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %64 = call i32 @evhttp_free(%struct.evhttp* %63)
  br label %65

65:                                               ; preds = %62, %59
  ret void
}

declare dso_local i32 @rpc_setup(%struct.evhttp**, i32*, %struct.evrpc_base**) #1

declare dso_local %struct.evrpc_pool* @rpc_pool_with_connection(i32) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i32 @evrpc_pool_set_timeout(%struct.evrpc_pool*, i32) #1

declare dso_local %struct.msg* @msg_new(...) #1

declare dso_local i32 @EVTAG_ASSIGN(%struct.msg*, i32, i8*) #1

declare dso_local %struct.kill* @kill_new(...) #1

declare dso_local i32 @EVRPC_MAKE_REQUEST(i32, %struct.evrpc_pool*, %struct.msg*, %struct.kill*, i32, i32*) #1

declare dso_local i32 @event_dispatch(...) #1

declare dso_local i32 @EVRPC_REQUEST_DONE(i32) #1

declare dso_local i32 @rpc_teardown(%struct.evrpc_base*) #1

declare dso_local i32 @msg_free(%struct.msg*) #1

declare dso_local i32 @kill_free(%struct.kill*) #1

declare dso_local i32 @evrpc_pool_free(%struct.evrpc_pool*) #1

declare dso_local i32 @evhttp_free(%struct.evhttp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
