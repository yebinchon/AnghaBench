; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processClassResponse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processClassResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i64, i32, %struct.TYPE_6__, %struct.dns_msg*, i64* }
%struct.TYPE_6__ = type { i32 }
%struct.dns_msg = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, %struct.ub_packed_rrset_key**, i32, i64 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iter_qstate = type { i64, i8*, %struct.dns_msg* }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"processClassResponse\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"processClassResponse super\00", align 1
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@FINISHED_STATE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"malloc failed for qclass ANY response\00", align 1
@RR_COUNT_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"malloc failed (too many rrsets) in collect ANY\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"malloc failed in collect ANY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_qstate*, i32, %struct.module_qstate*)* @processClassResponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @processClassResponse(%struct.module_qstate* %0, i32 %1, %struct.module_qstate* %2) #0 {
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.iter_qstate*, align 8
  %8 = alloca %struct.dns_msg*, align 8
  %9 = alloca %struct.dns_msg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ub_packed_rrset_key**, align 8
  %12 = alloca %struct.ub_packed_rrset_key**, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.module_qstate* %2, %struct.module_qstate** %6, align 8
  %13 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %14 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %13, i32 0, i32 4
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.iter_qstate*
  store %struct.iter_qstate* %20, %struct.iter_qstate** %7, align 8
  %21 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %22 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %21, i32 0, i32 3
  %23 = load %struct.dns_msg*, %struct.dns_msg** %22, align 8
  store %struct.dns_msg* %23, %struct.dns_msg** %8, align 8
  %24 = load i32, i32* @VERB_ALGO, align 4
  %25 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %26 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %25, i32 0, i32 2
  %27 = call i32 @log_query_info(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %26)
  %28 = load i32, i32* @VERB_ALGO, align 4
  %29 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %30 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %29, i32 0, i32 2
  %31 = call i32 @log_query_info(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %30)
  %32 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %33 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %3
  %38 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %39 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %38, i32 0, i32 2
  store %struct.dns_msg* null, %struct.dns_msg** %39, align 8
  %40 = load i8*, i8** @FINISHED_STATE, align 8
  %41 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %42 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  br label %483

43:                                               ; preds = %3
  %44 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %45 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %44, i32 0, i32 2
  %46 = load %struct.dns_msg*, %struct.dns_msg** %45, align 8
  %47 = icmp ne %struct.dns_msg* %46, null
  br i1 %47, label %81, label %48

48:                                               ; preds = %43
  %49 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %50 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %51 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.dns_msg* @dns_copy_msg(%struct.dns_msg* %49, i32 %52)
  %54 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %55 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %54, i32 0, i32 2
  store %struct.dns_msg* %53, %struct.dns_msg** %55, align 8
  %56 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %57 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %56, i32 0, i32 2
  %58 = load %struct.dns_msg*, %struct.dns_msg** %57, align 8
  %59 = icmp ne %struct.dns_msg* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %48
  %61 = call i32 @log_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i8*, i8** @FINISHED_STATE, align 8
  %63 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %64 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  br label %483

65:                                               ; preds = %48
  %66 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %67 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %71 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %70, i32 0, i32 2
  %72 = load %struct.dns_msg*, %struct.dns_msg** %71, align 8
  %73 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %69, i32* %74, align 8
  %75 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %76 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %75, i32 0, i32 2
  %77 = load %struct.dns_msg*, %struct.dns_msg** %76, align 8
  %78 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 11
  store i64 0, i64* %80, align 8
  br label %470

81:                                               ; preds = %43
  %82 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %83 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %82, i32 0, i32 2
  %84 = load %struct.dns_msg*, %struct.dns_msg** %83, align 8
  store %struct.dns_msg* %84, %struct.dns_msg** %9, align 8
  %85 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %86 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %364

91:                                               ; preds = %81
  %92 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %93 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %98 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %96, %101
  store i64 %102, i64* %10, align 8
  %103 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %104 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %109 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 10
  store i32 %107, i32* %111, align 8
  %112 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %113 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @RR_COUNT_MAX, align 8
  %118 = icmp ugt i64 %116, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %91
  %120 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %121 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %120, i32 0, i32 0
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @RR_COUNT_MAX, align 8
  %126 = icmp ugt i64 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %119, %91
  %128 = call i32 @log_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %129 = load i8*, i8** @FINISHED_STATE, align 8
  %130 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %131 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  br label %483

132:                                              ; preds = %119
  %133 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %134 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i64, i64* %10, align 8
  %137 = mul i64 8, %136
  %138 = trunc i64 %137 to i32
  %139 = call %struct.ub_packed_rrset_key** @regional_alloc(i32 %135, i32 %138)
  store %struct.ub_packed_rrset_key** %139, %struct.ub_packed_rrset_key*** %11, align 8
  %140 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %141 = icmp ne %struct.ub_packed_rrset_key** %140, null
  br i1 %141, label %147, label %142

142:                                              ; preds = %132
  %143 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %144 = load i8*, i8** @FINISHED_STATE, align 8
  %145 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %146 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  br label %483

147:                                              ; preds = %132
  %148 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  store %struct.ub_packed_rrset_key** %148, %struct.ub_packed_rrset_key*** %12, align 8
  %149 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %150 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %151 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %150, i32 0, i32 0
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 9
  %154 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %153, align 8
  %155 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %156 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %155, i32 0, i32 0
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 8
  %162 = trunc i64 %161 to i32
  %163 = call i32 @memcpy(%struct.ub_packed_rrset_key** %149, %struct.ub_packed_rrset_key** %154, i32 %162)
  %164 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %165 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %164, i32 0, i32 0
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %169, i64 %170
  store %struct.ub_packed_rrset_key** %171, %struct.ub_packed_rrset_key*** %11, align 8
  %172 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %173 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %174 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %173, i32 0, i32 0
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 9
  %177 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %176, align 8
  %178 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %179 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %178, i32 0, i32 0
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = mul i64 %183, 8
  %185 = trunc i64 %184 to i32
  %186 = call i32 @memcpy(%struct.ub_packed_rrset_key** %172, %struct.ub_packed_rrset_key** %177, i32 %185)
  %187 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %188 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %187, i32 0, i32 0
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %192, i64 %193
  store %struct.ub_packed_rrset_key** %194, %struct.ub_packed_rrset_key*** %11, align 8
  %195 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %196 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %197 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %196, i32 0, i32 0
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 9
  %200 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %199, align 8
  %201 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %202 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %201, i32 0, i32 0
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %200, i64 %206
  %208 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %209 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %208, i32 0, i32 0
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = mul i64 %213, 8
  %215 = trunc i64 %214 to i32
  %216 = call i32 @memcpy(%struct.ub_packed_rrset_key** %195, %struct.ub_packed_rrset_key** %207, i32 %215)
  %217 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %218 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %217, i32 0, i32 0
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %222, i64 %223
  store %struct.ub_packed_rrset_key** %224, %struct.ub_packed_rrset_key*** %11, align 8
  %225 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %226 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %227 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %226, i32 0, i32 0
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 9
  %230 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %229, align 8
  %231 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %232 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %231, i32 0, i32 0
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %230, i64 %236
  %238 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %239 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %238, i32 0, i32 0
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = mul i64 %243, 8
  %245 = trunc i64 %244 to i32
  %246 = call i32 @memcpy(%struct.ub_packed_rrset_key** %225, %struct.ub_packed_rrset_key** %237, i32 %245)
  %247 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %248 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %247, i32 0, i32 0
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %252, i64 %253
  store %struct.ub_packed_rrset_key** %254, %struct.ub_packed_rrset_key*** %11, align 8
  %255 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %256 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %257 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %256, i32 0, i32 0
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 9
  %260 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %259, align 8
  %261 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %262 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %261, i32 0, i32 0
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %260, i64 %266
  %268 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %269 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %268, i32 0, i32 0
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %267, i64 %273
  %275 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %276 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %275, i32 0, i32 0
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  %281 = mul i64 %280, 8
  %282 = trunc i64 %281 to i32
  %283 = call i32 @memcpy(%struct.ub_packed_rrset_key** %255, %struct.ub_packed_rrset_key** %274, i32 %282)
  %284 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %285 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %284, i32 0, i32 0
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %289, i64 %290
  store %struct.ub_packed_rrset_key** %291, %struct.ub_packed_rrset_key*** %11, align 8
  %292 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %293 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %294 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %293, i32 0, i32 0
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 9
  %297 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %296, align 8
  %298 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %299 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %298, i32 0, i32 0
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %297, i64 %303
  %305 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %306 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %305, i32 0, i32 0
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %304, i64 %310
  %312 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %313 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %312, i32 0, i32 0
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 8
  %317 = sext i32 %316 to i64
  %318 = mul i64 %317, 8
  %319 = trunc i64 %318 to i32
  %320 = call i32 @memcpy(%struct.ub_packed_rrset_key** %292, %struct.ub_packed_rrset_key** %311, i32 %319)
  %321 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %12, align 8
  %322 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %323 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %322, i32 0, i32 0
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 9
  store %struct.ub_packed_rrset_key** %321, %struct.ub_packed_rrset_key*** %325, align 8
  %326 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %327 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %326, i32 0, i32 0
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %332 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %331, i32 0, i32 0
  %333 = load %struct.TYPE_5__*, %struct.TYPE_5__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = add nsw i32 %335, %330
  store i32 %336, i32* %334, align 8
  %337 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %338 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %337, i32 0, i32 0
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %343 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %342, i32 0, i32 0
  %344 = load %struct.TYPE_5__*, %struct.TYPE_5__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 4
  %347 = add nsw i32 %346, %341
  store i32 %347, i32* %345, align 4
  %348 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %349 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %348, i32 0, i32 0
  %350 = load %struct.TYPE_5__*, %struct.TYPE_5__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %354 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %353, i32 0, i32 0
  %355 = load %struct.TYPE_5__*, %struct.TYPE_5__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 8
  %358 = add nsw i32 %357, %352
  store i32 %358, i32* %356, align 8
  %359 = load i64, i64* %10, align 8
  %360 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %361 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %360, i32 0, i32 0
  %362 = load %struct.TYPE_5__*, %struct.TYPE_5__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %362, i32 0, i32 0
  store i64 %359, i64* %363, align 8
  br label %364

364:                                              ; preds = %147, %81
  %365 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %366 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %365, i32 0, i32 0
  %367 = load %struct.TYPE_5__*, %struct.TYPE_5__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i32 0, i32 4
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %371 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %370, i32 0, i32 0
  %372 = load %struct.TYPE_5__*, %struct.TYPE_5__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i32 0, i32 4
  %374 = load i64, i64* %373, align 8
  %375 = icmp slt i64 %369, %374
  br i1 %375, label %376, label %386

376:                                              ; preds = %364
  %377 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %378 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %377, i32 0, i32 0
  %379 = load %struct.TYPE_5__*, %struct.TYPE_5__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i32 0, i32 4
  %381 = load i64, i64* %380, align 8
  %382 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %383 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %382, i32 0, i32 0
  %384 = load %struct.TYPE_5__*, %struct.TYPE_5__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i32 0, i32 4
  store i64 %381, i64* %385, align 8
  br label %386

386:                                              ; preds = %376, %364
  %387 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %388 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %387, i32 0, i32 0
  %389 = load %struct.TYPE_5__*, %struct.TYPE_5__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i32 0, i32 5
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %403

393:                                              ; preds = %386
  %394 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %395 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %394, i32 0, i32 0
  %396 = load %struct.TYPE_5__*, %struct.TYPE_5__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %396, i32 0, i32 5
  %398 = load i64, i64* %397, align 8
  %399 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %400 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %399, i32 0, i32 0
  %401 = load %struct.TYPE_5__*, %struct.TYPE_5__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i32 0, i32 5
  store i64 %398, i64* %402, align 8
  br label %403

403:                                              ; preds = %393, %386
  %404 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %405 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %404, i32 0, i32 0
  %406 = load %struct.TYPE_5__*, %struct.TYPE_5__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i32 0, i32 6
  %408 = load i64, i64* %407, align 8
  %409 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %410 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %409, i32 0, i32 0
  %411 = load %struct.TYPE_5__*, %struct.TYPE_5__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %411, i32 0, i32 6
  %413 = load i64, i64* %412, align 8
  %414 = icmp slt i64 %408, %413
  br i1 %414, label %415, label %425

415:                                              ; preds = %403
  %416 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %417 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %416, i32 0, i32 0
  %418 = load %struct.TYPE_5__*, %struct.TYPE_5__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i32 0, i32 6
  %420 = load i64, i64* %419, align 8
  %421 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %422 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %421, i32 0, i32 0
  %423 = load %struct.TYPE_5__*, %struct.TYPE_5__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %423, i32 0, i32 6
  store i64 %420, i64* %424, align 8
  br label %425

425:                                              ; preds = %415, %403
  %426 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %427 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %426, i32 0, i32 0
  %428 = load %struct.TYPE_5__*, %struct.TYPE_5__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %428, i32 0, i32 7
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %432 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %431, i32 0, i32 0
  %433 = load %struct.TYPE_5__*, %struct.TYPE_5__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %433, i32 0, i32 7
  %435 = load i64, i64* %434, align 8
  %436 = icmp slt i64 %430, %435
  br i1 %436, label %437, label %447

437:                                              ; preds = %425
  %438 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %439 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %438, i32 0, i32 0
  %440 = load %struct.TYPE_5__*, %struct.TYPE_5__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i32 0, i32 7
  %442 = load i64, i64* %441, align 8
  %443 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %444 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %443, i32 0, i32 0
  %445 = load %struct.TYPE_5__*, %struct.TYPE_5__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 7
  store i64 %442, i64* %446, align 8
  br label %447

447:                                              ; preds = %437, %425
  %448 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %449 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %448, i32 0, i32 0
  %450 = load %struct.TYPE_5__*, %struct.TYPE_5__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i32 0, i32 8
  %452 = load i64, i64* %451, align 8
  %453 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %454 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %453, i32 0, i32 0
  %455 = load %struct.TYPE_5__*, %struct.TYPE_5__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %455, i32 0, i32 8
  %457 = load i64, i64* %456, align 8
  %458 = icmp slt i64 %452, %457
  br i1 %458, label %459, label %469

459:                                              ; preds = %447
  %460 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %461 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %460, i32 0, i32 0
  %462 = load %struct.TYPE_5__*, %struct.TYPE_5__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %462, i32 0, i32 8
  %464 = load i64, i64* %463, align 8
  %465 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %466 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %465, i32 0, i32 0
  %467 = load %struct.TYPE_5__*, %struct.TYPE_5__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %467, i32 0, i32 8
  store i64 %464, i64* %468, align 8
  br label %469

469:                                              ; preds = %459, %447
  br label %470

470:                                              ; preds = %469, %65
  %471 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %472 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = add nsw i64 %473, -1
  store i64 %474, i64* %472, align 8
  %475 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %476 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %475, i32 0, i32 0
  %477 = load i64, i64* %476, align 8
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %479, label %483

479:                                              ; preds = %470
  %480 = load i8*, i8** @FINISHED_STATE, align 8
  %481 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %482 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %481, i32 0, i32 1
  store i8* %480, i8** %482, align 8
  br label %483

483:                                              ; preds = %37, %60, %127, %142, %479, %470
  ret void
}

declare dso_local i32 @log_query_info(i32, i8*, %struct.TYPE_6__*) #1

declare dso_local %struct.dns_msg* @dns_copy_msg(%struct.dns_msg*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local %struct.ub_packed_rrset_key** @regional_alloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
