; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_rpc.c_rpc_basic_queued_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_rpc.c_rpc_basic_queued_client.c"
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
@Message = common dso_local global i32 0, align 4
@GotKillCbTwo = common dso_local global i32 0, align 4
@GotKillCb = common dso_local global i32 0, align 4
@test_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rpc_basic_queued_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_basic_queued_client() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.evhttp*, align 8
  %3 = alloca %struct.evrpc_base*, align 8
  %4 = alloca %struct.evrpc_pool*, align 8
  %5 = alloca %struct.msg*, align 8
  %6 = alloca %struct.kill*, align 8
  %7 = alloca %struct.kill*, align 8
  store %struct.evhttp* null, %struct.evhttp** %2, align 8
  store %struct.evrpc_base* null, %struct.evrpc_base** %3, align 8
  store %struct.evrpc_pool* null, %struct.evrpc_pool** %4, align 8
  store %struct.msg* null, %struct.msg** %5, align 8
  store %struct.kill* null, %struct.kill** %6, align 8
  store %struct.kill* null, %struct.kill** %7, align 8
  %8 = call i32 @rpc_setup(%struct.evhttp** %2, i32* %1, %struct.evrpc_base** %3)
  %9 = load i32, i32* %1, align 4
  %10 = call %struct.evrpc_pool* @rpc_pool_with_connection(i32 %9)
  store %struct.evrpc_pool* %10, %struct.evrpc_pool** %4, align 8
  %11 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %12 = ptrtoint %struct.evrpc_pool* %11 to i32
  %13 = call i32 @tt_assert(i32 %12)
  %14 = call %struct.msg* (...) @msg_new()
  store %struct.msg* %14, %struct.msg** %5, align 8
  %15 = load %struct.msg*, %struct.msg** %5, align 8
  %16 = ptrtoint %struct.msg* %15 to i32
  %17 = call i32 @tt_assert(i32 %16)
  %18 = load %struct.msg*, %struct.msg** %5, align 8
  %19 = load i32, i32* @from_name, align 4
  %20 = call i32 @EVTAG_ASSIGN(%struct.msg* %18, i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.msg*, %struct.msg** %5, align 8
  %22 = load i32, i32* @to_name, align 4
  %23 = call i32 @EVTAG_ASSIGN(%struct.msg* %21, i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %24 = call %struct.kill* (...) @kill_new()
  store %struct.kill* %24, %struct.kill** %6, align 8
  %25 = call %struct.kill* (...) @kill_new()
  store %struct.kill* %25, %struct.kill** %7, align 8
  %26 = load i32, i32* @Message, align 4
  %27 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %28 = load %struct.msg*, %struct.msg** %5, align 8
  %29 = load %struct.kill*, %struct.kill** %6, align 8
  %30 = load i32, i32* @GotKillCbTwo, align 4
  %31 = call i32 @EVRPC_MAKE_REQUEST(i32 %26, %struct.evrpc_pool* %27, %struct.msg* %28, %struct.kill* %29, i32 %30, i32* null)
  %32 = load i32, i32* @Message, align 4
  %33 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %34 = load %struct.msg*, %struct.msg** %5, align 8
  %35 = load %struct.kill*, %struct.kill** %7, align 8
  %36 = load i32, i32* @GotKillCb, align 4
  %37 = call i32 @EVRPC_MAKE_REQUEST(i32 %32, %struct.evrpc_pool* %33, %struct.msg* %34, %struct.kill* %35, i32 %36, i32* null)
  store i32 0, i32* @test_ok, align 4
  %38 = call i32 (...) @event_dispatch()
  %39 = load %struct.evrpc_base*, %struct.evrpc_base** %3, align 8
  %40 = call i32 @rpc_teardown(%struct.evrpc_base* %39)
  %41 = load i32, i32* @test_ok, align 4
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i32
  %44 = call i32 @tt_assert(i32 %43)
  br label %45

45:                                               ; preds = %0
  %46 = load %struct.msg*, %struct.msg** %5, align 8
  %47 = icmp ne %struct.msg* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.msg*, %struct.msg** %5, align 8
  %50 = call i32 @msg_free(%struct.msg* %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.kill*, %struct.kill** %6, align 8
  %53 = icmp ne %struct.kill* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.kill*, %struct.kill** %6, align 8
  %56 = call i32 @kill_free(%struct.kill* %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.kill*, %struct.kill** %7, align 8
  %59 = icmp ne %struct.kill* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.kill*, %struct.kill** %7, align 8
  %62 = call i32 @kill_free(%struct.kill* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %65 = icmp ne %struct.evrpc_pool* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %68 = call i32 @evrpc_pool_free(%struct.evrpc_pool* %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %71 = icmp ne %struct.evhttp* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %74 = call i32 @evhttp_free(%struct.evhttp* %73)
  br label %75

75:                                               ; preds = %72, %69
  ret void
}

declare dso_local i32 @rpc_setup(%struct.evhttp**, i32*, %struct.evrpc_base**) #1

declare dso_local %struct.evrpc_pool* @rpc_pool_with_connection(i32) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local %struct.msg* @msg_new(...) #1

declare dso_local i32 @EVTAG_ASSIGN(%struct.msg*, i32, i8*) #1

declare dso_local %struct.kill* @kill_new(...) #1

declare dso_local i32 @EVRPC_MAKE_REQUEST(i32, %struct.evrpc_pool*, %struct.msg*, %struct.kill*, i32, i32*) #1

declare dso_local i32 @event_dispatch(...) #1

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
