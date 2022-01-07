; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_primeResponseToKE.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_primeResponseToKE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry_key = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.trust_anchor = type { i32, i32, i32, i32, i32 }
%struct.module_qstate = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__*, i64* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.val_env = type { i32 }

@sec_status_unchecked = common dso_local global i32 0, align 4
@VERB_OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"failed to prime trust anchor -- could not fetch DNSKEY rrset\00", align 1
@LDNS_RR_TYPE_DNSKEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"no DNSKEY rrset\00", align 1
@BOGUS_KEY_TTL = common dso_local global i32 0, align 4
@NULL_KEY_TTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"out of memory: allocate fail prime key\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"out of memory: verifying prime TA\00", align 1
@sec_status_secure = common dso_local global i32 0, align 4
@sec_status_bogus = common dso_local global i32 0, align 4
@VERB_DETAIL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"validate keys with anchor(DS): %s\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"failed to prime trust anchor -- DNSKEY rrset is not secure\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"out of memory: allocate null prime key\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Successfully primed trust anchor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key_entry_key* (%struct.ub_packed_rrset_key*, %struct.trust_anchor*, %struct.module_qstate*, i32)* @primeResponseToKE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key_entry_key* @primeResponseToKE(%struct.ub_packed_rrset_key* %0, %struct.trust_anchor* %1, %struct.module_qstate* %2, i32 %3) #0 {
  %5 = alloca %struct.key_entry_key*, align 8
  %6 = alloca %struct.ub_packed_rrset_key*, align 8
  %7 = alloca %struct.trust_anchor*, align 8
  %8 = alloca %struct.module_qstate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.val_env*, align 8
  %11 = alloca %struct.key_entry_key*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %6, align 8
  store %struct.trust_anchor* %1, %struct.trust_anchor** %7, align 8
  store %struct.module_qstate* %2, %struct.module_qstate** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %16 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.val_env*
  store %struct.val_env* %24, %struct.val_env** %10, align 8
  store %struct.key_entry_key* null, %struct.key_entry_key** %11, align 8
  %25 = load i32, i32* @sec_status_unchecked, align 4
  store i32 %25, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %26 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %27 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %14, align 4
  %33 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %34 = icmp ne %struct.ub_packed_rrset_key* %33, null
  br i1 %34, label %104, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @VERB_OPS, align 4
  %37 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %38 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %41 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %42 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @log_nametypeclass(i32 %36, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %43)
  %45 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %46 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %35
  %54 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %55 = call i32 @errinf(%struct.module_qstate* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %57 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %60 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %63 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %66 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @BOGUS_KEY_TTL, align 4
  %69 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %70 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.key_entry_key* @key_entry_create_bad(i32 %58, i32 %61, i32 %64, i32 %67, i32 %68, i32 %74)
  store %struct.key_entry_key* %75, %struct.key_entry_key** %11, align 8
  br label %97

76:                                               ; preds = %35
  %77 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %78 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %81 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %84 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %87 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @NULL_KEY_TTL, align 4
  %90 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %91 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %94, align 4
  %96 = call %struct.key_entry_key* @key_entry_create_null(i32 %79, i32 %82, i32 %85, i32 %88, i32 %89, i32 %95)
  store %struct.key_entry_key* %96, %struct.key_entry_key** %11, align 8
  br label %97

97:                                               ; preds = %76, %53
  %98 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  %99 = icmp ne %struct.key_entry_key* %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = call i32 @log_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store %struct.key_entry_key* null, %struct.key_entry_key** %5, align 8
  br label %223

102:                                              ; preds = %97
  %103 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  store %struct.key_entry_key* %103, %struct.key_entry_key** %5, align 8
  br label %223

104:                                              ; preds = %4
  %105 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %106 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %109 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load %struct.val_env*, %struct.val_env** %10, align 8
  %112 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %113 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %114 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %117 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %121 = call %struct.key_entry_key* @val_verify_new_DNSKEYs_with_ta(i32 %107, %struct.TYPE_4__* %110, %struct.val_env* %111, %struct.ub_packed_rrset_key* %112, i32 %115, i32 %118, i32 %119, i8** %13, %struct.module_qstate* %120)
  store %struct.key_entry_key* %121, %struct.key_entry_key** %11, align 8
  %122 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  %123 = icmp ne %struct.key_entry_key* %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %104
  %125 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store %struct.key_entry_key* null, %struct.key_entry_key** %5, align 8
  br label %223

126:                                              ; preds = %104
  %127 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  %128 = call i64 @key_entry_isgood(%struct.key_entry_key* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* @sec_status_secure, align 4
  store i32 %131, i32* %12, align 4
  br label %134

132:                                              ; preds = %126
  %133 = load i32, i32* @sec_status_bogus, align 4
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = load i32, i32* @VERB_DETAIL, align 4
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @sec_status_to_string(i32 %136)
  %138 = call i32 @verbose(i32 %135, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @sec_status_secure, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %212

142:                                              ; preds = %134
  %143 = load i32, i32* @VERB_OPS, align 4
  %144 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %145 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %148 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %149 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @log_nametypeclass(i32 %143, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %146, i32 %147, i32 %150)
  %152 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %153 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %184

160:                                              ; preds = %142
  %161 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %162 = load i8*, i8** %13, align 8
  %163 = call i32 @errinf(%struct.module_qstate* %161, i8* %162)
  %164 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %165 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %168 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %171 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %174 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @BOGUS_KEY_TTL, align 4
  %177 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %178 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %177, i32 0, i32 0
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %181, align 4
  %183 = call %struct.key_entry_key* @key_entry_create_bad(i32 %166, i32 %169, i32 %172, i32 %175, i32 %176, i32 %182)
  store %struct.key_entry_key* %183, %struct.key_entry_key** %11, align 8
  br label %205

184:                                              ; preds = %142
  %185 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %186 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %189 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %192 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %195 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @NULL_KEY_TTL, align 4
  %198 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %199 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %198, i32 0, i32 0
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %202, align 4
  %204 = call %struct.key_entry_key* @key_entry_create_null(i32 %187, i32 %190, i32 %193, i32 %196, i32 %197, i32 %203)
  store %struct.key_entry_key* %204, %struct.key_entry_key** %11, align 8
  br label %205

205:                                              ; preds = %184, %160
  %206 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  %207 = icmp ne %struct.key_entry_key* %206, null
  br i1 %207, label %210, label %208

208:                                              ; preds = %205
  %209 = call i32 @log_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  store %struct.key_entry_key* null, %struct.key_entry_key** %5, align 8
  br label %223

210:                                              ; preds = %205
  %211 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  store %struct.key_entry_key* %211, %struct.key_entry_key** %5, align 8
  br label %223

212:                                              ; preds = %134
  %213 = load i32, i32* @VERB_DETAIL, align 4
  %214 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %215 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %218 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %219 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @log_nametypeclass(i32 %213, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %216, i32 %217, i32 %220)
  %222 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  store %struct.key_entry_key* %222, %struct.key_entry_key** %5, align 8
  br label %223

223:                                              ; preds = %212, %210, %208, %124, %102, %100
  %224 = load %struct.key_entry_key*, %struct.key_entry_key** %5, align 8
  ret %struct.key_entry_key* %224
}

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

declare dso_local %struct.key_entry_key* @key_entry_create_bad(i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.key_entry_key* @key_entry_create_null(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local %struct.key_entry_key* @val_verify_new_DNSKEYs_with_ta(i32, %struct.TYPE_4__*, %struct.val_env*, %struct.ub_packed_rrset_key*, i32, i32, i32, i8**, %struct.module_qstate*) #1

declare dso_local i64 @key_entry_isgood(%struct.key_entry_key*) #1

declare dso_local i32 @verbose(i32, i8*, i32) #1

declare dso_local i32 @sec_status_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
