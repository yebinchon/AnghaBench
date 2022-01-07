; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_dnskey_verify_rrset_sig.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_dnskey_verify_rrset_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.val_env = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i32 }
%struct.rbtree_type = type { i32 }
%struct.module_qstate = type { i32 }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"verify: signature too short\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"signature too short\00", align 1
@sec_status_bogus = common dso_local global i32 0, align 4
@DNSKEY_BIT_ZSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"verify: dnskey without ZSK flag\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"dnskey without ZSK flag\00", align 1
@LDNS_DNSSEC_KEYPROTO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"verify: dnskey has wrong key protocol\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"dnskey has wrong protocolnumber\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"verify: malformed signer name\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"signer name malformed\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"verify: signer name is off-tree\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"signer name off-tree\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"verify: too short, no signature data\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"signature too short, no signature data\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"verify: wrong key for rrsig\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"RRSIG signername is\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"the key name is\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"signer name mismatches key name\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"verify: wrong type covered\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"signature covers wrong type\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"verify: wrong algorithm\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"signature has wrong algorithm\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"verify: wrong keytag\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"signature has wrong keytag\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"verify: labelcount out of range\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"signature labelcount out of range\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"verify: failed due to alloc error\00", align 1
@sec_status_unchecked = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [24 x i8] c"verify: short DNSKEY RR\00", align 1
@sec_status_secure = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnskey_verify_rrset_sig(%struct.regional* %0, i32* %1, %struct.val_env* %2, i32 %3, %struct.ub_packed_rrset_key* %4, %struct.ub_packed_rrset_key* %5, i64 %6, i64 %7, %struct.rbtree_type** %8, i32* %9, i8** %10, i32 %11, %struct.module_qstate* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.regional*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.val_env*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ub_packed_rrset_key*, align 8
  %20 = alloca %struct.ub_packed_rrset_key*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.rbtree_type**, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8**, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.module_qstate*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca i32, align 4
  store %struct.regional* %0, %struct.regional** %15, align 8
  store i32* %1, i32** %16, align 8
  store %struct.val_env* %2, %struct.val_env** %17, align 8
  store i32 %3, i32* %18, align 4
  store %struct.ub_packed_rrset_key* %4, %struct.ub_packed_rrset_key** %19, align 8
  store %struct.ub_packed_rrset_key* %5, %struct.ub_packed_rrset_key** %20, align 8
  store i64 %6, i64* %21, align 8
  store i64 %7, i64* %22, align 8
  store %struct.rbtree_type** %8, %struct.rbtree_type*** %23, align 8
  store i32* %9, i32** %24, align 8
  store i8** %10, i8*** %25, align 8
  store i32 %11, i32* %26, align 4
  store %struct.module_qstate* %12, %struct.module_qstate** %27, align 8
  %39 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %19, align 8
  %40 = call i64 @rrset_get_count(%struct.ub_packed_rrset_key* %39)
  store i64 %40, i64* %31, align 8
  %41 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %19, align 8
  %42 = load i64, i64* %31, align 8
  %43 = load i64, i64* %22, align 8
  %44 = add i64 %42, %43
  %45 = call i32 @rrset_get_rdata(%struct.ub_packed_rrset_key* %41, i64 %44, i64** %29, i64* %30)
  %46 = load i64, i64* %30, align 8
  %47 = icmp ult i64 %46, 22
  br i1 %47, label %48, label %53

48:                                               ; preds = %13
  %49 = load i32, i32* @VERB_QUERY, align 4
  %50 = call i32 @verbose(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %51 = load i8**, i8*** %25, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %51, align 8
  %52 = load i32, i32* @sec_status_bogus, align 4
  store i32 %52, i32* %14, align 4
  br label %284

53:                                               ; preds = %13
  %54 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %20, align 8
  %55 = load i64, i64* %21, align 8
  %56 = call i32 @dnskey_get_flags(%struct.ub_packed_rrset_key* %54, i64 %55)
  %57 = load i32, i32* @DNSKEY_BIT_ZSK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @VERB_QUERY, align 4
  %62 = call i32 @verbose(i32 %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i8**, i8*** %25, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %63, align 8
  %64 = load i32, i32* @sec_status_bogus, align 4
  store i32 %64, i32* %14, align 4
  br label %284

65:                                               ; preds = %53
  %66 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %20, align 8
  %67 = load i64, i64* %21, align 8
  %68 = call i64 @dnskey_get_protocol(%struct.ub_packed_rrset_key* %66, i64 %67)
  %69 = load i64, i64* @LDNS_DNSSEC_KEYPROTO, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i32, i32* @VERB_QUERY, align 4
  %73 = call i32 @verbose(i32 %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i8**, i8*** %25, align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8** %74, align 8
  %75 = load i32, i32* @sec_status_bogus, align 4
  store i32 %75, i32* %14, align 4
  br label %284

76:                                               ; preds = %65
  %77 = load i64*, i64** %29, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 2
  %79 = getelementptr inbounds i64, i64* %78, i64 18
  store i64* %79, i64** %32, align 8
  %80 = load i64*, i64** %32, align 8
  %81 = load i64, i64* %30, align 8
  %82 = sub i64 %81, 2
  %83 = sub i64 %82, 18
  %84 = call i64 @dname_valid(i64* %80, i64 %83)
  store i64 %84, i64* %33, align 8
  %85 = load i64, i64* %33, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %76
  %88 = load i32, i32* @VERB_QUERY, align 4
  %89 = call i32 @verbose(i32 %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %90 = load i8**, i8*** %25, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8** %90, align 8
  %91 = load i32, i32* @sec_status_bogus, align 4
  store i32 %91, i32* %14, align 4
  br label %284

92:                                               ; preds = %76
  %93 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %19, align 8
  %94 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64*, i64** %32, align 8
  %98 = call i32 @dname_subdomain_c(i64* %96, i64* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %92
  %101 = load i32, i32* @VERB_QUERY, align 4
  %102 = call i32 @verbose(i32 %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %103 = load i8**, i8*** %25, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8** %103, align 8
  %104 = load i32, i32* @sec_status_bogus, align 4
  store i32 %104, i32* %14, align 4
  br label %284

105:                                              ; preds = %92
  %106 = load i64*, i64** %32, align 8
  %107 = bitcast i64* %106 to i8*
  %108 = load i64, i64* %33, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %34, align 8
  %110 = load i64, i64* %30, align 8
  %111 = load i64, i64* %33, align 8
  %112 = add i64 20, %111
  %113 = add i64 %112, 1
  %114 = icmp ult i64 %110, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %105
  %116 = load i32, i32* @VERB_QUERY, align 4
  %117 = call i32 @verbose(i32 %116, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %118 = load i8**, i8*** %25, align 8
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i8** %118, align 8
  %119 = load i32, i32* @sec_status_bogus, align 4
  store i32 %119, i32* %14, align 4
  br label %284

120:                                              ; preds = %105
  %121 = load i64, i64* %30, align 8
  %122 = sub i64 %121, 2
  %123 = sub i64 %122, 18
  %124 = load i64, i64* %33, align 8
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %35, align 4
  %127 = load i64*, i64** %32, align 8
  %128 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %20, align 8
  %129 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = call i64 @query_dname_compare(i64* %127, i64* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %120
  %135 = load i32, i32* @VERB_QUERY, align 4
  %136 = call i32 @verbose(i32 %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %137 = load i32, i32* @VERB_QUERY, align 4
  %138 = load i64*, i64** %32, align 8
  %139 = call i32 @log_nametypeclass(i32 %137, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i64* %138, i32 0, i32 0)
  %140 = load i32, i32* @VERB_QUERY, align 4
  %141 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %20, align 8
  %142 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = call i32 @log_nametypeclass(i32 %140, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i64* %144, i32 0, i32 0)
  %146 = load i8**, i8*** %25, align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8** %146, align 8
  %147 = load i32, i32* @sec_status_bogus, align 4
  store i32 %147, i32* %14, align 4
  br label %284

148:                                              ; preds = %120
  %149 = load i64*, i64** %29, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 2
  %151 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %19, align 8
  %152 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = call i64 @memcmp(i64* %150, i32* %153, i32 2)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %148
  %157 = load i32, i32* @VERB_QUERY, align 4
  %158 = call i32 @verbose(i32 %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  %159 = load i8**, i8*** %25, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i8** %159, align 8
  %160 = load i32, i32* @sec_status_bogus, align 4
  store i32 %160, i32* %14, align 4
  br label %284

161:                                              ; preds = %148
  %162 = load i64*, i64** %29, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 4
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %20, align 8
  %167 = load i64, i64* %21, align 8
  %168 = call i32 @dnskey_get_algo(%struct.ub_packed_rrset_key* %166, i64 %167)
  %169 = icmp ne i32 %165, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %161
  %171 = load i32, i32* @VERB_QUERY, align 4
  %172 = call i32 @verbose(i32 %171, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  %173 = load i8**, i8*** %25, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i8** %173, align 8
  %174 = load i32, i32* @sec_status_bogus, align 4
  store i32 %174, i32* %14, align 4
  br label %284

175:                                              ; preds = %161
  %176 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %20, align 8
  %177 = load i64, i64* %21, align 8
  %178 = call i32 @dnskey_calc_keytag(%struct.ub_packed_rrset_key* %176, i64 %177)
  %179 = call i32 @htons(i32 %178)
  store i32 %179, i32* %36, align 4
  %180 = load i64*, i64** %29, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 2
  %182 = getelementptr inbounds i64, i64* %181, i64 16
  %183 = call i64 @memcmp(i64* %182, i32* %36, i32 2)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %175
  %186 = load i32, i32* @VERB_QUERY, align 4
  %187 = call i32 @verbose(i32 %186, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  %188 = load i8**, i8*** %25, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i8** %188, align 8
  %189 = load i32, i32* @sec_status_bogus, align 4
  store i32 %189, i32* %14, align 4
  br label %284

190:                                              ; preds = %175
  %191 = load i64*, i64** %29, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 5
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %19, align 8
  %196 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = call i32 @dname_signame_label_count(i64* %198)
  %200 = icmp sgt i32 %194, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %190
  %202 = load i32, i32* @VERB_QUERY, align 4
  %203 = call i32 @verbose(i32 %202, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0))
  %204 = load i8**, i8*** %25, align 8
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i8** %204, align 8
  %205 = load i32, i32* @sec_status_bogus, align 4
  store i32 %205, i32* %14, align 4
  br label %284

206:                                              ; preds = %190
  %207 = load i32*, i32** %24, align 8
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %229, label %210

210:                                              ; preds = %206
  %211 = load %struct.regional*, %struct.regional** %15, align 8
  %212 = load i32*, i32** %16, align 8
  %213 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %19, align 8
  %214 = load i64*, i64** %29, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 2
  %216 = load i64, i64* %33, align 8
  %217 = add i64 18, %216
  %218 = trunc i64 %217 to i32
  %219 = load %struct.rbtree_type**, %struct.rbtree_type*** %23, align 8
  %220 = load i32, i32* %26, align 4
  %221 = load %struct.module_qstate*, %struct.module_qstate** %27, align 8
  %222 = call i32 @rrset_canonical(%struct.regional* %211, i32* %212, %struct.ub_packed_rrset_key* %213, i64* %215, i32 %218, %struct.rbtree_type** %219, i32 %220, %struct.module_qstate* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %210
  %225 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0))
  %226 = load i32, i32* @sec_status_unchecked, align 4
  store i32 %226, i32* %14, align 4
  br label %284

227:                                              ; preds = %210
  %228 = load i32*, i32** %24, align 8
  store i32 1, i32* %228, align 4
  br label %229

229:                                              ; preds = %227, %206
  %230 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %20, align 8
  %231 = load i64, i64* %21, align 8
  %232 = call i32 @dnskey_get_pubkey(%struct.ub_packed_rrset_key* %230, i64 %231, i8** %37, i32* %38)
  %233 = load i8*, i8** %37, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %239, label %235

235:                                              ; preds = %229
  %236 = load i32, i32* @VERB_QUERY, align 4
  %237 = call i32 @verbose(i32 %236, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0))
  %238 = load i32, i32* @sec_status_unchecked, align 4
  store i32 %238, i32* %14, align 4
  br label %284

239:                                              ; preds = %229
  %240 = load i32*, i32** %16, align 8
  %241 = load i64*, i64** %29, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 4
  %243 = load i64, i64* %242, align 8
  %244 = trunc i64 %243 to i32
  %245 = load i8*, i8** %34, align 8
  %246 = load i32, i32* %35, align 4
  %247 = load i8*, i8** %37, align 8
  %248 = load i32, i32* %38, align 4
  %249 = load i8**, i8*** %25, align 8
  %250 = call i32 @verify_canonrrset(i32* %240, i32 %244, i8* %245, i32 %246, i8* %247, i32 %248, i8** %249)
  store i32 %250, i32* %28, align 4
  %251 = load i32, i32* %28, align 4
  %252 = load i32, i32* @sec_status_secure, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %282

254:                                              ; preds = %239
  %255 = load %struct.val_env*, %struct.val_env** %17, align 8
  %256 = load i32, i32* %18, align 4
  %257 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %19, align 8
  %258 = load i64*, i64** %29, align 8
  %259 = getelementptr inbounds i64, i64* %258, i64 2
  %260 = getelementptr inbounds i64, i64* %259, i64 4
  %261 = load i64*, i64** %29, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 2
  %263 = getelementptr inbounds i64, i64* %262, i64 8
  %264 = load i64*, i64** %29, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 2
  %266 = getelementptr inbounds i64, i64* %265, i64 12
  %267 = call i32 @adjust_ttl(%struct.val_env* %255, i32 %256, %struct.ub_packed_rrset_key* %257, i64* %260, i64* %263, i64* %266)
  %268 = load %struct.val_env*, %struct.val_env** %17, align 8
  %269 = load i32, i32* %18, align 4
  %270 = load i64*, i64** %29, align 8
  %271 = getelementptr inbounds i64, i64* %270, i64 2
  %272 = getelementptr inbounds i64, i64* %271, i64 8
  %273 = load i64*, i64** %29, align 8
  %274 = getelementptr inbounds i64, i64* %273, i64 2
  %275 = getelementptr inbounds i64, i64* %274, i64 12
  %276 = load i8**, i8*** %25, align 8
  %277 = call i32 @check_dates(%struct.val_env* %268, i32 %269, i64* %272, i64* %275, i8** %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %254
  %280 = load i32, i32* @sec_status_bogus, align 4
  store i32 %280, i32* %14, align 4
  br label %284

281:                                              ; preds = %254
  br label %282

282:                                              ; preds = %281, %239
  %283 = load i32, i32* %28, align 4
  store i32 %283, i32* %14, align 4
  br label %284

284:                                              ; preds = %282, %279, %235, %224, %201, %185, %170, %156, %134, %115, %100, %87, %71, %60, %48
  %285 = load i32, i32* %14, align 4
  ret i32 %285
}

declare dso_local i64 @rrset_get_count(%struct.ub_packed_rrset_key*) #1

declare dso_local i32 @rrset_get_rdata(%struct.ub_packed_rrset_key*, i64, i64**, i64*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @dnskey_get_flags(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i64 @dnskey_get_protocol(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i64 @dname_valid(i64*, i64) #1

declare dso_local i32 @dname_subdomain_c(i64*, i64*) #1

declare dso_local i64 @query_dname_compare(i64*, i64*) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i64*, i32, i32) #1

declare dso_local i64 @memcmp(i64*, i32*, i32) #1

declare dso_local i32 @dnskey_get_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @dnskey_calc_keytag(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @dname_signame_label_count(i64*) #1

declare dso_local i32 @rrset_canonical(%struct.regional*, i32*, %struct.ub_packed_rrset_key*, i64*, i32, %struct.rbtree_type**, i32, %struct.module_qstate*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @dnskey_get_pubkey(%struct.ub_packed_rrset_key*, i64, i8**, i32*) #1

declare dso_local i32 @verify_canonrrset(i32*, i32, i8*, i32, i8*, i32, i8**) #1

declare dso_local i32 @adjust_ttl(%struct.val_env*, i32, %struct.ub_packed_rrset_key*, i64*, i64*, i64*) #1

declare dso_local i32 @check_dates(%struct.val_env*, i32, i64*, i64*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
