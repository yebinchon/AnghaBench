; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_ratelimit_cfg_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_ratelimit_cfg_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_cache = type { i32 }
%struct.config_file = type { %struct.config_str2list*, %struct.config_str2list* }
%struct.config_str2list = type { i32, i32, %struct.config_str2list* }
%struct.domain_limit_data = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.infra_cache*, %struct.config_file*)* @infra_ratelimit_cfg_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @infra_ratelimit_cfg_insert(%struct.infra_cache* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.infra_cache*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca %struct.config_str2list*, align 8
  %7 = alloca %struct.domain_limit_data*, align 8
  store %struct.infra_cache* %0, %struct.infra_cache** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %8 = load %struct.config_file*, %struct.config_file** %5, align 8
  %9 = getelementptr inbounds %struct.config_file, %struct.config_file* %8, i32 0, i32 1
  %10 = load %struct.config_str2list*, %struct.config_str2list** %9, align 8
  store %struct.config_str2list* %10, %struct.config_str2list** %6, align 8
  br label %11

11:                                               ; preds = %30, %2
  %12 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %13 = icmp ne %struct.config_str2list* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %16 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %17 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.domain_limit_data* @domain_limit_findcreate(%struct.infra_cache* %15, i32 %18)
  store %struct.domain_limit_data* %19, %struct.domain_limit_data** %7, align 8
  %20 = load %struct.domain_limit_data*, %struct.domain_limit_data** %7, align 8
  %21 = icmp ne %struct.domain_limit_data* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %62

23:                                               ; preds = %14
  %24 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %25 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @atoi(i32 %26)
  %28 = load %struct.domain_limit_data*, %struct.domain_limit_data** %7, align 8
  %29 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %23
  %31 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %32 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %31, i32 0, i32 2
  %33 = load %struct.config_str2list*, %struct.config_str2list** %32, align 8
  store %struct.config_str2list* %33, %struct.config_str2list** %6, align 8
  br label %11

34:                                               ; preds = %11
  %35 = load %struct.config_file*, %struct.config_file** %5, align 8
  %36 = getelementptr inbounds %struct.config_file, %struct.config_file* %35, i32 0, i32 0
  %37 = load %struct.config_str2list*, %struct.config_str2list** %36, align 8
  store %struct.config_str2list* %37, %struct.config_str2list** %6, align 8
  br label %38

38:                                               ; preds = %57, %34
  %39 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %40 = icmp ne %struct.config_str2list* %39, null
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %43 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %44 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.domain_limit_data* @domain_limit_findcreate(%struct.infra_cache* %42, i32 %45)
  store %struct.domain_limit_data* %46, %struct.domain_limit_data** %7, align 8
  %47 = load %struct.domain_limit_data*, %struct.domain_limit_data** %7, align 8
  %48 = icmp ne %struct.domain_limit_data* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %62

50:                                               ; preds = %41
  %51 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %52 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @atoi(i32 %53)
  %55 = load %struct.domain_limit_data*, %struct.domain_limit_data** %7, align 8
  %56 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %50
  %58 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %59 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %58, i32 0, i32 2
  %60 = load %struct.config_str2list*, %struct.config_str2list** %59, align 8
  store %struct.config_str2list* %60, %struct.config_str2list** %6, align 8
  br label %38

61:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %49, %22
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.domain_limit_data* @domain_limit_findcreate(%struct.infra_cache*, i32) #1

declare dso_local i8* @atoi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
