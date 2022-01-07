; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processTargetResponse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processTargetResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_6__, i64* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.iter_qstate = type { i32, i32, %struct.ub_packed_rrset_key*, i32, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.delegpt_ns = type { i32, i32 }

@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@QUERYTARGETS_STATE = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"processTargetResponse\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"processTargetResponse super\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"subq: parent not interested, was reset\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"subq: parent not interested anymore\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"add parentside glue to dp\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"out of memory adding pside glue\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"out of memory adding cnamed-ns\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"out of memory adding targets\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"added target response\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"iterator TargetResponse failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_qstate*, i32, %struct.module_qstate*)* @processTargetResponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @processTargetResponse(%struct.module_qstate* %0, i32 %1, %struct.module_qstate* %2) #0 {
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.iter_qstate*, align 8
  %8 = alloca %struct.iter_qstate*, align 8
  %9 = alloca %struct.ub_packed_rrset_key*, align 8
  %10 = alloca %struct.delegpt_ns*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.module_qstate* %2, %struct.module_qstate** %6, align 8
  %11 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %12 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %11, i32 0, i32 4
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.iter_qstate*
  store %struct.iter_qstate* %18, %struct.iter_qstate** %7, align 8
  %19 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %20 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %19, i32 0, i32 4
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.iter_qstate*
  store %struct.iter_qstate* %26, %struct.iter_qstate** %8, align 8
  %27 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %28 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @log_assert(i32 %32)
  %34 = load i32, i32* @QUERYTARGETS_STATE, align 4
  %35 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %36 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @VERB_ALGO, align 4
  %38 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %39 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %38, i32 0, i32 3
  %40 = call i32 @log_query_info(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %39)
  %41 = load i32, i32* @VERB_ALGO, align 4
  %42 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %43 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %42, i32 0, i32 3
  %44 = call i32 @log_query_info(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %43)
  %45 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %46 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %50 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %3
  %54 = load i32, i32* @VERB_ALGO, align 4
  %55 = call i32 @verbose(i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %171

56:                                               ; preds = %3
  %57 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %58 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %61 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %65 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.delegpt_ns* @delegpt_find_ns(i32 %59, i32 %63, i32 %67)
  store %struct.delegpt_ns* %68, %struct.delegpt_ns** %10, align 8
  %69 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %70 = icmp ne %struct.delegpt_ns* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %56
  %72 = load i32, i32* @VERB_ALGO, align 4
  %73 = call i32 @verbose(i32 %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %171

74:                                               ; preds = %56
  %75 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %76 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %75, i32 0, i32 2
  %77 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %76, align 8
  %78 = icmp ne %struct.ub_packed_rrset_key* %77, null
  br i1 %78, label %79, label %99

79:                                               ; preds = %74
  %80 = load i32, i32* @VERB_ALGO, align 4
  %81 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %82 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %81, i32 0, i32 2
  %83 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %82, align 8
  %84 = call i32 @log_rrset_key(i32 %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), %struct.ub_packed_rrset_key* %83)
  %85 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %86 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %89 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %92 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %91, i32 0, i32 2
  %93 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %92, align 8
  %94 = call i32 @delegpt_add_rrset(i32 %87, i32 %90, %struct.ub_packed_rrset_key* %93, i32 1)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %79
  %97 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %79
  br label %99

99:                                               ; preds = %98, %74
  %100 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %101 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %100, i32 0, i32 1
  %102 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %103 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.ub_packed_rrset_key* @reply_find_answer_rrset(i32* %101, i32 %106)
  store %struct.ub_packed_rrset_key* %107, %struct.ub_packed_rrset_key** %9, align 8
  %108 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %109 = icmp ne %struct.ub_packed_rrset_key* %108, null
  br i1 %109, label %110, label %166

110:                                              ; preds = %99
  %111 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %112 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %115 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %119 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call %struct.delegpt_ns* @delegpt_find_ns(i32 %113, i32 %117, i32 %121)
  %123 = icmp ne %struct.delegpt_ns* %122, null
  br i1 %123, label %143, label %124

124:                                              ; preds = %110
  %125 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %126 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %129 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %132 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %136 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @delegpt_add_ns(i32 %127, i32 %130, i32 %134, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %124
  %141 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %124
  br label %143

143:                                              ; preds = %142, %110
  %144 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %145 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %148 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %151 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %152 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @delegpt_add_rrset(i32 %146, i32 %149, %struct.ub_packed_rrset_key* %150, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %143
  %157 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %143
  %159 = load i32, i32* @VERB_ALGO, align 4
  %160 = call i32 @verbose(i32 %159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %161 = load i32, i32* @VERB_ALGO, align 4
  %162 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %163 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @delegpt_log(i32 %161, i32 %164)
  br label %171

166:                                              ; preds = %99
  %167 = load i32, i32* @VERB_ALGO, align 4
  %168 = call i32 @verbose(i32 %167, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %169 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %170 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %169, i32 0, i32 1
  store i32 1, i32* %170, align 4
  br label %171

171:                                              ; preds = %53, %71, %166, %158
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @log_query_info(i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local %struct.delegpt_ns* @delegpt_find_ns(i32, i32, i32) #1

declare dso_local i32 @log_rrset_key(i32, i8*, %struct.ub_packed_rrset_key*) #1

declare dso_local i32 @delegpt_add_rrset(i32, i32, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local %struct.ub_packed_rrset_key* @reply_find_answer_rrset(i32*, i32) #1

declare dso_local i32 @delegpt_add_ns(i32, i32, i32, i32) #1

declare dso_local i32 @delegpt_log(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
