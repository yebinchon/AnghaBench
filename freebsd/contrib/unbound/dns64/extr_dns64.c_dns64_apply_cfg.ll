; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_dns64_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_dns64_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns64_env = type { i32, i32, i32, i32 }
%struct.config_file = type { %struct.config_strlist*, i64 }
%struct.config_strlist = type { i32, %struct.config_strlist* }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"dns64-prefix: %s\00", align 1
@DEFAULT_DNS64_PREFIX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"cannot parse dns64-prefix netblock: %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"dns64_prefix is not IPv6: %s\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"dns64-prefix length it not between 0 and 96: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dns64_env*, %struct.config_file*)* @dns64_apply_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns64_apply_cfg(%struct.dns64_env* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dns64_env*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca %struct.config_strlist*, align 8
  store %struct.dns64_env* %0, %struct.dns64_env** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %7 = load i32, i32* @VERB_ALGO, align 4
  %8 = load %struct.config_file*, %struct.config_file** %5, align 8
  %9 = getelementptr inbounds %struct.config_file, %struct.config_file* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @verbose(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load %struct.config_file*, %struct.config_file** %5, align 8
  %13 = getelementptr inbounds %struct.config_file, %struct.config_file* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.config_file*, %struct.config_file** %5, align 8
  %18 = getelementptr inbounds %struct.config_file, %struct.config_file* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  br label %22

20:                                               ; preds = %2
  %21 = load i64, i64* @DEFAULT_DNS64_PREFIX, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i64 [ %19, %16 ], [ %21, %20 ]
  %24 = load %struct.dns64_env*, %struct.dns64_env** %4, align 8
  %25 = getelementptr inbounds %struct.dns64_env, %struct.dns64_env* %24, i32 0, i32 3
  %26 = load %struct.dns64_env*, %struct.dns64_env** %4, align 8
  %27 = getelementptr inbounds %struct.dns64_env, %struct.dns64_env* %26, i32 0, i32 2
  %28 = load %struct.dns64_env*, %struct.dns64_env** %4, align 8
  %29 = getelementptr inbounds %struct.dns64_env, %struct.dns64_env* %28, i32 0, i32 0
  %30 = call i32 @netblockstrtoaddr(i64 %23, i32 0, i32* %25, i32* %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %22
  %33 = load %struct.config_file*, %struct.config_file** %5, align 8
  %34 = getelementptr inbounds %struct.config_file, %struct.config_file* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @log_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  store i32 0, i32* %3, align 4
  br label %89

37:                                               ; preds = %22
  %38 = load %struct.dns64_env*, %struct.dns64_env** %4, align 8
  %39 = getelementptr inbounds %struct.dns64_env, %struct.dns64_env* %38, i32 0, i32 3
  %40 = load %struct.dns64_env*, %struct.dns64_env** %4, align 8
  %41 = getelementptr inbounds %struct.dns64_env, %struct.dns64_env* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @addr_is_ip6(i32* %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %37
  %46 = load %struct.config_file*, %struct.config_file** %5, align 8
  %47 = getelementptr inbounds %struct.config_file, %struct.config_file* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  store i32 0, i32* %3, align 4
  br label %89

50:                                               ; preds = %37
  %51 = load %struct.dns64_env*, %struct.dns64_env** %4, align 8
  %52 = getelementptr inbounds %struct.dns64_env, %struct.dns64_env* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.dns64_env*, %struct.dns64_env** %4, align 8
  %57 = getelementptr inbounds %struct.dns64_env, %struct.dns64_env* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 96
  br i1 %59, label %60, label %65

60:                                               ; preds = %55, %50
  %61 = load %struct.config_file*, %struct.config_file** %5, align 8
  %62 = getelementptr inbounds %struct.config_file, %struct.config_file* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @log_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  store i32 0, i32* %3, align 4
  br label %89

65:                                               ; preds = %55
  %66 = load %struct.config_file*, %struct.config_file** %5, align 8
  %67 = getelementptr inbounds %struct.config_file, %struct.config_file* %66, i32 0, i32 0
  %68 = load %struct.config_strlist*, %struct.config_strlist** %67, align 8
  store %struct.config_strlist* %68, %struct.config_strlist** %6, align 8
  br label %69

69:                                               ; preds = %81, %65
  %70 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %71 = icmp ne %struct.config_strlist* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load %struct.dns64_env*, %struct.dns64_env** %4, align 8
  %74 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %75 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dns64_insert_ignore_aaaa(%struct.dns64_env* %73, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %89

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %83 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %82, i32 0, i32 1
  %84 = load %struct.config_strlist*, %struct.config_strlist** %83, align 8
  store %struct.config_strlist* %84, %struct.config_strlist** %6, align 8
  br label %69

85:                                               ; preds = %69
  %86 = load %struct.dns64_env*, %struct.dns64_env** %4, align 8
  %87 = getelementptr inbounds %struct.dns64_env, %struct.dns64_env* %86, i32 0, i32 1
  %88 = call i32 @name_tree_init_parents(i32* %87)
  store i32 1, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %79, %60, %45, %32
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @verbose(i32, i8*, i64) #1

declare dso_local i32 @netblockstrtoaddr(i64, i32, i32*, i32*, i32*) #1

declare dso_local i32 @log_err(i8*, i64) #1

declare dso_local i32 @addr_is_ip6(i32*, i32) #1

declare dso_local i32 @dns64_insert_ignore_aaaa(%struct.dns64_env*, i32) #1

declare dso_local i32 @name_tree_init_parents(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
