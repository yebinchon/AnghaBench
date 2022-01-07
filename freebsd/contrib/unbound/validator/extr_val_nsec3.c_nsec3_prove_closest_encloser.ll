; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_prove_closest_encloser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_prove_closest_encloser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.nsec3_filter = type { i32 }
%struct.query_info = type { i32, i32 }
%struct.ce_response = type { i32, i32, i32, i32, i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"nsec3 proveClosestEncloser: could not find a candidate for the closest encloser.\00", align 1
@sec_status_bogus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ce candidate\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"nsec3 proveClosestEncloser: proved that qname existed, bad\00", align 1
@sec_status_secure = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [68 x i8] c"nsec3 proveClosestEncloser: closest encloser is insecure delegation\00", align 1
@sec_status_insecure = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"nsec3 proveClosestEncloser: closest encloser was a delegation, bad\00", align 1
@LDNS_RR_TYPE_DNAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"nsec3 proveClosestEncloser: closest encloser was a DNAME, bad\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"nsec3: Could not find proof that the candidate encloser was the closest encloser\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, %struct.nsec3_filter*, i32*, %struct.query_info*, i32, %struct.ce_response*)* @nsec3_prove_closest_encloser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsec3_prove_closest_encloser(%struct.module_env* %0, %struct.nsec3_filter* %1, i32* %2, %struct.query_info* %3, i32 %4, %struct.ce_response* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.module_env*, align 8
  %9 = alloca %struct.nsec3_filter*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.query_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ce_response*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.module_env* %0, %struct.module_env** %8, align 8
  store %struct.nsec3_filter* %1, %struct.nsec3_filter** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.query_info* %3, %struct.query_info** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.ce_response* %5, %struct.ce_response** %13, align 8
  %16 = load %struct.ce_response*, %struct.ce_response** %13, align 8
  %17 = call i32 @memset(%struct.ce_response* %16, i32 0, i32 20)
  %18 = load %struct.module_env*, %struct.module_env** %8, align 8
  %19 = load %struct.nsec3_filter*, %struct.nsec3_filter** %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load %struct.query_info*, %struct.query_info** %11, align 8
  %22 = load %struct.ce_response*, %struct.ce_response** %13, align 8
  %23 = call i32 @nsec3_find_closest_encloser(%struct.module_env* %18, %struct.nsec3_filter* %19, i32* %20, %struct.query_info* %21, %struct.ce_response* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* @VERB_ALGO, align 4
  %27 = call i32 @verbose(i32 %26, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @sec_status_bogus, align 4
  store i32 %28, i32* %7, align 4
  br label %132

29:                                               ; preds = %6
  %30 = load i32, i32* @VERB_ALGO, align 4
  %31 = load %struct.ce_response*, %struct.ce_response** %13, align 8
  %32 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @log_nametypeclass(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 0, i32 0)
  %35 = load %struct.ce_response*, %struct.ce_response** %13, align 8
  %36 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.query_info*, %struct.query_info** %11, align 8
  %39 = getelementptr inbounds %struct.query_info, %struct.query_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @query_dname_compare(i32 %37, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %29
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @VERB_ALGO, align 4
  %48 = call i32 @verbose(i32 %47, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @sec_status_bogus, align 4
  store i32 %49, i32* %7, align 4
  br label %132

50:                                               ; preds = %43
  %51 = load i32, i32* @sec_status_secure, align 4
  store i32 %51, i32* %7, align 4
  br label %132

52:                                               ; preds = %29
  %53 = load %struct.ce_response*, %struct.ce_response** %13, align 8
  %54 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ce_response*, %struct.ce_response** %13, align 8
  %57 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %60 = call i64 @nsec3_has_type(i32 %55, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %52
  %63 = load %struct.ce_response*, %struct.ce_response** %13, align 8
  %64 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ce_response*, %struct.ce_response** %13, align 8
  %67 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %70 = call i64 @nsec3_has_type(i32 %65, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %90, label %72

72:                                               ; preds = %62
  %73 = load %struct.ce_response*, %struct.ce_response** %13, align 8
  %74 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ce_response*, %struct.ce_response** %13, align 8
  %77 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %80 = call i64 @nsec3_has_type(i32 %75, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %72
  %83 = load i32, i32* @VERB_ALGO, align 4
  %84 = call i32 @verbose(i32 %83, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @sec_status_insecure, align 4
  store i32 %85, i32* %7, align 4
  br label %132

86:                                               ; preds = %72
  %87 = load i32, i32* @VERB_ALGO, align 4
  %88 = call i32 @verbose(i32 %87, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32, i32* @sec_status_bogus, align 4
  store i32 %89, i32* %7, align 4
  br label %132

90:                                               ; preds = %62, %52
  %91 = load %struct.ce_response*, %struct.ce_response** %13, align 8
  %92 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ce_response*, %struct.ce_response** %13, align 8
  %95 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @LDNS_RR_TYPE_DNAME, align 4
  %98 = call i64 @nsec3_has_type(i32 %93, i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %90
  %101 = load i32, i32* @VERB_ALGO, align 4
  %102 = call i32 @verbose(i32 %101, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i32, i32* @sec_status_bogus, align 4
  store i32 %103, i32* %7, align 4
  br label %132

104:                                              ; preds = %90
  %105 = load %struct.query_info*, %struct.query_info** %11, align 8
  %106 = getelementptr inbounds %struct.query_info, %struct.query_info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.query_info*, %struct.query_info** %11, align 8
  %109 = getelementptr inbounds %struct.query_info, %struct.query_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ce_response*, %struct.ce_response** %13, align 8
  %112 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @next_closer(i32 %107, i32 %110, i32 %113, i32** %14, i64* %15)
  %115 = load %struct.module_env*, %struct.module_env** %8, align 8
  %116 = load %struct.nsec3_filter*, %struct.nsec3_filter** %9, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = load i64, i64* %15, align 8
  %120 = load %struct.ce_response*, %struct.ce_response** %13, align 8
  %121 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %120, i32 0, i32 1
  %122 = load %struct.ce_response*, %struct.ce_response** %13, align 8
  %123 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %122, i32 0, i32 0
  %124 = call i32 @find_covering_nsec3(%struct.module_env* %115, %struct.nsec3_filter* %116, i32* %117, i32* %118, i64 %119, i32* %121, i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %104
  %127 = load i32, i32* @VERB_ALGO, align 4
  %128 = call i32 @verbose(i32 %127, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0))
  %129 = load i32, i32* @sec_status_bogus, align 4
  store i32 %129, i32* %7, align 4
  br label %132

130:                                              ; preds = %104
  %131 = load i32, i32* @sec_status_secure, align 4
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %130, %126, %100, %86, %82, %50, %46, %25
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

declare dso_local i32 @memset(%struct.ce_response*, i32, i32) #1

declare dso_local i32 @nsec3_find_closest_encloser(%struct.module_env*, %struct.nsec3_filter*, i32*, %struct.query_info*, %struct.ce_response*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local i64 @nsec3_has_type(i32, i32, i32) #1

declare dso_local i32 @next_closer(i32, i32, i32, i32**, i64*) #1

declare dso_local i32 @find_covering_nsec3(%struct.module_env*, %struct.nsec3_filter*, i32*, i32*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
