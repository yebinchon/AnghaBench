; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_do_prove_nameerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_do_prove_nameerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.nsec3_filter = type { i32 }
%struct.query_info = type { i32 }
%struct.ce_response = type { i32, i64, i32, i32 }
%struct.ub_packed_rrset_key = type { i32 }

@sec_status_secure = common dso_local global i32 0, align 4
@sec_status_bogus = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"nsec3 nameerror proof: failed to prove a closest encloser\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"nsec3 nameerror proof: closest nsec3 is an insecure delegation\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"nsec3 nameerror: proven ce=\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"nsec3 nameerror proof: could not prove that the applicable wildcard did not exist.\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"nsec3 nameerror proof: nc has optout\00", align 1
@sec_status_insecure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, %struct.nsec3_filter*, i32*, %struct.query_info*)* @nsec3_do_prove_nameerror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsec3_do_prove_nameerror(%struct.module_env* %0, %struct.nsec3_filter* %1, i32* %2, %struct.query_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_env*, align 8
  %7 = alloca %struct.nsec3_filter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.query_info*, align 8
  %10 = alloca %struct.ce_response, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ub_packed_rrset_key*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %6, align 8
  store %struct.nsec3_filter* %1, %struct.nsec3_filter** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.query_info* %3, %struct.query_info** %9, align 8
  %16 = load %struct.module_env*, %struct.module_env** %6, align 8
  %17 = load %struct.nsec3_filter*, %struct.nsec3_filter** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.query_info*, %struct.query_info** %9, align 8
  %20 = call i32 @nsec3_prove_closest_encloser(%struct.module_env* %16, %struct.nsec3_filter* %17, i32* %18, %struct.query_info* %19, i32 1, %struct.ce_response* %10)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* @sec_status_secure, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @sec_status_bogus, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @VERB_ALGO, align 4
  %30 = call i32 @verbose(i32 %29, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @VERB_ALGO, align 4
  %33 = call i32 @verbose(i32 %32, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %5, align 4
  br label %83

36:                                               ; preds = %4
  %37 = load i32, i32* @VERB_ALGO, align 4
  %38 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %10, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @log_nametypeclass(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 0, i32 0)
  %41 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %10, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @log_assert(i32 %42)
  %44 = load %struct.module_env*, %struct.module_env** %6, align 8
  %45 = getelementptr inbounds %struct.module_env, %struct.module_env* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %10, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %10, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32* @nsec3_ce_wildcard(i32 %46, i32 %48, i32 %50, i64* %12)
  store i32* %51, i32** %11, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %36
  %55 = load %struct.module_env*, %struct.module_env** %6, align 8
  %56 = load %struct.nsec3_filter*, %struct.nsec3_filter** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @find_covering_nsec3(%struct.module_env* %55, %struct.nsec3_filter* %56, i32* %57, i32* %58, i64 %59, %struct.ub_packed_rrset_key** %13, i32* %14)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %54, %36
  %63 = load i32, i32* @VERB_ALGO, align 4
  %64 = call i32 @verbose(i32 %63, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @sec_status_bogus, align 4
  store i32 %65, i32* %5, align 4
  br label %83

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %10, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %10, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %10, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @nsec3_has_optout(i64 %72, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i32, i32* @VERB_ALGO, align 4
  %79 = call i32 @verbose(i32 %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* @sec_status_insecure, align 4
  store i32 %80, i32* %5, align 4
  br label %83

81:                                               ; preds = %70, %66
  %82 = load i32, i32* @sec_status_secure, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %77, %62, %34
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @nsec3_prove_closest_encloser(%struct.module_env*, %struct.nsec3_filter*, i32*, %struct.query_info*, i32, %struct.ce_response*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32* @nsec3_ce_wildcard(i32, i32, i32, i64*) #1

declare dso_local i32 @find_covering_nsec3(%struct.module_env*, %struct.nsec3_filter*, i32*, i32*, i64, %struct.ub_packed_rrset_key**, i32*) #1

declare dso_local i64 @nsec3_has_optout(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
