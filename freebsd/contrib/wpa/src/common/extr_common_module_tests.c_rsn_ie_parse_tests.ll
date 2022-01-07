; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_common_module_tests.c_rsn_ie_parse_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_common_module_tests.c_rsn_ie_parse_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsn_ie_parse_test_data = type { i64, i32, i64 }
%struct.wpa_ie_data = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"rsn_ie_parse tests\00", align 1
@rsn_parse_tests = common dso_local global %struct.rsn_ie_parse_test_data* null, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"rsn_ie_parse test %d failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rsn_ie_parse_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsn_ie_parse_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsn_ie_parse_test_data*, align 8
  %4 = alloca %struct.wpa_ie_data, align 4
  store i32 0, i32* %2, align 4
  %5 = load i32, i32* @MSG_INFO, align 4
  %6 = call i32 (i32, i8*, ...) @wpa_printf(i32 %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %36, %0
  %8 = load %struct.rsn_ie_parse_test_data*, %struct.rsn_ie_parse_test_data** @rsn_parse_tests, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.rsn_ie_parse_test_data, %struct.rsn_ie_parse_test_data* %8, i64 %10
  %12 = getelementptr inbounds %struct.rsn_ie_parse_test_data, %struct.rsn_ie_parse_test_data* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %7
  %16 = load %struct.rsn_ie_parse_test_data*, %struct.rsn_ie_parse_test_data** @rsn_parse_tests, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.rsn_ie_parse_test_data, %struct.rsn_ie_parse_test_data* %16, i64 %18
  store %struct.rsn_ie_parse_test_data* %19, %struct.rsn_ie_parse_test_data** %3, align 8
  %20 = load %struct.rsn_ie_parse_test_data*, %struct.rsn_ie_parse_test_data** %3, align 8
  %21 = getelementptr inbounds %struct.rsn_ie_parse_test_data, %struct.rsn_ie_parse_test_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.rsn_ie_parse_test_data*, %struct.rsn_ie_parse_test_data** %3, align 8
  %24 = getelementptr inbounds %struct.rsn_ie_parse_test_data, %struct.rsn_ie_parse_test_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @wpa_parse_wpa_ie_rsn(i64 %22, i32 %25, %struct.wpa_ie_data* %4)
  %27 = load %struct.rsn_ie_parse_test_data*, %struct.rsn_ie_parse_test_data** %3, align 8
  %28 = getelementptr inbounds %struct.rsn_ie_parse_test_data, %struct.rsn_ie_parse_test_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %15
  %32 = load i32, i32* @MSG_ERROR, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %15
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %7

39:                                               ; preds = %7
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wpa_parse_wpa_ie_rsn(i64, i32, %struct.wpa_ie_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
