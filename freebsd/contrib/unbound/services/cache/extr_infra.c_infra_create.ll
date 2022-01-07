; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_cache = type { i8*, i8*, i32, i8* }
%struct.config_file = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 }

@INFRA_BYTES_NAME = common dso_local global i32 0, align 4
@INFRA_HOST_STARTSIZE = common dso_local global i32 0, align 4
@infra_sizefunc = common dso_local global i32 0, align 4
@infra_compfunc = common dso_local global i32 0, align 4
@infra_delkeyfunc = common dso_local global i32 0, align 4
@infra_deldatafunc = common dso_local global i32 0, align 4
@infra_dp_ratelimit = common dso_local global i32 0, align 4
@rate_sizefunc = common dso_local global i32 0, align 4
@rate_compfunc = common dso_local global i32 0, align 4
@rate_delkeyfunc = common dso_local global i32 0, align 4
@rate_deldatafunc = common dso_local global i32 0, align 4
@infra_ip_ratelimit = common dso_local global i32 0, align 4
@ip_rate_sizefunc = common dso_local global i32 0, align 4
@ip_rate_compfunc = common dso_local global i32 0, align 4
@ip_rate_delkeyfunc = common dso_local global i32 0, align 4
@ip_rate_deldatafunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.infra_cache* @infra_create(%struct.config_file* %0) #0 {
  %2 = alloca %struct.infra_cache*, align 8
  %3 = alloca %struct.config_file*, align 8
  %4 = alloca %struct.infra_cache*, align 8
  %5 = alloca i64, align 8
  store %struct.config_file* %0, %struct.config_file** %3, align 8
  %6 = call i64 @calloc(i32 1, i32 32)
  %7 = inttoptr i64 %6 to %struct.infra_cache*
  store %struct.infra_cache* %7, %struct.infra_cache** %4, align 8
  %8 = load %struct.config_file*, %struct.config_file** %3, align 8
  %9 = getelementptr inbounds %struct.config_file, %struct.config_file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = load i32, i32* @INFRA_BYTES_NAME, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 8, %13
  %15 = mul i64 %11, %14
  store i64 %15, i64* %5, align 8
  %16 = load %struct.config_file*, %struct.config_file** %3, align 8
  %17 = getelementptr inbounds %struct.config_file, %struct.config_file* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @INFRA_HOST_STARTSIZE, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i8* @slabhash_create(i32 %18, i32 %19, i64 %20, i32* @infra_sizefunc, i32* @infra_compfunc, i32* @infra_delkeyfunc, i32* @infra_deldatafunc, i32* null)
  %22 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %23 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %25 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %24, i32 0, i32 3
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %30 = call i32 @free(%struct.infra_cache* %29)
  store %struct.infra_cache* null, %struct.infra_cache** %2, align 8
  br label %88

31:                                               ; preds = %1
  %32 = load %struct.config_file*, %struct.config_file** %3, align 8
  %33 = getelementptr inbounds %struct.config_file, %struct.config_file* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %36 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.config_file*, %struct.config_file** %3, align 8
  %38 = getelementptr inbounds %struct.config_file, %struct.config_file* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* @infra_dp_ratelimit, align 4
  %40 = load %struct.config_file*, %struct.config_file** %3, align 8
  %41 = getelementptr inbounds %struct.config_file, %struct.config_file* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @INFRA_HOST_STARTSIZE, align 4
  %44 = load %struct.config_file*, %struct.config_file** %3, align 8
  %45 = getelementptr inbounds %struct.config_file, %struct.config_file* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i8* @slabhash_create(i32 %42, i32 %43, i64 %46, i32* @rate_sizefunc, i32* @rate_compfunc, i32* @rate_delkeyfunc, i32* @rate_deldatafunc, i32* null)
  %48 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %49 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %51 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %31
  %55 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %56 = call i32 @infra_delete(%struct.infra_cache* %55)
  store %struct.infra_cache* null, %struct.infra_cache** %2, align 8
  br label %88

57:                                               ; preds = %31
  %58 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %59 = load %struct.config_file*, %struct.config_file** %3, align 8
  %60 = call i32 @setup_domain_limits(%struct.infra_cache* %58, %struct.config_file* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %64 = call i32 @infra_delete(%struct.infra_cache* %63)
  store %struct.infra_cache* null, %struct.infra_cache** %2, align 8
  br label %88

65:                                               ; preds = %57
  %66 = load %struct.config_file*, %struct.config_file** %3, align 8
  %67 = getelementptr inbounds %struct.config_file, %struct.config_file* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* @infra_ip_ratelimit, align 4
  %69 = load %struct.config_file*, %struct.config_file** %3, align 8
  %70 = getelementptr inbounds %struct.config_file, %struct.config_file* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @INFRA_HOST_STARTSIZE, align 4
  %73 = load %struct.config_file*, %struct.config_file** %3, align 8
  %74 = getelementptr inbounds %struct.config_file, %struct.config_file* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i8* @slabhash_create(i32 %71, i32 %72, i64 %75, i32* @ip_rate_sizefunc, i32* @ip_rate_compfunc, i32* @ip_rate_delkeyfunc, i32* @ip_rate_deldatafunc, i32* null)
  %77 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %78 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %80 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %65
  %84 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %85 = call i32 @infra_delete(%struct.infra_cache* %84)
  store %struct.infra_cache* null, %struct.infra_cache** %2, align 8
  br label %88

86:                                               ; preds = %65
  %87 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  store %struct.infra_cache* %87, %struct.infra_cache** %2, align 8
  br label %88

88:                                               ; preds = %86, %83, %62, %54, %28
  %89 = load %struct.infra_cache*, %struct.infra_cache** %2, align 8
  ret %struct.infra_cache* %89
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i8* @slabhash_create(i32, i32, i64, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @free(%struct.infra_cache*) #1

declare dso_local i32 @infra_delete(%struct.infra_cache*) #1

declare dso_local i32 @setup_domain_limits(%struct.infra_cache*, %struct.config_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
