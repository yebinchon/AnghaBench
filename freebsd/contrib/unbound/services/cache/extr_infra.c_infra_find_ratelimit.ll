; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_find_ratelimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_find_ratelimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_cache = type { i32 }
%struct.domain_limit_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@infra_dp_ratelimit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @infra_find_ratelimit(%struct.infra_cache* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.infra_cache*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.domain_limit_data*, align 8
  store %struct.infra_cache* %0, %struct.infra_cache** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @dname_count_labels(i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.infra_cache*, %struct.infra_cache** %5, align 8
  %13 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %12, i32 0, i32 0
  %14 = load i32*, i32** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %18 = call i64 @name_tree_lookup(i32* %13, i32* %14, i64 %15, i32 %16, i32 %17)
  %19 = inttoptr i64 %18 to %struct.domain_limit_data*
  store %struct.domain_limit_data* %19, %struct.domain_limit_data** %9, align 8
  %20 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %21 = icmp ne %struct.domain_limit_data* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @infra_dp_ratelimit, align 4
  store i32 %23, i32* %4, align 4
  br label %74

24:                                               ; preds = %3
  %25 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %26 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %33 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %38 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %4, align 4
  br label %74

40:                                               ; preds = %31, %24
  %41 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %42 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %49 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.domain_limit_data*
  store %struct.domain_limit_data* %52, %struct.domain_limit_data** %9, align 8
  br label %53

53:                                               ; preds = %47, %40
  br label %54

54:                                               ; preds = %66, %53
  %55 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %56 = icmp ne %struct.domain_limit_data* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %59 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %64 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %4, align 4
  br label %74

66:                                               ; preds = %57
  %67 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %68 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.domain_limit_data*
  store %struct.domain_limit_data* %71, %struct.domain_limit_data** %9, align 8
  br label %54

72:                                               ; preds = %54
  %73 = load i32, i32* @infra_dp_ratelimit, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %62, %36, %22
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i64 @name_tree_lookup(i32*, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
