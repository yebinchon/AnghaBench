; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_validate_msg_signatures.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_validate_msg_signatures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32 }
%struct.module_env = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.val_env = type { i32 }
%struct.query_info = type { i64 }
%struct.reply_info = type { i64, i64, i64, %struct.ub_packed_rrset_key**, i8* }
%struct.ub_packed_rrset_key = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.key_entry_key = type { i32 }
%struct.packed_rrset_data = type { i32, i32 }

@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@sec_status_secure = common dso_local global i32 0, align 4
@rrset_trust_validated = common dso_local global i32 0, align 4
@LDNS_SECTION_ANSWER = common dso_local global i32 0, align 4
@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"validator: response has failed ANSWER rrset:\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"for CNAME\00", align 1
@LDNS_RR_TYPE_DNAME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"for DNAME\00", align 1
@sec_status_bogus = common dso_local global i8* null, align 8
@LDNS_SECTION_AUTHORITY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"validator: response has failed AUTHORITY rrset:\00", align 1
@LDNS_SECTION_ADDITIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.module_env*, %struct.val_env*, %struct.query_info*, %struct.reply_info*, %struct.key_entry_key*)* @validate_msg_signatures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_msg_signatures(%struct.module_qstate* %0, %struct.module_env* %1, %struct.val_env* %2, %struct.query_info* %3, %struct.reply_info* %4, %struct.key_entry_key* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.module_qstate*, align 8
  %9 = alloca %struct.module_env*, align 8
  %10 = alloca %struct.val_env*, align 8
  %11 = alloca %struct.query_info*, align 8
  %12 = alloca %struct.reply_info*, align 8
  %13 = alloca %struct.key_entry_key*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ub_packed_rrset_key*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %8, align 8
  store %struct.module_env* %1, %struct.module_env** %9, align 8
  store %struct.val_env* %2, %struct.val_env** %10, align 8
  store %struct.query_info* %3, %struct.query_info** %11, align 8
  store %struct.reply_info* %4, %struct.reply_info** %12, align 8
  store %struct.key_entry_key* %5, %struct.key_entry_key** %13, align 8
  store i32 0, i32* %19, align 4
  store i8* null, i8** %20, align 8
  store i64 0, i64* %15, align 8
  br label %21

21:                                               ; preds = %137, %6
  %22 = load i64, i64* %15, align 8
  %23 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %24 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %140

27:                                               ; preds = %21
  %28 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %29 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %28, i32 0, i32 3
  %30 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %29, align 8
  %31 = load i64, i64* %15, align 8
  %32 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %30, i64 %31
  %33 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %32, align 8
  store %struct.ub_packed_rrset_key* %33, %struct.ub_packed_rrset_key** %17, align 8
  %34 = load i32, i32* %19, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %27
  %37 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %38 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ntohs(i32 %40)
  %42 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %36
  store i32 0, i32* %19, align 4
  %45 = load i32, i32* @sec_status_secure, align 4
  %46 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %47 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.packed_rrset_data*
  %51 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %50, i32 0, i32 0
  store i32 %45, i32* %51, align 4
  %52 = load i32, i32* @rrset_trust_validated, align 4
  %53 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %54 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.packed_rrset_data*
  %58 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %57, i32 0, i32 1
  store i32 %52, i32* %58, align 4
  br label %137

59:                                               ; preds = %36, %27
  %60 = load %struct.module_env*, %struct.module_env** %9, align 8
  %61 = load %struct.val_env*, %struct.val_env** %10, align 8
  %62 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %63 = load %struct.key_entry_key*, %struct.key_entry_key** %13, align 8
  %64 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %65 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %66 = call i32 @val_verify_rrset_entry(%struct.module_env* %60, %struct.val_env* %61, %struct.ub_packed_rrset_key* %62, %struct.key_entry_key* %63, i8** %20, i32 %64, %struct.module_qstate* %65)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* @sec_status_secure, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %121

70:                                               ; preds = %59
  %71 = load i32, i32* @VERB_QUERY, align 4
  %72 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %73 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %77 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @ntohs(i32 %79)
  %81 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %82 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @ntohs(i32 %84)
  %86 = call i32 @log_nametypeclass(i32 %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %75, i64 %80, i64 %85)
  %87 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %88 = load i8*, i8** %20, align 8
  %89 = call i32 @errinf(%struct.module_qstate* %87, i8* %88)
  %90 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %91 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @ntohs(i32 %93)
  %95 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %70
  %98 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %99 = call i32 @errinf(%struct.module_qstate* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %112

100:                                              ; preds = %70
  %101 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %102 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @ntohs(i32 %104)
  %106 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %110 = call i32 @errinf(%struct.module_qstate* %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %100
  br label %112

112:                                              ; preds = %111, %97
  %113 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %114 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %115 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @errinf_origin(%struct.module_qstate* %113, i32 %116)
  %118 = load i8*, i8** @sec_status_bogus, align 8
  %119 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %120 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %119, i32 0, i32 4
  store i8* %118, i8** %120, align 8
  store i32 0, i32* %7, align 4
  br label %259

121:                                              ; preds = %59
  %122 = load %struct.query_info*, %struct.query_info** %11, align 8
  %123 = getelementptr inbounds %struct.query_info, %struct.query_info* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  %128 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %129 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @ntohs(i32 %131)
  %133 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  store i32 1, i32* %19, align 4
  br label %136

136:                                              ; preds = %135, %127, %121
  br label %137

137:                                              ; preds = %136, %44
  %138 = load i64, i64* %15, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %15, align 8
  br label %21

140:                                              ; preds = %21
  %141 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %142 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %15, align 8
  br label %144

144:                                              ; preds = %203, %140
  %145 = load i64, i64* %15, align 8
  %146 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %147 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %150 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %148, %151
  %153 = icmp ult i64 %145, %152
  br i1 %153, label %154, label %206

154:                                              ; preds = %144
  %155 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %156 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %155, i32 0, i32 3
  %157 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %156, align 8
  %158 = load i64, i64* %15, align 8
  %159 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %157, i64 %158
  %160 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %159, align 8
  store %struct.ub_packed_rrset_key* %160, %struct.ub_packed_rrset_key** %17, align 8
  %161 = load %struct.module_env*, %struct.module_env** %9, align 8
  %162 = load %struct.val_env*, %struct.val_env** %10, align 8
  %163 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %164 = load %struct.key_entry_key*, %struct.key_entry_key** %13, align 8
  %165 = load i32, i32* @LDNS_SECTION_AUTHORITY, align 4
  %166 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %167 = call i32 @val_verify_rrset_entry(%struct.module_env* %161, %struct.val_env* %162, %struct.ub_packed_rrset_key* %163, %struct.key_entry_key* %164, i8** %20, i32 %165, %struct.module_qstate* %166)
  store i32 %167, i32* %18, align 4
  %168 = load i32, i32* %18, align 4
  %169 = load i32, i32* @sec_status_secure, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %202

171:                                              ; preds = %154
  %172 = load i32, i32* @VERB_QUERY, align 4
  %173 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %174 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %178 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @ntohs(i32 %180)
  %182 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %183 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i64 @ntohs(i32 %185)
  %187 = call i32 @log_nametypeclass(i32 %172, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %176, i64 %181, i64 %186)
  %188 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %189 = load i8*, i8** %20, align 8
  %190 = call i32 @errinf(%struct.module_qstate* %188, i8* %189)
  %191 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %192 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %193 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @errinf_origin(%struct.module_qstate* %191, i32 %194)
  %196 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %197 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %198 = call i32 @errinf_rrset(%struct.module_qstate* %196, %struct.ub_packed_rrset_key* %197)
  %199 = load i8*, i8** @sec_status_bogus, align 8
  %200 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %201 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %200, i32 0, i32 4
  store i8* %199, i8** %201, align 8
  store i32 0, i32* %7, align 4
  br label %259

202:                                              ; preds = %154
  br label %203

203:                                              ; preds = %202
  %204 = load i64, i64* %15, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %15, align 8
  br label %144

206:                                              ; preds = %144
  %207 = load %struct.module_env*, %struct.module_env** %9, align 8
  %208 = getelementptr inbounds %struct.module_env, %struct.module_env* %207, i32 0, i32 0
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %206
  store i32 1, i32* %7, align 4
  br label %259

214:                                              ; preds = %206
  %215 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %216 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %219 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = add i64 %217, %220
  store i64 %221, i64* %15, align 8
  br label %222

222:                                              ; preds = %255, %214
  %223 = load i64, i64* %15, align 8
  %224 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %225 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ult i64 %223, %226
  br i1 %227, label %228, label %258

228:                                              ; preds = %222
  %229 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %230 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %229, i32 0, i32 3
  %231 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %230, align 8
  %232 = load i64, i64* %15, align 8
  %233 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %231, i64 %232
  %234 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %233, align 8
  store %struct.ub_packed_rrset_key* %234, %struct.ub_packed_rrset_key** %17, align 8
  %235 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %236 = call i32 @val_find_rrset_signer(%struct.ub_packed_rrset_key* %235, i32** %14, i64* %16)
  %237 = load i32*, i32** %14, align 8
  %238 = icmp ne i32* %237, null
  br i1 %238, label %239, label %254

239:                                              ; preds = %228
  %240 = load i32*, i32** %14, align 8
  %241 = load %struct.key_entry_key*, %struct.key_entry_key** %13, align 8
  %242 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i64 @query_dname_compare(i32* %240, i32 %243)
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %239
  %247 = load %struct.module_env*, %struct.module_env** %9, align 8
  %248 = load %struct.val_env*, %struct.val_env** %10, align 8
  %249 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %250 = load %struct.key_entry_key*, %struct.key_entry_key** %13, align 8
  %251 = load i32, i32* @LDNS_SECTION_ADDITIONAL, align 4
  %252 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %253 = call i32 @val_verify_rrset_entry(%struct.module_env* %247, %struct.val_env* %248, %struct.ub_packed_rrset_key* %249, %struct.key_entry_key* %250, i8** %20, i32 %251, %struct.module_qstate* %252)
  br label %254

254:                                              ; preds = %246, %239, %228
  br label %255

255:                                              ; preds = %254
  %256 = load i64, i64* %15, align 8
  %257 = add i64 %256, 1
  store i64 %257, i64* %15, align 8
  br label %222

258:                                              ; preds = %222
  store i32 1, i32* %7, align 4
  br label %259

259:                                              ; preds = %258, %213, %171, %112
  %260 = load i32, i32* %7, align 4
  ret i32 %260
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @val_verify_rrset_entry(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, %struct.key_entry_key*, i8**, i32, %struct.module_qstate*) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

declare dso_local i32 @errinf_origin(%struct.module_qstate*, i32) #1

declare dso_local i32 @errinf_rrset(%struct.module_qstate*, %struct.ub_packed_rrset_key*) #1

declare dso_local i32 @val_find_rrset_signer(%struct.ub_packed_rrset_key*, i32**, i64*) #1

declare dso_local i64 @query_dname_compare(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
