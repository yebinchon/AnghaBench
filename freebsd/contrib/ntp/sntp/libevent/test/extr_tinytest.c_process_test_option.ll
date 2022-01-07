; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_tinytest.c_process_test_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_tinytest.c_process_test_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testgroup_t = type { i32 }

@TT_ENABLED_ = common dso_local global i32 0, align 4
@TT_SKIP = common dso_local global i32 0, align 4
@TT_OFF_BY_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No such test as %s!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.testgroup_t*, i8*)* @process_test_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_test_option(%struct.testgroup_t* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.testgroup_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.testgroup_t* %0, %struct.testgroup_t** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @TT_ENABLED_, align 4
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 64
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.testgroup_t*, %struct.testgroup_t** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = call i32 @process_test_alias(%struct.testgroup_t* %15, i8* %17)
  store i32 %18, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 58
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  %28 = load i32, i32* @TT_SKIP, align 4
  store i32 %28, i32* %6, align 4
  br label %53

29:                                               ; preds = %19
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 43
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = load %struct.testgroup_t*, %struct.testgroup_t** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* @TT_OFF_BY_DEFAULT, align 4
  %43 = call i32 @tinytest_set_flag_(%struct.testgroup_t* %40, i8* %41, i32 0, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %35
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %46)
  store i32 -1, i32* %3, align 4
  br label %65

48:                                               ; preds = %35
  br label %52

49:                                               ; preds = %29
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %48
  br label %53

53:                                               ; preds = %52, %25
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.testgroup_t*, %struct.testgroup_t** %4, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @tinytest_set_flag_(%struct.testgroup_t* %55, i8* %56, i32 1, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %61)
  store i32 -1, i32* %3, align 4
  br label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %60, %45, %14
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @process_test_alias(%struct.testgroup_t*, i8*) #1

declare dso_local i32 @tinytest_set_flag_(%struct.testgroup_t*, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
