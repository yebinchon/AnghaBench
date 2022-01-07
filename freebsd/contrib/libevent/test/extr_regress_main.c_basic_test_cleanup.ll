; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_main.c_basic_test_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_main.c_basic_test_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testcase_t = type { i32 }
%struct.basic_test_data = type { i32*, i64 }

@TT_NO_LOGS = common dso_local global i32 0, align 4
@TT_NEED_SOCKETPAIR = common dso_local global i32 0, align 4
@TT_NEED_DNS = common dso_local global i32 0, align 4
@TT_NEED_BASE = common dso_local global i32 0, align 4
@TT_FORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.testcase_t*, i8*)* @basic_test_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @basic_test_cleanup(%struct.testcase_t* %0, i8* %1) #0 {
  %3 = alloca %struct.testcase_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.basic_test_data*, align 8
  store %struct.testcase_t* %0, %struct.testcase_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.basic_test_data*
  store %struct.basic_test_data* %7, %struct.basic_test_data** %5, align 8
  %8 = load %struct.testcase_t*, %struct.testcase_t** %3, align 8
  %9 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TT_NO_LOGS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @event_set_log_callback(i32* null)
  br label %16

16:                                               ; preds = %14, %2
  %17 = load %struct.testcase_t*, %struct.testcase_t** %3, align 8
  %18 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TT_NEED_SOCKETPAIR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %16
  %24 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %25 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %32 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @evutil_closesocket(i32 %35)
  br label %37

37:                                               ; preds = %30, %23
  %38 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %39 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %46 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @evutil_closesocket(i32 %49)
  br label %51

51:                                               ; preds = %44, %37
  br label %52

52:                                               ; preds = %51, %16
  %53 = load %struct.testcase_t*, %struct.testcase_t** %3, align 8
  %54 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TT_NEED_DNS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = call i32 @evdns_shutdown(i32 0)
  br label %61

61:                                               ; preds = %59, %52
  %62 = load %struct.testcase_t*, %struct.testcase_t** %3, align 8
  %63 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @TT_NEED_BASE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %61
  %69 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %70 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %75 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @event_base_assert_ok_(i64 %76)
  %78 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %79 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @event_base_free(i64 %80)
  br label %82

82:                                               ; preds = %73, %68
  br label %83

83:                                               ; preds = %82, %61
  %84 = load %struct.testcase_t*, %struct.testcase_t** %3, align 8
  %85 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @TT_FORK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = call i32 (...) @libevent_global_shutdown()
  br label %92

92:                                               ; preds = %90, %83
  %93 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %94 = call i32 @free(%struct.basic_test_data* %93)
  ret i32 1
}

declare dso_local i32 @event_set_log_callback(i32*) #1

declare dso_local i32 @evutil_closesocket(i32) #1

declare dso_local i32 @evdns_shutdown(i32) #1

declare dso_local i32 @event_base_assert_ok_(i64) #1

declare dso_local i32 @event_base_free(i64) #1

declare dso_local i32 @libevent_global_shutdown(...) #1

declare dso_local i32 @free(%struct.basic_test_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
