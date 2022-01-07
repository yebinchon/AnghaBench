; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_process_prime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_process_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i64* }
%struct.val_env = type { i32 }
%struct.trust_anchor = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.module_qstate = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"autotrust not processed, trust point revoked\00", align 1
@LDNS_RR_TYPE_DNSKEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"autotrust process for\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"autotrust: morekeys, reassemble\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"malloc failure assembling autotrust keys\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"autotrust: no dnskey rrset\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"autotrust: revokedkeys, reassemble\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"autotrust: dnskey did not verify.\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"malloc failure in autotrust update_events. trust point unchanged.\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"malloc failure in autotrust do_statetable. trust point unchanged.\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"autotrust: changed, reassemble\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"autotrust: no changes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autr_process_prime(%struct.module_env* %0, %struct.val_env* %1, %struct.trust_anchor* %2, %struct.ub_packed_rrset_key* %3, %struct.module_qstate* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.module_env*, align 8
  %8 = alloca %struct.val_env*, align 8
  %9 = alloca %struct.trust_anchor*, align 8
  %10 = alloca %struct.ub_packed_rrset_key*, align 8
  %11 = alloca %struct.module_qstate*, align 8
  %12 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %7, align 8
  store %struct.val_env* %1, %struct.val_env** %8, align 8
  store %struct.trust_anchor* %2, %struct.trust_anchor** %9, align 8
  store %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key** %10, align 8
  store %struct.module_qstate* %4, %struct.module_qstate** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %14 = icmp ne %struct.trust_anchor* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %17 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br label %20

20:                                               ; preds = %15, %5
  %21 = phi i1 [ false, %5 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @log_assert(i32 %22)
  %24 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %25 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %20
  %31 = load i32, i32* @VERB_ALGO, align 4
  %32 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %33 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %36 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %37 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @log_nametypeclass(i32 %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %38)
  %40 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %41 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %40, i32 0, i32 5
  %42 = call i32 @lock_basic_unlock(i32* %41)
  store i32 0, i32* %6, align 4
  br label %221

43:                                               ; preds = %20
  %44 = load %struct.module_env*, %struct.module_env** %7, align 8
  %45 = getelementptr inbounds %struct.module_env, %struct.module_env* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %49 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i64 %47, i64* %51, align 8
  %52 = load i32, i32* @VERB_ALGO, align 4
  %53 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %54 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %57 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %58 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @log_nametypeclass(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56, i32 %59)
  %61 = load %struct.module_env*, %struct.module_env** %7, align 8
  %62 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %63 = call i32 @autr_holddown_exceed(%struct.module_env* %61, %struct.trust_anchor* %62, i32* %12)
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %43
  %67 = load i32, i32* @VERB_ALGO, align 4
  %68 = call i32 @verbose(i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %70 = call i32 @autr_assemble(%struct.trust_anchor* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = call i32 @log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %221

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %43
  %76 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %77 = icmp ne %struct.ub_packed_rrset_key* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @VERB_ALGO, align 4
  %80 = call i32 @verbose(i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %221

81:                                               ; preds = %75
  %82 = load %struct.module_env*, %struct.module_env** %7, align 8
  %83 = load %struct.val_env*, %struct.val_env** %8, align 8
  %84 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %85 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %86 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %87 = call i32 @check_contains_revoked(%struct.module_env* %82, %struct.val_env* %83, %struct.trust_anchor* %84, %struct.ub_packed_rrset_key* %85, i32* %12, %struct.module_qstate* %86)
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %122

90:                                               ; preds = %81
  %91 = load i32, i32* @VERB_ALGO, align 4
  %92 = call i32 @verbose(i32 %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %93 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %94 = call i32 @autr_assemble(%struct.trust_anchor* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %90
  %97 = call i32 @log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %221

98:                                               ; preds = %90
  %99 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %100 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %121, label %103

103:                                              ; preds = %98
  %104 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %105 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %103
  %109 = load %struct.module_env*, %struct.module_env** %7, align 8
  %110 = getelementptr inbounds %struct.module_env, %struct.module_env* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %114 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i64 %112, i64* %116, align 8
  %117 = load %struct.module_env*, %struct.module_env** %7, align 8
  %118 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %119 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %120 = call i32 @autr_tp_remove(%struct.module_env* %117, %struct.trust_anchor* %118, %struct.ub_packed_rrset_key* %119)
  store i32 0, i32* %6, align 4
  br label %221

121:                                              ; preds = %103, %98
  br label %122

122:                                              ; preds = %121, %81
  %123 = load %struct.module_env*, %struct.module_env** %7, align 8
  %124 = load %struct.val_env*, %struct.val_env** %8, align 8
  %125 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %126 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %127 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %128 = call i32 @verify_dnskey(%struct.module_env* %123, %struct.val_env* %124, %struct.trust_anchor* %125, %struct.ub_packed_rrset_key* %126, %struct.module_qstate* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %150, label %130

130:                                              ; preds = %122
  %131 = load i32, i32* @VERB_ALGO, align 4
  %132 = call i32 @verbose(i32 %131, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %133 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %134 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %133, i32 0, i32 2
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %130
  %140 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %141 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %140, i32 0, i32 2
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %143, align 8
  %146 = load %struct.module_env*, %struct.module_env** %7, align 8
  %147 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %148 = call i32 @autr_write_file(%struct.module_env* %146, %struct.trust_anchor* %147)
  br label %149

149:                                              ; preds = %139, %130
  store i32 1, i32* %6, align 4
  br label %221

150:                                              ; preds = %122
  %151 = load %struct.module_env*, %struct.module_env** %7, align 8
  %152 = getelementptr inbounds %struct.module_env, %struct.module_env* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %156 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %155, i32 0, i32 2
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  store i64 %154, i64* %158, align 8
  %159 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %160 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %159, i32 0, i32 2
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  store i64 0, i64* %162, align 8
  %163 = load %struct.module_env*, %struct.module_env** %7, align 8
  %164 = load %struct.val_env*, %struct.val_env** %8, align 8
  %165 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %166 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %167 = call i32 @update_events(%struct.module_env* %163, %struct.val_env* %164, %struct.trust_anchor* %165, %struct.ub_packed_rrset_key* %166, i32* %12)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %150
  %170 = call i32 @log_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %221

171:                                              ; preds = %150
  %172 = load %struct.module_env*, %struct.module_env** %7, align 8
  %173 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %174 = call i32 @do_statetable(%struct.module_env* %172, %struct.trust_anchor* %173, i32* %12)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %171
  %177 = call i32 @log_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %221

178:                                              ; preds = %171
  %179 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %180 = call i32 @autr_cleanup_keys(%struct.trust_anchor* %179)
  %181 = load %struct.module_env*, %struct.module_env** %7, align 8
  %182 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %183 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %184 = call i32 @set_next_probe(%struct.module_env* %181, %struct.trust_anchor* %182, %struct.ub_packed_rrset_key* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %178
  store i32 0, i32* %6, align 4
  br label %221

187:                                              ; preds = %178
  %188 = load %struct.module_env*, %struct.module_env** %7, align 8
  %189 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %190 = call i32 @autr_write_file(%struct.module_env* %188, %struct.trust_anchor* %189)
  %191 = load i32, i32* %12, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %217

193:                                              ; preds = %187
  %194 = load i32, i32* @VERB_ALGO, align 4
  %195 = call i32 @verbose(i32 %194, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %196 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %197 = call i32 @autr_assemble(%struct.trust_anchor* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %193
  %200 = call i32 @log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %221

201:                                              ; preds = %193
  %202 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %203 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %216, label %206

206:                                              ; preds = %201
  %207 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %208 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %206
  %212 = load %struct.module_env*, %struct.module_env** %7, align 8
  %213 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %214 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %215 = call i32 @autr_tp_remove(%struct.module_env* %212, %struct.trust_anchor* %213, %struct.ub_packed_rrset_key* %214)
  store i32 0, i32* %6, align 4
  br label %221

216:                                              ; preds = %206, %201
  br label %220

217:                                              ; preds = %187
  %218 = load i32, i32* @VERB_ALGO, align 4
  %219 = call i32 @verbose(i32 %218, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %220

220:                                              ; preds = %217, %216
  store i32 1, i32* %6, align 4
  br label %221

221:                                              ; preds = %220, %211, %199, %186, %176, %169, %149, %108, %96, %78, %72, %30
  %222 = load i32, i32* %6, align 4
  ret i32 %222
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @autr_holddown_exceed(%struct.module_env*, %struct.trust_anchor*, i32*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @autr_assemble(%struct.trust_anchor*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @check_contains_revoked(%struct.module_env*, %struct.val_env*, %struct.trust_anchor*, %struct.ub_packed_rrset_key*, i32*, %struct.module_qstate*) #1

declare dso_local i32 @autr_tp_remove(%struct.module_env*, %struct.trust_anchor*, %struct.ub_packed_rrset_key*) #1

declare dso_local i32 @verify_dnskey(%struct.module_env*, %struct.val_env*, %struct.trust_anchor*, %struct.ub_packed_rrset_key*, %struct.module_qstate*) #1

declare dso_local i32 @autr_write_file(%struct.module_env*, %struct.trust_anchor*) #1

declare dso_local i32 @update_events(%struct.module_env*, %struct.val_env*, %struct.trust_anchor*, %struct.ub_packed_rrset_key*, i32*) #1

declare dso_local i32 @do_statetable(%struct.module_env*, %struct.trust_anchor*, i32*) #1

declare dso_local i32 @autr_cleanup_keys(%struct.trust_anchor*) #1

declare dso_local i32 @set_next_probe(%struct.module_env*, %struct.trust_anchor*, %struct.ub_packed_rrset_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
