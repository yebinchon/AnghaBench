; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.c_test_nonpersist_readd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.c_test_nonpersist_readd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Re-add nonpersistent events: \00", align 1
@pair = common dso_local global i32* null, align 8
@EV_READ = common dso_local global i32 0, align 4
@re_add_read_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"write(pair[0])\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"write(pair[1])\0A\00", align 1
@test_ok = common dso_local global i32 0, align 4
@EVLOOP_ONCE = common dso_local global i32 0, align 4
@readd_test_event_last_added = common dso_local global %struct.event* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_nonpersist_readd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_nonpersist_readd() #0 {
  %1 = alloca %struct.event, align 4
  %2 = alloca %struct.event, align 4
  %3 = call i32 @setup_test(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %4 = load i32*, i32** @pair, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @EV_READ, align 4
  %8 = load i32, i32* @re_add_read_cb, align 4
  %9 = call i32 @event_set(%struct.event* %1, i32 %6, i32 %7, i32 %8, %struct.event* %2)
  %10 = load i32*, i32** @pair, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @EV_READ, align 4
  %14 = load i32, i32* @re_add_read_cb, align 4
  %15 = call i32 @event_set(%struct.event* %2, i32 %12, i32 %13, i32 %14, %struct.event* %1)
  %16 = load i32*, i32** @pair, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @write(i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %0
  %22 = call i32 @tt_fail_perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %0
  %24 = load i32*, i32** @pair, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @write(i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @tt_fail_perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  %32 = call i32 @event_add(%struct.event* %1, i32* null)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = call i32 @event_add(%struct.event* %2, i32* null)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %31
  store i32 0, i32* @test_ok, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* @test_ok, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %38
  %44 = load i32, i32* @EVLOOP_ONCE, align 4
  %45 = call i32 @event_loop(i32 %44)
  %46 = load i32, i32* @test_ok, align 4
  %47 = icmp ne i32 %46, 2
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %43
  %51 = load %struct.event*, %struct.event** @readd_test_event_last_added, align 8
  %52 = icmp ne %struct.event* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 0, i32* @test_ok, align 4
  br label %78

54:                                               ; preds = %50
  %55 = load %struct.event*, %struct.event** @readd_test_event_last_added, align 8
  %56 = icmp eq %struct.event* %55, %1
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32, i32* @EV_READ, align 4
  %59 = call i64 @event_pending(%struct.event* %1, i32 %58, i32* null)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @EV_READ, align 4
  %63 = call i64 @event_pending(%struct.event* %2, i32 %62, i32* null)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %57
  store i32 0, i32* @test_ok, align 4
  br label %66

66:                                               ; preds = %65, %61
  br label %77

67:                                               ; preds = %54
  %68 = load i32, i32* @EV_READ, align 4
  %69 = call i64 @event_pending(%struct.event* %1, i32 %68, i32* null)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @EV_READ, align 4
  %73 = call i64 @event_pending(%struct.event* %2, i32 %72, i32* null)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71, %67
  store i32 0, i32* @test_ok, align 4
  br label %76

76:                                               ; preds = %75, %71
  br label %77

77:                                               ; preds = %76, %66
  br label %78

78:                                               ; preds = %77, %53
  %79 = call i32 @event_del(%struct.event* %1)
  %80 = call i32 @event_del(%struct.event* %2)
  %81 = call i32 (...) @cleanup_test()
  ret void
}

declare dso_local i32 @setup_test(i8*) #1

declare dso_local i32 @event_set(%struct.event*, i32, i32, i32, %struct.event*) #1

declare dso_local i64 @write(i32, i8*, i32) #1

declare dso_local i32 @tt_fail_perror(i8*) #1

declare dso_local i32 @event_add(%struct.event*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @event_loop(i32) #1

declare dso_local i64 @event_pending(%struct.event*, i32, i32*) #1

declare dso_local i32 @event_del(%struct.event*) #1

declare dso_local i32 @cleanup_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
