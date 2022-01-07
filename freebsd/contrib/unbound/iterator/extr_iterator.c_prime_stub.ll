; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_prime_stub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_prime_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32*, %struct.TYPE_5__, %struct.TYPE_6__*, i32, i64* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.module_qstate*)*, i32 }
%struct.iter_qstate = type { i32, %struct.TYPE_7__*, i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.iter_hints_stub = type { i64, %struct.delegpt* }
%struct.delegpt = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"out of memory priming stub\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"malloc failure, priming stub\00", align 1
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@VERB_DETAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"use stub\00", align 1
@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"priming stub\00", align 1
@QUERYTARGETS_STATE = common dso_local global i32 0, align 4
@PRIME_RESP_STATE = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"could not prime stub\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"could not generate lookup for stub prime\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"out of memory priming stub, copydp\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"malloc failure, in stub prime\00", align 1
@module_wait_subquery = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.iter_qstate*, i32, i32*, i32)* @prime_stub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prime_stub(%struct.module_qstate* %0, %struct.iter_qstate* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.module_qstate*, align 8
  %8 = alloca %struct.iter_qstate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iter_hints_stub*, align 8
  %13 = alloca %struct.delegpt*, align 8
  %14 = alloca %struct.module_qstate*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.iter_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %7, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %212

20:                                               ; preds = %5
  %21 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %22 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %29 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = call %struct.iter_hints_stub* @hints_lookup_stub(i32 %25, i32* %26, i32 %27, %struct.TYPE_7__* %30)
  store %struct.iter_hints_stub* %31, %struct.iter_hints_stub** %12, align 8
  %32 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %12, align 8
  %33 = icmp ne %struct.iter_hints_stub* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %212

35:                                               ; preds = %20
  %36 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %12, align 8
  %37 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %36, i32 0, i32 1
  %38 = load %struct.delegpt*, %struct.delegpt** %37, align 8
  store %struct.delegpt* %38, %struct.delegpt** %13, align 8
  %39 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %40 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %67, label %43

43:                                               ; preds = %35
  %44 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %45 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = icmp ne %struct.TYPE_7__* %46, null
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %50 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %57 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.delegpt*, %struct.delegpt** %13, align 8
  %62 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @query_dname_compare(i32 %60, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %212

67:                                               ; preds = %55, %48, %43, %35
  %68 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %12, align 8
  %69 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %108

72:                                               ; preds = %67
  store i32 0, i32* %15, align 4
  %73 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %74 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = icmp eq %struct.TYPE_7__* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 2, i32* %15, align 4
  br label %78

78:                                               ; preds = %77, %72
  %79 = load %struct.delegpt*, %struct.delegpt** %13, align 8
  %80 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %81 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @delegpt_copy(%struct.delegpt* %79, i32 %82)
  %84 = bitcast i8* %83 to %struct.TYPE_7__*
  %85 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %86 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %85, i32 0, i32 1
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %86, align 8
  %87 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %88 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = icmp ne %struct.TYPE_7__* %89, null
  br i1 %90, label %99, label %91

91:                                               ; preds = %78
  %92 = call i32 @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %94 = call i32 @errinf(%struct.module_qstate* %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %95 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %98 = call i32 @error_response(%struct.module_qstate* %95, i32 %96, i32 %97)
  store i32 1, i32* %6, align 4
  br label %212

99:                                               ; preds = %78
  %100 = load i32, i32* @VERB_DETAIL, align 4
  %101 = load %struct.delegpt*, %struct.delegpt** %13, align 8
  %102 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @log_nametypeclass(i32 %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %6, align 4
  br label %212

108:                                              ; preds = %67
  %109 = load i32, i32* @VERB_DETAIL, align 4
  %110 = load %struct.delegpt*, %struct.delegpt** %13, align 8
  %111 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @log_nametypeclass(i32 %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %113, i32 %114)
  %116 = load %struct.delegpt*, %struct.delegpt** %13, align 8
  %117 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.delegpt*, %struct.delegpt** %13, align 8
  %120 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %127 = load i32, i32* @QUERYTARGETS_STATE, align 4
  %128 = load i32, i32* @PRIME_RESP_STATE, align 4
  %129 = call i32 @generate_sub_request(i32 %118, i32 %121, i32 %122, i32 %123, %struct.module_qstate* %124, i32 %125, %struct.iter_qstate* %126, i32 %127, i32 %128, %struct.module_qstate** %14, i32 0)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %140, label %131

131:                                              ; preds = %108
  %132 = load i32, i32* @VERB_ALGO, align 4
  %133 = call i32 @verbose(i32 %132, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %134 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %135 = call i32 @errinf(%struct.module_qstate* %134, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %136 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %139 = call i32 @error_response(%struct.module_qstate* %136, i32 %137, i32 %138)
  store i32 1, i32* %6, align 4
  br label %212

140:                                              ; preds = %108
  %141 = load %struct.module_qstate*, %struct.module_qstate** %14, align 8
  %142 = icmp ne %struct.module_qstate* %141, null
  br i1 %142, label %143, label %204

143:                                              ; preds = %140
  %144 = load %struct.module_qstate*, %struct.module_qstate** %14, align 8
  %145 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %144, i32 0, i32 4
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to %struct.iter_qstate*
  store %struct.iter_qstate* %151, %struct.iter_qstate** %16, align 8
  %152 = load %struct.delegpt*, %struct.delegpt** %13, align 8
  %153 = load %struct.module_qstate*, %struct.module_qstate** %14, align 8
  %154 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i8* @delegpt_copy(%struct.delegpt* %152, i32 %155)
  %157 = bitcast i8* %156 to %struct.TYPE_7__*
  %158 = load %struct.iter_qstate*, %struct.iter_qstate** %16, align 8
  %159 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %158, i32 0, i32 1
  store %struct.TYPE_7__* %157, %struct.TYPE_7__** %159, align 8
  %160 = load %struct.iter_qstate*, %struct.iter_qstate** %16, align 8
  %161 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %160, i32 0, i32 1
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = icmp ne %struct.TYPE_7__* %162, null
  br i1 %163, label %186, label %164

164:                                              ; preds = %143
  %165 = call i32 @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %166 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %167 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %166, i32 0, i32 2
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %169, align 8
  %171 = call i32 @fptr_whitelist_modenv_kill_sub(i32 (%struct.module_qstate*)* %170)
  %172 = call i32 @fptr_ok(i32 %171)
  %173 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %174 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %173, i32 0, i32 2
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %176, align 8
  %178 = load %struct.module_qstate*, %struct.module_qstate** %14, align 8
  %179 = call i32 %177(%struct.module_qstate* %178)
  %180 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %181 = call i32 @errinf(%struct.module_qstate* %180, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %182 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %185 = call i32 @error_response(%struct.module_qstate* %182, i32 %183, i32 %184)
  store i32 1, i32* %6, align 4
  br label %212

186:                                              ; preds = %143
  %187 = load %struct.iter_qstate*, %struct.iter_qstate** %16, align 8
  %188 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %187, i32 0, i32 3
  store i64 0, i64* %188, align 8
  %189 = load %struct.iter_qstate*, %struct.iter_qstate** %16, align 8
  %190 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %189, i32 0, i32 0
  store i32 1, i32* %190, align 8
  %191 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %192 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %191, i32 0, i32 2
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = load %struct.iter_qstate*, %struct.iter_qstate** %16, align 8
  %195 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %194, i32 0, i32 1
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = load %struct.module_qstate*, %struct.module_qstate** %14, align 8
  %198 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @iter_indicates_dnssec(%struct.TYPE_6__* %193, %struct.TYPE_7__* %196, i32* null, i32 %200)
  %202 = load %struct.iter_qstate*, %struct.iter_qstate** %16, align 8
  %203 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  br label %204

204:                                              ; preds = %186, %140
  %205 = load i32, i32* @module_wait_subquery, align 4
  %206 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %207 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 %205, i32* %211, align 4
  store i32 1, i32* %6, align 4
  br label %212

212:                                              ; preds = %204, %164, %131, %99, %91, %66, %34, %19
  %213 = load i32, i32* %6, align 4
  ret i32 %213
}

declare dso_local %struct.iter_hints_stub* @hints_lookup_stub(i32, i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local i8* @delegpt_copy(%struct.delegpt*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

declare dso_local i32 @error_response(%struct.module_qstate*, i32, i32) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @generate_sub_request(i32, i32, i32, i32, %struct.module_qstate*, i32, %struct.iter_qstate*, i32, i32, %struct.module_qstate**, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_modenv_kill_sub(i32 (%struct.module_qstate*)*) #1

declare dso_local i32 @iter_indicates_dnssec(%struct.TYPE_6__*, %struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
