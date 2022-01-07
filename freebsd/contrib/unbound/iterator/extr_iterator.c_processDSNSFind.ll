; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processDSNSFind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processDSNSFind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32 }
%struct.iter_qstate = type { i64, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i64 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"processDSNSFind\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"for DS query parent-child nameserver search the query is not under the zone\00", align 1
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@QUERYTARGETS_STATE = common dso_local global i32 0, align 4
@DSNS_FIND_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"fetch nameservers\00", align 1
@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@INIT_REQUEST_STATE = common dso_local global i32 0, align 4
@FINISHED_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [78 x i8] c"for DS query parent-child nameserver search, could not generate NS lookup for\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.iter_qstate*, i32)* @processDSNSFind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processDSNSFind(%struct.module_qstate* %0, %struct.iter_qstate* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module_qstate*, align 8
  %6 = alloca %struct.iter_qstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.module_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %5, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.module_qstate* null, %struct.module_qstate** %8, align 8
  %9 = load i32, i32* @VERB_ALGO, align 4
  %10 = call i32 @verbose(i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %12 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %3
  %16 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %17 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %21 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %23 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %27 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %15, %3
  %29 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %30 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %33 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %32, i32 0, i32 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @dname_subdomain_c(i64 %31, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %28
  %40 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %41 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %42 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %41, i32 0, i32 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @errinf_dname(%struct.module_qstate* %40, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %50 = call i32 @error_response_cache(%struct.module_qstate* %47, i32 %48, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %114

51:                                               ; preds = %28
  %52 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %53 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %52, i32 0, i32 0
  %54 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %55 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %54, i32 0, i32 2
  %56 = call i32 @dname_remove_label(i64* %53, i32* %55)
  %57 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %58 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %61 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %60, i32 0, i32 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @query_dname_compare(i64 %59, i64 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %51
  %68 = load i32, i32* @QUERYTARGETS_STATE, align 4
  %69 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %70 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  store i32 1, i32* %4, align 4
  br label %114

71:                                               ; preds = %51
  %72 = load i32, i32* @DSNS_FIND_STATE, align 4
  %73 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %74 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @VERB_ALGO, align 4
  %76 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %77 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %80 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %81 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @log_nametypeclass(i32 %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %78, i32 %79, i32 %83)
  %85 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %86 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %89 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %92 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %93 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %99 = load i32, i32* @INIT_REQUEST_STATE, align 4
  %100 = load i32, i32* @FINISHED_STATE, align 4
  %101 = call i32 @generate_sub_request(i64 %87, i32 %90, i32 %91, i32 %95, %struct.module_qstate* %96, i32 %97, %struct.iter_qstate* %98, i32 %99, i32 %100, %struct.module_qstate** %8, i32 0)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %71
  %104 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %105 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %106 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @errinf_dname(%struct.module_qstate* %104, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0), i64 %107)
  %109 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %112 = call i32 @error_response_cache(%struct.module_qstate* %109, i32 %110, i32 %111)
  store i32 %112, i32* %4, align 4
  br label %114

113:                                              ; preds = %71
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %103, %67, %39
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @dname_subdomain_c(i64, i64) #1

declare dso_local i32 @errinf_dname(%struct.module_qstate*, i8*, i64) #1

declare dso_local i32 @error_response_cache(%struct.module_qstate*, i32, i32) #1

declare dso_local i32 @dname_remove_label(i64*, i32*) #1

declare dso_local i64 @query_dname_compare(i64, i64) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @generate_sub_request(i64, i32, i32, i32, %struct.module_qstate*, i32, %struct.iter_qstate*, i32, i32, %struct.module_qstate**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
