; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_find_covering_nsec3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_find_covering_nsec3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32, i32 }
%struct.nsec3_filter = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.nsec3_cached_hash = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"nsec3: malloc failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, %struct.nsec3_filter*, i32*, i32*, i64, %struct.ub_packed_rrset_key**, i32*)* @find_covering_nsec3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_covering_nsec3(%struct.module_env* %0, %struct.nsec3_filter* %1, i32* %2, i32* %3, i64 %4, %struct.ub_packed_rrset_key** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.module_env*, align 8
  %10 = alloca %struct.nsec3_filter*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ub_packed_rrset_key**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ub_packed_rrset_key*, align 8
  %19 = alloca %struct.nsec3_cached_hash*, align 8
  %20 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %9, align 8
  store %struct.nsec3_filter* %1, %struct.nsec3_filter** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.ub_packed_rrset_key** %5, %struct.ub_packed_rrset_key*** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.nsec3_cached_hash* null, %struct.nsec3_cached_hash** %19, align 8
  %21 = load %struct.nsec3_filter*, %struct.nsec3_filter** %10, align 8
  %22 = call %struct.ub_packed_rrset_key* @filter_first(%struct.nsec3_filter* %21, i64* %16, i32* %17)
  store %struct.ub_packed_rrset_key* %22, %struct.ub_packed_rrset_key** %18, align 8
  br label %23

23:                                               ; preds = %67, %7
  %24 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  %25 = icmp ne %struct.ub_packed_rrset_key* %24, null
  br i1 %25, label %26, label %70

26:                                               ; preds = %23
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.module_env*, %struct.module_env** %9, align 8
  %29 = getelementptr inbounds %struct.module_env, %struct.module_env* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.module_env*, %struct.module_env** %9, align 8
  %32 = getelementptr inbounds %struct.module_env, %struct.module_env* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  %35 = load i32, i32* %17, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @nsec3_hash_name(i32* %27, i32 %30, i32 %33, %struct.ub_packed_rrset_key* %34, i32 %35, i32* %36, i64 %37, %struct.nsec3_cached_hash** %19)
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %20, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = call i32 @log_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %70

43:                                               ; preds = %26
  %44 = load i32, i32* %20, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %67

47:                                               ; preds = %43
  %48 = load %struct.nsec3_filter*, %struct.nsec3_filter** %10, align 8
  %49 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %19, align 8
  %52 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  %53 = load i32, i32* %17, align 4
  %54 = load %struct.module_env*, %struct.module_env** %9, align 8
  %55 = getelementptr inbounds %struct.module_env, %struct.module_env* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @nsec3_covers(i32 %50, %struct.nsec3_cached_hash* %51, %struct.ub_packed_rrset_key* %52, i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %47
  %60 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  %61 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %14, align 8
  store %struct.ub_packed_rrset_key* %60, %struct.ub_packed_rrset_key** %61, align 8
  %62 = load i32, i32* %17, align 4
  %63 = load i32*, i32** %15, align 8
  store i32 %62, i32* %63, align 4
  store i32 1, i32* %8, align 4
  br label %73

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66, %46
  %68 = load %struct.nsec3_filter*, %struct.nsec3_filter** %10, align 8
  %69 = call %struct.ub_packed_rrset_key* @filter_next(%struct.nsec3_filter* %68, i64* %16, i32* %17)
  store %struct.ub_packed_rrset_key* %69, %struct.ub_packed_rrset_key** %18, align 8
  br label %23

70:                                               ; preds = %41, %23
  %71 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %14, align 8
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %71, align 8
  %72 = load i32*, i32** %15, align 8
  store i32 0, i32* %72, align 4
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %59
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local %struct.ub_packed_rrset_key* @filter_first(%struct.nsec3_filter*, i64*, i32*) #1

declare dso_local i32 @nsec3_hash_name(i32*, i32, i32, %struct.ub_packed_rrset_key*, i32, i32*, i64, %struct.nsec3_cached_hash**) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i64 @nsec3_covers(i32, %struct.nsec3_cached_hash*, %struct.ub_packed_rrset_key*, i32, i32) #1

declare dso_local %struct.ub_packed_rrset_key* @filter_next(%struct.nsec3_filter*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
