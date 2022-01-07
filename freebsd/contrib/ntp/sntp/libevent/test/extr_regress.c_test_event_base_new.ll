; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.c_test_event_base_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.c_test_event_base_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32* }
%struct.event_base = type { i32 }
%struct.event = type { i32 }
%struct.basic_cb_args = type { i64, %struct.event*, %struct.event_base* }

@TEST1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"initial write\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"initial write fell short (%d of %d bytes)\00", align 1
@SHUT_WR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"initial write shutdown\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to create event base\00", align 1
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@basic_read_cb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"initial event_add\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"unsuccessful exit from event loop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_event_base_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_event_base_new(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca %struct.event, align 4
  %6 = alloca %struct.basic_cb_args, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.basic_test_data*
  store %struct.basic_test_data* %10, %struct.basic_test_data** %3, align 8
  store %struct.event_base* null, %struct.event_base** %4, align 8
  %11 = load i32, i32* @TEST1, align 4
  %12 = call i64 @strlen(i32 %11)
  %13 = trunc i64 %12 to i32
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %16 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TEST1, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @write(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = call i32 @tt_abort_perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %38

27:                                               ; preds = %1
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @tt_abort_printf(i8* %35)
  br label %37

37:                                               ; preds = %31, %27
  br label %38

38:                                               ; preds = %37, %25
  %39 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %40 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SHUT_WR, align 4
  %45 = call i64 @shutdown(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = call i32 @tt_abort_perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %38
  %50 = call %struct.event_base* (...) @event_base_new()
  store %struct.event_base* %50, %struct.event_base** %4, align 8
  %51 = load %struct.event_base*, %struct.event_base** %4, align 8
  %52 = icmp ne %struct.event_base* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %49
  %56 = load %struct.event_base*, %struct.event_base** %4, align 8
  %57 = getelementptr inbounds %struct.basic_cb_args, %struct.basic_cb_args* %6, i32 0, i32 2
  store %struct.event_base* %56, %struct.event_base** %57, align 8
  %58 = getelementptr inbounds %struct.basic_cb_args, %struct.basic_cb_args* %6, i32 0, i32 1
  store %struct.event* %5, %struct.event** %58, align 8
  %59 = getelementptr inbounds %struct.basic_cb_args, %struct.basic_cb_args* %6, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.event_base*, %struct.event_base** %4, align 8
  %61 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %62 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @EV_READ, align 4
  %67 = load i32, i32* @EV_PERSIST, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @basic_read_cb, align 4
  %70 = call i32 @event_assign(%struct.event* %5, %struct.event_base* %60, i32 %65, i32 %68, i32 %69, %struct.basic_cb_args* %6)
  %71 = call i64 @event_add(%struct.event* %5, i32* null)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %55
  %74 = call i32 @tt_abort_perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %55
  %76 = load %struct.event_base*, %struct.event_base** %4, align 8
  %77 = call i64 @event_base_loop(%struct.event_base* %76, i32 0)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %75
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.event_base*, %struct.event_base** %4, align 8
  %84 = icmp ne %struct.event_base* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.event_base*, %struct.event_base** %4, align 8
  %87 = call i32 @event_base_free(%struct.event_base* %86)
  br label %88

88:                                               ; preds = %85, %82
  ret void
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @tt_abort_perror(i8*) #1

declare dso_local i32 @tt_abort_printf(i8*) #1

declare dso_local i64 @shutdown(i32, i32) #1

declare dso_local %struct.event_base* @event_base_new(...) #1

declare dso_local i32 @tt_abort_msg(i8*) #1

declare dso_local i32 @event_assign(%struct.event*, %struct.event_base*, i32, i32, i32, %struct.basic_cb_args*) #1

declare dso_local i64 @event_add(%struct.event*, i32*) #1

declare dso_local i64 @event_base_loop(%struct.event_base*, i32) #1

declare dso_local i32 @event_base_free(%struct.event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
