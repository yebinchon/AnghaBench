; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_dp_is_useless.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_dp_is_useless.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i64, i32, i32 }
%struct.delegpt = type { i32, %struct.delegpt_ns*, i64, i64 }
%struct.delegpt_ns = type { i32, i64, %struct.delegpt_ns* }

@BIT_RD = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iter_dp_is_useless(%struct.query_info* %0, i32 %1, %struct.delegpt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.query_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.delegpt*, align 8
  %8 = alloca %struct.delegpt_ns*, align 8
  store %struct.query_info* %0, %struct.query_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.delegpt* %2, %struct.delegpt** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @BIT_RD, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %86

14:                                               ; preds = %3
  %15 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %16 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %21 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %14
  store i32 0, i32* %4, align 4
  br label %86

25:                                               ; preds = %19
  %26 = load %struct.query_info*, %struct.query_info** %5, align 8
  %27 = getelementptr inbounds %struct.query_info, %struct.query_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.query_info*, %struct.query_info** %5, align 8
  %33 = getelementptr inbounds %struct.query_info, %struct.query_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %31, %25
  %38 = load %struct.query_info*, %struct.query_info** %5, align 8
  %39 = getelementptr inbounds %struct.query_info, %struct.query_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %42 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @dname_subdomain_c(i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %48 = load %struct.query_info*, %struct.query_info** %5, align 8
  %49 = getelementptr inbounds %struct.query_info, %struct.query_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.query_info*, %struct.query_info** %5, align 8
  %52 = getelementptr inbounds %struct.query_info, %struct.query_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @delegpt_find_ns(%struct.delegpt* %47, i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %86

57:                                               ; preds = %46, %37, %31
  %58 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %59 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %58, i32 0, i32 1
  %60 = load %struct.delegpt_ns*, %struct.delegpt_ns** %59, align 8
  store %struct.delegpt_ns* %60, %struct.delegpt_ns** %8, align 8
  br label %61

61:                                               ; preds = %81, %57
  %62 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %63 = icmp ne %struct.delegpt_ns* %62, null
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %66 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %81

70:                                               ; preds = %64
  %71 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %72 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %75 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @dname_subdomain_c(i32 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %86

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %69
  %82 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %83 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %82, i32 0, i32 2
  %84 = load %struct.delegpt_ns*, %struct.delegpt_ns** %83, align 8
  store %struct.delegpt_ns* %84, %struct.delegpt_ns** %8, align 8
  br label %61

85:                                               ; preds = %61
  store i32 1, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %79, %56, %24, %13
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @dname_subdomain_c(i32, i32) #1

declare dso_local i64 @delegpt_find_ns(%struct.delegpt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
