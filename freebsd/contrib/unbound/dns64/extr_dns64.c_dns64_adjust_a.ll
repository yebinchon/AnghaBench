; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_dns64_adjust_a.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_dns64_adjust_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.reply_info*, %struct.reply_info*, %struct.TYPE_6__*, i32 }
%struct.reply_info = type { i64, i64, %struct.reply_info*, %struct.ub_packed_rrset_key**, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i64, i64, %struct.packed_rrset_data* }
%struct.packed_rrset_data = type { i32 }
%struct.TYPE_6__ = type { i32, i64* }
%struct.dns64_env = type { i32 }
%struct.dns_msg = type { i64, i64, %struct.dns_msg*, %struct.ub_packed_rrset_key**, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"converting A answers to AAAA answers\00", align 1
@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.module_qstate*, %struct.module_qstate*)* @dns64_adjust_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dns64_adjust_a(i32 %0, %struct.module_qstate* %1, %struct.module_qstate* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module_qstate*, align 8
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.dns64_env*, align 8
  %8 = alloca %struct.reply_info*, align 8
  %9 = alloca %struct.reply_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.packed_rrset_data*, align 8
  %13 = alloca %struct.packed_rrset_data*, align 8
  %14 = alloca %struct.ub_packed_rrset_key*, align 8
  %15 = alloca %struct.ub_packed_rrset_key*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.module_qstate* %1, %struct.module_qstate** %5, align 8
  store %struct.module_qstate* %2, %struct.module_qstate** %6, align 8
  %16 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %17 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.dns64_env*
  store %struct.dns64_env* %25, %struct.dns64_env** %7, align 8
  %26 = load i32, i32* @VERB_ALGO, align 4
  %27 = call i32 @verbose(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %29 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %28, i32 0, i32 1
  %30 = load %struct.reply_info*, %struct.reply_info** %29, align 8
  %31 = call i32 @log_assert(%struct.reply_info* %30)
  %32 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %33 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %32, i32 0, i32 0
  %34 = load %struct.reply_info*, %struct.reply_info** %33, align 8
  %35 = call i32 @log_assert(%struct.reply_info* %34)
  %36 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %37 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %36, i32 0, i32 0
  %38 = load %struct.reply_info*, %struct.reply_info** %37, align 8
  %39 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %38, i32 0, i32 2
  %40 = load %struct.reply_info*, %struct.reply_info** %39, align 8
  %41 = call i32 @log_assert(%struct.reply_info* %40)
  %42 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %43 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %42, i32 0, i32 0
  %44 = load %struct.reply_info*, %struct.reply_info** %43, align 8
  %45 = icmp ne %struct.reply_info* %44, null
  br i1 %45, label %72, label %46

46:                                               ; preds = %3
  %47 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %48 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %47, i32 0, i32 1
  %49 = load %struct.reply_info*, %struct.reply_info** %48, align 8
  %50 = call i64 @regional_alloc(%struct.reply_info* %49, i32 72)
  %51 = inttoptr i64 %50 to %struct.dns_msg*
  %52 = bitcast %struct.dns_msg* %51 to %struct.reply_info*
  %53 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %54 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %53, i32 0, i32 0
  store %struct.reply_info* %52, %struct.reply_info** %54, align 8
  %55 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %56 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %55, i32 0, i32 0
  %57 = load %struct.reply_info*, %struct.reply_info** %56, align 8
  %58 = icmp ne %struct.reply_info* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %46
  br label %280

60:                                               ; preds = %46
  %61 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %62 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %61, i32 0, i32 0
  %63 = load %struct.reply_info*, %struct.reply_info** %62, align 8
  %64 = call i32 @memset(%struct.reply_info* %63, i32 0, i32 72)
  %65 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %66 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %69 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %68, i32 0, i32 0
  %70 = load %struct.reply_info*, %struct.reply_info** %69, align 8
  %71 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %70, i32 0, i32 12
  store i32 %67, i32* %71, align 8
  br label %72

72:                                               ; preds = %60, %3
  %73 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %74 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %73, i32 0, i32 0
  %75 = load %struct.reply_info*, %struct.reply_info** %74, align 8
  %76 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %75, i32 0, i32 2
  %77 = load %struct.reply_info*, %struct.reply_info** %76, align 8
  store %struct.reply_info* %77, %struct.reply_info** %8, align 8
  %78 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %79 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %78, i32 0, i32 1
  %80 = load %struct.reply_info*, %struct.reply_info** %79, align 8
  %81 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %82 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %85 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %84, i32 0, i32 10
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %88 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %91 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %94 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %97 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %100 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %103 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %106 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %109 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call %struct.reply_info* @construct_reply_info_base(%struct.reply_info* %80, i32 %83, i32 %86, i32 %89, i32 %92, i32 %95, i64 %98, i32 %101, i32 %104, i64 %107, i32 %110)
  store %struct.reply_info* %111, %struct.reply_info** %9, align 8
  %112 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %113 = icmp ne %struct.reply_info* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %72
  br label %280

115:                                              ; preds = %72
  %116 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %117 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %118 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %117, i32 0, i32 1
  %119 = load %struct.reply_info*, %struct.reply_info** %118, align 8
  %120 = call i32 @reply_info_alloc_rrset_keys(%struct.reply_info* %116, i32* null, %struct.reply_info* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %115
  br label %280

123:                                              ; preds = %115
  store i64 0, i64* %10, align 8
  br label %124

124:                                              ; preds = %271, %123
  %125 = load i64, i64* %10, align 8
  %126 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %127 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ult i64 %125, %128
  br i1 %129, label %130, label %274

130:                                              ; preds = %124
  %131 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %132 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %131, i32 0, i32 3
  %133 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %132, align 8
  %134 = load i64, i64* %10, align 8
  %135 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %133, i64 %134
  %136 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %135, align 8
  store %struct.ub_packed_rrset_key* %136, %struct.ub_packed_rrset_key** %14, align 8
  %137 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %138 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %137, i32 0, i32 3
  %139 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %138, align 8
  %140 = load i64, i64* %10, align 8
  %141 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %139, i64 %140
  %142 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %141, align 8
  store %struct.ub_packed_rrset_key* %142, %struct.ub_packed_rrset_key** %15, align 8
  %143 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %144 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = bitcast i8* %146 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %147, %struct.packed_rrset_data** %12, align 8
  %148 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %149 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %148, i32 0, i32 1
  %150 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %151 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %150, i32 0, i32 1
  %152 = bitcast %struct.TYPE_4__* %149 to i8*
  %153 = bitcast %struct.TYPE_4__* %151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 8 %153, i64 24, i1 false)
  %154 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %155 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %158 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load i64, i64* %10, align 8
  %160 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %161 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ult i64 %159, %162
  br i1 %163, label %164, label %219

164:                                              ; preds = %130
  %165 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %166 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %170 = call i64 @htons(i32 %169)
  %171 = icmp eq i64 %168, %170
  br i1 %171, label %172, label %219

172:                                              ; preds = %164
  %173 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %174 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %175 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %176 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %177 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %176, i32 0, i32 1
  %178 = load %struct.reply_info*, %struct.reply_info** %177, align 8
  %179 = load %struct.dns64_env*, %struct.dns64_env** %7, align 8
  %180 = call i32 @dns64_synth_aaaa_data(%struct.ub_packed_rrset_key* %173, %struct.packed_rrset_data* %174, %struct.ub_packed_rrset_key* %175, %struct.packed_rrset_data** %13, %struct.reply_info* %178, %struct.dns64_env* %179)
  %181 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %182 = icmp ne %struct.packed_rrset_data* %181, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %172
  br label %280

184:                                              ; preds = %172
  %185 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %186 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %185, i32 0, i32 2
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %191 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  %193 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %192, align 8
  %194 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %195 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %199 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %200 = call i32 @rrset_cache_remove(i32 %189, %struct.packed_rrset_data* %193, i64 %197, i32 %198, i32 %199, i32 0)
  %201 = load i64, i64* %10, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %184
  %204 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %205 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %204, i32 0, i32 2
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %208 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 2
  %210 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %209, align 8
  %211 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %212 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %216 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %217 = call i32 @msg_cache_remove(%struct.TYPE_6__* %206, %struct.packed_rrset_data* %210, i64 %214, i32 %215, i32 %216, i32 0)
  br label %218

218:                                              ; preds = %203, %184
  br label %263

219:                                              ; preds = %164, %130
  %220 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %221 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %225 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 1
  store i32 %223, i32* %226, align 8
  %227 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %228 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %227, i32 0, i32 1
  %229 = load %struct.reply_info*, %struct.reply_info** %228, align 8
  %230 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %231 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 2
  %233 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %232, align 8
  %234 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %235 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = call i64 @regional_alloc_init(%struct.reply_info* %229, %struct.packed_rrset_data* %233, i64 %237)
  %239 = inttoptr i64 %238 to %struct.packed_rrset_data*
  %240 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %241 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 2
  store %struct.packed_rrset_data* %239, %struct.packed_rrset_data** %242, align 8
  %243 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %244 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 2
  %246 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %245, align 8
  %247 = icmp ne %struct.packed_rrset_data* %246, null
  br i1 %247, label %249, label %248

248:                                              ; preds = %219
  br label %280

249:                                              ; preds = %219
  %250 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %251 = call i64 @packed_rrset_sizeof(%struct.packed_rrset_data* %250)
  store i64 %251, i64* %11, align 8
  %252 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %253 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %252, i32 0, i32 1
  %254 = load %struct.reply_info*, %struct.reply_info** %253, align 8
  %255 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %256 = load i64, i64* %11, align 8
  %257 = call i64 @regional_alloc_init(%struct.reply_info* %254, %struct.packed_rrset_data* %255, i64 %256)
  %258 = inttoptr i64 %257 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %258, %struct.packed_rrset_data** %13, align 8
  %259 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %260 = icmp ne %struct.packed_rrset_data* %259, null
  br i1 %260, label %262, label %261

261:                                              ; preds = %249
  br label %280

262:                                              ; preds = %249
  br label %263

263:                                              ; preds = %262, %218
  %264 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %265 = call i32 @packed_rrset_ptr_fixup(%struct.packed_rrset_data* %264)
  %266 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %267 = bitcast %struct.packed_rrset_data* %266 to i8*
  %268 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %269 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 0
  store i8* %267, i8** %270, align 8
  br label %271

271:                                              ; preds = %263
  %272 = load i64, i64* %10, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %10, align 8
  br label %124

274:                                              ; preds = %124
  %275 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %276 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %277 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %276, i32 0, i32 0
  %278 = load %struct.reply_info*, %struct.reply_info** %277, align 8
  %279 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %278, i32 0, i32 2
  store %struct.reply_info* %275, %struct.reply_info** %279, align 8
  br label %280

280:                                              ; preds = %274, %261, %248, %183, %122, %114, %59
  ret void
}

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @log_assert(%struct.reply_info*) #1

declare dso_local i64 @regional_alloc(%struct.reply_info*, i32) #1

declare dso_local i32 @memset(%struct.reply_info*, i32, i32) #1

declare dso_local %struct.reply_info* @construct_reply_info_base(%struct.reply_info*, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32) #1

declare dso_local i32 @reply_info_alloc_rrset_keys(%struct.reply_info*, i32*, %struct.reply_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @dns64_synth_aaaa_data(%struct.ub_packed_rrset_key*, %struct.packed_rrset_data*, %struct.ub_packed_rrset_key*, %struct.packed_rrset_data**, %struct.reply_info*, %struct.dns64_env*) #1

declare dso_local i32 @rrset_cache_remove(i32, %struct.packed_rrset_data*, i64, i32, i32, i32) #1

declare dso_local i32 @msg_cache_remove(%struct.TYPE_6__*, %struct.packed_rrset_data*, i64, i32, i32, i32) #1

declare dso_local i64 @regional_alloc_init(%struct.reply_info*, %struct.packed_rrset_data*, i64) #1

declare dso_local i64 @packed_rrset_sizeof(%struct.packed_rrset_data*) #1

declare dso_local i32 @packed_rrset_ptr_fixup(%struct.packed_rrset_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
