; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_cache = type { i32, i32, i32, i32, i32 }
%struct.config_file = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 }

@infra_dp_ratelimit = common dso_local global i32 0, align 4
@infra_ip_ratelimit = common dso_local global i32 0, align 4
@INFRA_BYTES_NAME = common dso_local global i32 0, align 4
@domain_limit_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.infra_cache* @infra_adjust(%struct.infra_cache* %0, %struct.config_file* %1) #0 {
  %3 = alloca %struct.infra_cache*, align 8
  %4 = alloca %struct.infra_cache*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca i64, align 8
  store %struct.infra_cache* %0, %struct.infra_cache** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %7 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %8 = icmp ne %struct.infra_cache* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.config_file*, %struct.config_file** %5, align 8
  %11 = call %struct.infra_cache* @infra_create(%struct.config_file* %10)
  store %struct.infra_cache* %11, %struct.infra_cache** %3, align 8
  br label %85

12:                                               ; preds = %2
  %13 = load %struct.config_file*, %struct.config_file** %5, align 8
  %14 = getelementptr inbounds %struct.config_file, %struct.config_file* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %17 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.config_file*, %struct.config_file** %5, align 8
  %19 = getelementptr inbounds %struct.config_file, %struct.config_file* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* @infra_dp_ratelimit, align 4
  %21 = load %struct.config_file*, %struct.config_file** %5, align 8
  %22 = getelementptr inbounds %struct.config_file, %struct.config_file* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* @infra_ip_ratelimit, align 4
  %24 = load %struct.config_file*, %struct.config_file** %5, align 8
  %25 = getelementptr inbounds %struct.config_file, %struct.config_file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load i32, i32* @INFRA_BYTES_NAME, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 8, %29
  %31 = mul i64 %27, %30
  store i64 %31, i64* %6, align 8
  %32 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %33 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.config_file*, %struct.config_file** %5, align 8
  %37 = getelementptr inbounds %struct.config_file, %struct.config_file* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @slabhash_is_size(i32 %34, i64 %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %12
  %42 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %43 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.config_file*, %struct.config_file** %5, align 8
  %46 = getelementptr inbounds %struct.config_file, %struct.config_file* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.config_file*, %struct.config_file** %5, align 8
  %49 = getelementptr inbounds %struct.config_file, %struct.config_file* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @slabhash_is_size(i32 %44, i64 %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %41
  %54 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %55 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.config_file*, %struct.config_file** %5, align 8
  %58 = getelementptr inbounds %struct.config_file, %struct.config_file* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.config_file*, %struct.config_file** %5, align 8
  %61 = getelementptr inbounds %struct.config_file, %struct.config_file* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @slabhash_is_size(i32 %56, i64 %59, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %53, %41, %12
  %66 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %67 = call i32 @infra_delete(%struct.infra_cache* %66)
  %68 = load %struct.config_file*, %struct.config_file** %5, align 8
  %69 = call %struct.infra_cache* @infra_create(%struct.config_file* %68)
  store %struct.infra_cache* %69, %struct.infra_cache** %4, align 8
  br label %83

70:                                               ; preds = %53
  %71 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %72 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %71, i32 0, i32 0
  %73 = load i32, i32* @domain_limit_free, align 4
  %74 = call i32 @traverse_postorder(i32* %72, i32 %73, i32* null)
  %75 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %76 = load %struct.config_file*, %struct.config_file** %5, align 8
  %77 = call i32 @setup_domain_limits(%struct.infra_cache* %75, %struct.config_file* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %70
  %80 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %81 = call i32 @infra_delete(%struct.infra_cache* %80)
  store %struct.infra_cache* null, %struct.infra_cache** %3, align 8
  br label %85

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %65
  %84 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  store %struct.infra_cache* %84, %struct.infra_cache** %3, align 8
  br label %85

85:                                               ; preds = %83, %79, %9
  %86 = load %struct.infra_cache*, %struct.infra_cache** %3, align 8
  ret %struct.infra_cache* %86
}

declare dso_local %struct.infra_cache* @infra_create(%struct.config_file*) #1

declare dso_local i32 @slabhash_is_size(i32, i64, i32) #1

declare dso_local i32 @infra_delete(%struct.infra_cache*) #1

declare dso_local i32 @traverse_postorder(i32*, i32, i32*) #1

declare dso_local i32 @setup_domain_limits(%struct.infra_cache*, %struct.config_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
