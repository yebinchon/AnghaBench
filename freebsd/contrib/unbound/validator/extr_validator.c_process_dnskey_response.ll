; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_process_dnskey_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_process_dnskey_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32*, i64* }
%struct.TYPE_3__ = type { i32 }
%struct.val_qstate = type { i64, %struct.key_entry_key*, i32*, i8*, i32 }
%struct.key_entry_key = type { i32 }
%struct.dns_msg = type { i32 }
%struct.query_info = type { i32, i32, i32 }
%struct.sock_list = type { i32 }
%struct.val_env = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }

@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@VERB_DETAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Missing DNSKEY RRset in response to DNSKEY query.\00", align 1
@VAL_MAX_RESTART_COUNT = common dso_local global i64 0, align 8
@BOGUS_KEY_TTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"alloc failure in missing dnskey response\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"No DNSKEY record\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"for key\00", align 1
@VAL_VALIDATE_STATE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"internal error: no DS rrset for new DNSKEY response\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"out of memory in verify new DNSKEYs\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Did not match a DS to a DNSKEY, thus bogus.\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"validated DNSKEY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_qstate*, %struct.val_qstate*, i32, i32, %struct.dns_msg*, %struct.query_info*, %struct.sock_list*)* @process_dnskey_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_dnskey_response(%struct.module_qstate* %0, %struct.val_qstate* %1, i32 %2, i32 %3, %struct.dns_msg* %4, %struct.query_info* %5, %struct.sock_list* %6) #0 {
  %8 = alloca %struct.module_qstate*, align 8
  %9 = alloca %struct.val_qstate*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dns_msg*, align 8
  %13 = alloca %struct.query_info*, align 8
  %14 = alloca %struct.sock_list*, align 8
  %15 = alloca %struct.val_env*, align 8
  %16 = alloca %struct.key_entry_key*, align 8
  %17 = alloca %struct.ub_packed_rrset_key*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %8, align 8
  store %struct.val_qstate* %1, %struct.val_qstate** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.dns_msg* %4, %struct.dns_msg** %12, align 8
  store %struct.query_info* %5, %struct.query_info** %13, align 8
  store %struct.sock_list* %6, %struct.sock_list** %14, align 8
  %20 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %21 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.val_env*
  store %struct.val_env* %29, %struct.val_env** %15, align 8
  %30 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %31 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %30, i32 0, i32 1
  %32 = load %struct.key_entry_key*, %struct.key_entry_key** %31, align 8
  store %struct.key_entry_key* %32, %struct.key_entry_key** %16, align 8
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %17, align 8
  store i8* null, i8** %19, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %7
  %37 = load %struct.query_info*, %struct.query_info** %13, align 8
  %38 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %39 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.ub_packed_rrset_key* @reply_find_answer_rrset(%struct.query_info* %37, i32 %40)
  store %struct.ub_packed_rrset_key* %41, %struct.ub_packed_rrset_key** %17, align 8
  br label %42

42:                                               ; preds = %36, %7
  %43 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %44 = icmp eq %struct.ub_packed_rrset_key* %43, null
  br i1 %44, label %45, label %110

45:                                               ; preds = %42
  %46 = load i32, i32* @VERB_DETAIL, align 4
  %47 = call i32 @verbose(i32 %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %49 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @VAL_MAX_RESTART_COUNT, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %45
  %54 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %55 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %54, i32 0, i32 2
  %56 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %57 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sock_list*, %struct.sock_list** %14, align 8
  %60 = call i32 @val_blacklist(i32** %55, i32 %58, %struct.sock_list* %59, i32 1)
  %61 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %62 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  %63 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %64 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  br label %226

67:                                               ; preds = %45
  %68 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %69 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.query_info*, %struct.query_info** %13, align 8
  %72 = getelementptr inbounds %struct.query_info, %struct.query_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.query_info*, %struct.query_info** %13, align 8
  %75 = getelementptr inbounds %struct.query_info, %struct.query_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.query_info*, %struct.query_info** %13, align 8
  %78 = getelementptr inbounds %struct.query_info, %struct.query_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @BOGUS_KEY_TTL, align 4
  %81 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %82 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.key_entry_key* @key_entry_create_bad(i32 %70, i32 %73, i32 %76, i32 %79, i32 %80, i32 %86)
  %88 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %89 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %88, i32 0, i32 1
  store %struct.key_entry_key* %87, %struct.key_entry_key** %89, align 8
  %90 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %91 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %90, i32 0, i32 1
  %92 = load %struct.key_entry_key*, %struct.key_entry_key** %91, align 8
  %93 = icmp ne %struct.key_entry_key* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %67
  %95 = call i32 @log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %67
  %97 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %98 = call i32 @errinf(%struct.module_qstate* %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %100 = load %struct.sock_list*, %struct.sock_list** %14, align 8
  %101 = call i32 @errinf_origin(%struct.module_qstate* %99, %struct.sock_list* %100)
  %102 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %103 = load %struct.query_info*, %struct.query_info** %13, align 8
  %104 = getelementptr inbounds %struct.query_info, %struct.query_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @errinf_dname(%struct.module_qstate* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load i8*, i8** @VAL_VALIDATE_STATE, align 8
  %108 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %109 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  br label %226

110:                                              ; preds = %42
  %111 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %112 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %110
  %116 = call i32 @log_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %117 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %118 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %117, i32 0, i32 1
  store %struct.key_entry_key* null, %struct.key_entry_key** %118, align 8
  %119 = load i8*, i8** @VAL_VALIDATE_STATE, align 8
  %120 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %121 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %120, i32 0, i32 3
  store i8* %119, i8** %121, align 8
  br label %226

122:                                              ; preds = %110
  %123 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %124 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %123, i32 0, i32 2
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %18, align 4
  %130 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %131 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %134 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %133, i32 0, i32 2
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load %struct.val_env*, %struct.val_env** %15, align 8
  %137 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %138 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %139 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %18, align 4
  %142 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %143 = call %struct.key_entry_key* @val_verify_new_DNSKEYs(i32 %132, %struct.TYPE_4__* %135, %struct.val_env* %136, %struct.ub_packed_rrset_key* %137, i32 %140, i32 %141, i8** %19, %struct.module_qstate* %142)
  %144 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %145 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %144, i32 0, i32 1
  store %struct.key_entry_key* %143, %struct.key_entry_key** %145, align 8
  %146 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %147 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %146, i32 0, i32 1
  %148 = load %struct.key_entry_key*, %struct.key_entry_key** %147, align 8
  %149 = icmp ne %struct.key_entry_key* %148, null
  br i1 %149, label %155, label %150

150:                                              ; preds = %122
  %151 = call i32 @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %152 = load i8*, i8** @VAL_VALIDATE_STATE, align 8
  %153 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %154 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %153, i32 0, i32 3
  store i8* %152, i8** %154, align 8
  br label %226

155:                                              ; preds = %122
  %156 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %157 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %156, i32 0, i32 1
  %158 = load %struct.key_entry_key*, %struct.key_entry_key** %157, align 8
  %159 = call i32 @key_entry_isgood(%struct.key_entry_key* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %210, label %161

161:                                              ; preds = %155
  %162 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %163 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %162, i32 0, i32 1
  %164 = load %struct.key_entry_key*, %struct.key_entry_key** %163, align 8
  %165 = call i64 @key_entry_isbad(%struct.key_entry_key* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %204

167:                                              ; preds = %161
  %168 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %169 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @VAL_MAX_RESTART_COUNT, align 8
  %172 = icmp slt i64 %170, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %167
  %174 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %175 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %174, i32 0, i32 2
  %176 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %177 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.sock_list*, %struct.sock_list** %14, align 8
  %180 = call i32 @val_blacklist(i32** %175, i32 %178, %struct.sock_list* %179, i32 1)
  %181 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %182 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %181, i32 0, i32 0
  store i32* null, i32** %182, align 8
  %183 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %184 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, 1
  store i64 %186, i64* %184, align 8
  %187 = load %struct.key_entry_key*, %struct.key_entry_key** %16, align 8
  %188 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %189 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %188, i32 0, i32 1
  store %struct.key_entry_key* %187, %struct.key_entry_key** %189, align 8
  br label %226

190:                                              ; preds = %167
  %191 = load i32, i32* @VERB_DETAIL, align 4
  %192 = call i32 @verbose(i32 %191, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %193 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %194 = load i8*, i8** %19, align 8
  %195 = call i32 @errinf(%struct.module_qstate* %193, i8* %194)
  %196 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %197 = load %struct.sock_list*, %struct.sock_list** %14, align 8
  %198 = call i32 @errinf_origin(%struct.module_qstate* %196, %struct.sock_list* %197)
  %199 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %200 = load %struct.query_info*, %struct.query_info** %13, align 8
  %201 = getelementptr inbounds %struct.query_info, %struct.query_info* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @errinf_dname(%struct.module_qstate* %199, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %202)
  br label %204

204:                                              ; preds = %190, %161
  %205 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %206 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %205, i32 0, i32 2
  store i32* null, i32** %206, align 8
  %207 = load i8*, i8** @VAL_VALIDATE_STATE, align 8
  %208 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %209 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %208, i32 0, i32 3
  store i8* %207, i8** %209, align 8
  br label %226

210:                                              ; preds = %155
  %211 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %212 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %211, i32 0, i32 2
  store i32* null, i32** %212, align 8
  %213 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %214 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %213, i32 0, i32 0
  store i32* null, i32** %214, align 8
  %215 = load %struct.val_env*, %struct.val_env** %15, align 8
  %216 = getelementptr inbounds %struct.val_env, %struct.val_env* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %219 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %218, i32 0, i32 1
  %220 = load %struct.key_entry_key*, %struct.key_entry_key** %219, align 8
  %221 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %222 = call i32 @key_cache_insert(i32 %217, %struct.key_entry_key* %220, %struct.module_qstate* %221)
  %223 = load i32, i32* @VERB_DETAIL, align 4
  %224 = load %struct.query_info*, %struct.query_info** %13, align 8
  %225 = call i32 @log_query_info(i32 %223, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), %struct.query_info* %224)
  br label %226

226:                                              ; preds = %210, %204, %173, %150, %115, %96, %53
  ret void
}

declare dso_local %struct.ub_packed_rrset_key* @reply_find_answer_rrset(%struct.query_info*, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @val_blacklist(i32**, i32, %struct.sock_list*, i32) #1

declare dso_local %struct.key_entry_key* @key_entry_create_bad(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

declare dso_local i32 @errinf_origin(%struct.module_qstate*, %struct.sock_list*) #1

declare dso_local i32 @errinf_dname(%struct.module_qstate*, i8*, i32) #1

declare dso_local %struct.key_entry_key* @val_verify_new_DNSKEYs(i32, %struct.TYPE_4__*, %struct.val_env*, %struct.ub_packed_rrset_key*, i32, i32, i8**, %struct.module_qstate*) #1

declare dso_local i32 @key_entry_isgood(%struct.key_entry_key*) #1

declare dso_local i64 @key_entry_isbad(%struct.key_entry_key*) #1

declare dso_local i32 @key_cache_insert(i32, %struct.key_entry_key*, %struct.module_qstate*) #1

declare dso_local i32 @log_query_info(i32, i8*, %struct.query_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
