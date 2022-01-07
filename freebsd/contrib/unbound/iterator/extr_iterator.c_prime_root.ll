; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_prime_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_prime_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32*, %struct.TYPE_4__, %struct.TYPE_6__*, i32, i64* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.module_qstate*)*, i32 }
%struct.iter_qstate = type { i32, i32, i64 }
%struct.delegpt = type { i32 }
%struct.TYPE_5__ = type { i8* }

@VERB_DETAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"priming . %s NS\00", align 1
@sldns_rr_classes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Cannot prime due to lack of hints\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@QUERYTARGETS_STATE = common dso_local global i32 0, align 4
@PRIME_RESP_STATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"could not prime root\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"out of memory priming root, copydp\00", align 1
@module_wait_subquery = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.iter_qstate*, i32, i64)* @prime_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prime_root(%struct.module_qstate* %0, %struct.iter_qstate* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.iter_qstate*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.delegpt*, align 8
  %11 = alloca %struct.module_qstate*, align 8
  %12 = alloca %struct.iter_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %6, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* @VERB_DETAIL, align 4
  %14 = load i32, i32* @sldns_rr_classes, align 4
  %15 = load i64, i64* %9, align 8
  %16 = trunc i64 %15 to i32
  %17 = call %struct.TYPE_5__* @sldns_lookup_by_id(i32 %14, i32 %16)
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i32, i32* @sldns_rr_classes, align 4
  %21 = load i64, i64* %9, align 8
  %22 = trunc i64 %21 to i32
  %23 = call %struct.TYPE_5__* @sldns_lookup_by_id(i32 %20, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  br label %27

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %19
  %28 = phi i8* [ %25, %19 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %26 ]
  %29 = call i32 (i32, i8*, ...) @verbose(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %31 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call %struct.delegpt* @hints_lookup_root(i32 %34, i64 %35)
  store %struct.delegpt* %36, %struct.delegpt** %10, align 8
  %37 = load %struct.delegpt*, %struct.delegpt** %10, align 8
  %38 = icmp ne %struct.delegpt* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @VERB_ALGO, align 4
  %41 = call i32 (i32, i8*, ...) @verbose(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %118

42:                                               ; preds = %27
  %43 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %48 = load i32, i32* @QUERYTARGETS_STATE, align 4
  %49 = load i32, i32* @PRIME_RESP_STATE, align 4
  %50 = call i32 @generate_sub_request(i32* bitcast ([2 x i8]* @.str.3 to i32*), i32 1, i32 %43, i64 %44, %struct.module_qstate* %45, i32 %46, %struct.iter_qstate* %47, i32 %48, i32 %49, %struct.module_qstate** %11, i32 0)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @VERB_ALGO, align 4
  %54 = call i32 (i32, i8*, ...) @verbose(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %118

55:                                               ; preds = %42
  %56 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %57 = icmp ne %struct.module_qstate* %56, null
  br i1 %57, label %58, label %110

58:                                               ; preds = %55
  %59 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %60 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %59, i32 0, i32 4
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.iter_qstate*
  store %struct.iter_qstate* %66, %struct.iter_qstate** %12, align 8
  %67 = load %struct.delegpt*, %struct.delegpt** %10, align 8
  %68 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %69 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @delegpt_copy(%struct.delegpt* %67, i32 %70)
  %72 = load %struct.iter_qstate*, %struct.iter_qstate** %12, align 8
  %73 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.iter_qstate*, %struct.iter_qstate** %12, align 8
  %75 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %58
  %79 = call i32 @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %80 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %81 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %83, align 8
  %85 = call i32 @fptr_whitelist_modenv_kill_sub(i32 (%struct.module_qstate*)* %84)
  %86 = call i32 @fptr_ok(i32 %85)
  %87 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %88 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %90, align 8
  %92 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %93 = call i32 %91(%struct.module_qstate* %92)
  store i32 0, i32* %5, align 4
  br label %118

94:                                               ; preds = %58
  %95 = load %struct.iter_qstate*, %struct.iter_qstate** %12, align 8
  %96 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  %97 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %98 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %97, i32 0, i32 2
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load %struct.iter_qstate*, %struct.iter_qstate** %12, align 8
  %101 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %104 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @iter_indicates_dnssec(%struct.TYPE_6__* %99, i32 %102, i32* null, i32 %106)
  %108 = load %struct.iter_qstate*, %struct.iter_qstate** %12, align 8
  %109 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %94, %55
  %111 = load i32, i32* @module_wait_subquery, align 4
  %112 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %113 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %111, i32* %117, align 4
  store i32 1, i32* %5, align 4
  br label %118

118:                                              ; preds = %110, %78, %52, %39
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local %struct.TYPE_5__* @sldns_lookup_by_id(i32, i32) #1

declare dso_local %struct.delegpt* @hints_lookup_root(i32, i64) #1

declare dso_local i32 @generate_sub_request(i32*, i32, i32, i64, %struct.module_qstate*, i32, %struct.iter_qstate*, i32, i32, %struct.module_qstate**, i32) #1

declare dso_local i32 @delegpt_copy(%struct.delegpt*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_modenv_kill_sub(i32 (%struct.module_qstate*)*) #1

declare dso_local i32 @iter_indicates_dnssec(%struct.TYPE_6__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
