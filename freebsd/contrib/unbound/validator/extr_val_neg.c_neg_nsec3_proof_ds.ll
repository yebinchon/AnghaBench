; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_nsec3_proof_ds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_nsec3_proof_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { i32 }
%struct.val_neg_zone = type { i32, i32, i32 }
%struct.rrset_cache = type { i32 }
%struct.regional = type { i32 }
%struct.val_neg_data = type { i32, i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.nsec3_cached_hash = type { i64, i64, i64*, i64* }

@NSEC3_SHA_LEN = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NSEC3 = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DS = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dns_msg* (%struct.val_neg_zone*, i64*, i64, i32, i32*, %struct.rrset_cache*, %struct.regional*, i32, i64*)* @neg_nsec3_proof_ds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dns_msg* @neg_nsec3_proof_ds(%struct.val_neg_zone* %0, i64* %1, i64 %2, i32 %3, i32* %4, %struct.rrset_cache* %5, %struct.regional* %6, i32 %7, i64* %8) #0 {
  %10 = alloca %struct.dns_msg*, align 8
  %11 = alloca %struct.val_neg_zone*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.rrset_cache*, align 8
  %17 = alloca %struct.regional*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca %struct.dns_msg*, align 8
  %21 = alloca %struct.val_neg_data*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.ub_packed_rrset_key*, align 8
  %26 = alloca %struct.ub_packed_rrset_key*, align 8
  %27 = alloca %struct.nsec3_cached_hash, align 8
  %28 = alloca [257 x i64], align 16
  %29 = alloca i32, align 4
  store %struct.val_neg_zone* %0, %struct.val_neg_zone** %11, align 8
  store i64* %1, i64** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store %struct.rrset_cache* %5, %struct.rrset_cache** %16, align 8
  store %struct.regional* %6, %struct.regional** %17, align 8
  store i32 %7, i32* %18, align 4
  store i64* %8, i64** %19, align 8
  %30 = load i32, i32* @NSEC3_SHA_LEN, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %22, align 8
  %33 = alloca i64, i64 %31, align 16
  store i64 %31, i64* %23, align 8
  %34 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %35 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %9
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %29, align 4
  br label %183

39:                                               ; preds = %9
  %40 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %41 = load i64*, i64** %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32*, i32** %15, align 8
  %45 = call %struct.val_neg_data* @neg_find_nsec3_ce(%struct.val_neg_zone* %40, i64* %41, i64 %42, i32 %43, i32* %44, i64* %33, i64* %24)
  store %struct.val_neg_data* %45, %struct.val_neg_data** %21, align 8
  %46 = icmp ne %struct.val_neg_data* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %29, align 4
  br label %183

48:                                               ; preds = %39
  %49 = load %struct.rrset_cache*, %struct.rrset_cache** %16, align 8
  %50 = load %struct.val_neg_data*, %struct.val_neg_data** %21, align 8
  %51 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.val_neg_data*, %struct.val_neg_data** %21, align 8
  %54 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @LDNS_RR_TYPE_NSEC3, align 4
  %57 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %58 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.regional*, %struct.regional** %17, align 8
  %61 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %62 = load i32, i32* %18, align 4
  %63 = call %struct.ub_packed_rrset_key* @grab_nsec(%struct.rrset_cache* %49, i32 %52, i32 %55, i32 %56, i32 %59, i32 0, %struct.regional* %60, i32 1, i32 %61, i32 %62)
  store %struct.ub_packed_rrset_key* %63, %struct.ub_packed_rrset_key** %25, align 8
  %64 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %25, align 8
  %65 = icmp ne %struct.ub_packed_rrset_key* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %48
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %29, align 4
  br label %183

67:                                               ; preds = %48
  %68 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %69 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %25, align 8
  %70 = call i32 @neg_params_ok(%struct.val_neg_zone* %68, %struct.ub_packed_rrset_key* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %29, align 4
  br label %183

73:                                               ; preds = %67
  %74 = load i64, i64* %24, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %112

76:                                               ; preds = %73
  %77 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %25, align 8
  %78 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %79 = call i64 @nsec3_has_type(%struct.ub_packed_rrset_key* %77, i32 0, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %76
  %82 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %25, align 8
  %83 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %84 = call i64 @nsec3_has_type(%struct.ub_packed_rrset_key* %82, i32 0, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %25, align 8
  %88 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %89 = call i64 @nsec3_has_type(%struct.ub_packed_rrset_key* %87, i32 0, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86, %81, %76
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %29, align 4
  br label %183

92:                                               ; preds = %86
  %93 = load i64*, i64** %12, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %96 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %97 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.regional*, %struct.regional** %17, align 8
  %100 = call %struct.dns_msg* @dns_msg_create(i64* %93, i64 %94, i32 %95, i32 %98, %struct.regional* %99, i32 1)
  store %struct.dns_msg* %100, %struct.dns_msg** %20, align 8
  %101 = icmp ne %struct.dns_msg* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %92
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %29, align 4
  br label %183

103:                                              ; preds = %92
  %104 = load %struct.dns_msg*, %struct.dns_msg** %20, align 8
  %105 = load %struct.regional*, %struct.regional** %17, align 8
  %106 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %25, align 8
  %107 = call i32 @dns_msg_authadd(%struct.dns_msg* %104, %struct.regional* %105, %struct.ub_packed_rrset_key* %106, i32 0)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %29, align 4
  br label %183

110:                                              ; preds = %103
  %111 = load %struct.dns_msg*, %struct.dns_msg** %20, align 8
  store %struct.dns_msg* %111, %struct.dns_msg** %10, align 8
  store i32 1, i32* %29, align 4
  br label %183

112:                                              ; preds = %73
  %113 = load i64*, i64** %19, align 8
  %114 = icmp ne i64* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %29, align 4
  br label %183

116:                                              ; preds = %112
  %117 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %118 = load i64, i64* %24, align 8
  %119 = load %struct.rrset_cache*, %struct.rrset_cache** %16, align 8
  %120 = load %struct.regional*, %struct.regional** %17, align 8
  %121 = load i32, i32* %18, align 4
  %122 = getelementptr inbounds [257 x i64], [257 x i64]* %28, i64 0, i64 0
  %123 = call %struct.ub_packed_rrset_key* @neg_nsec3_getnc(%struct.val_neg_zone* %117, i64* %33, i64 %118, %struct.rrset_cache* %119, %struct.regional* %120, i32 %121, i64* %122, i32 2056)
  store %struct.ub_packed_rrset_key* %123, %struct.ub_packed_rrset_key** %26, align 8
  %124 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %26, align 8
  %125 = icmp ne %struct.ub_packed_rrset_key* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %116
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %29, align 4
  br label %183

127:                                              ; preds = %116
  %128 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %129 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %26, align 8
  %130 = call i32 @neg_params_ok(%struct.val_neg_zone* %128, %struct.ub_packed_rrset_key* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %29, align 4
  br label %183

133:                                              ; preds = %127
  %134 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %26, align 8
  %135 = call i32 @nsec3_has_optout(%struct.ub_packed_rrset_key* %134, i32 0)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %29, align 4
  br label %183

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %27, i32 0, i32 3
  store i64* %33, i64** %139, align 8
  %140 = load i64, i64* %24, align 8
  %141 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %27, i32 0, i32 0
  store i64 %140, i64* %141, align 8
  %142 = getelementptr inbounds [257 x i64], [257 x i64]* %28, i64 0, i64 0
  %143 = getelementptr inbounds i64, i64* %142, i64 1
  %144 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %27, i32 0, i32 2
  store i64* %143, i64** %144, align 8
  %145 = getelementptr inbounds [257 x i64], [257 x i64]* %28, i64 0, i64 0
  %146 = load i64, i64* %145, align 16
  %147 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %27, i32 0, i32 1
  store i64 %146, i64* %147, align 8
  %148 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %149 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %26, align 8
  %152 = load i32*, i32** %15, align 8
  %153 = call i64 @nsec3_covers(i32 %150, %struct.nsec3_cached_hash* %27, %struct.ub_packed_rrset_key* %151, i32 0, i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %138
  %156 = load i64*, i64** %12, align 8
  %157 = load i64, i64* %13, align 8
  %158 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %159 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %160 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.regional*, %struct.regional** %17, align 8
  %163 = call %struct.dns_msg* @dns_msg_create(i64* %156, i64 %157, i32 %158, i32 %161, %struct.regional* %162, i32 3)
  store %struct.dns_msg* %163, %struct.dns_msg** %20, align 8
  %164 = icmp ne %struct.dns_msg* %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %155
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %29, align 4
  br label %183

166:                                              ; preds = %155
  %167 = load %struct.dns_msg*, %struct.dns_msg** %20, align 8
  %168 = load %struct.regional*, %struct.regional** %17, align 8
  %169 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %25, align 8
  %170 = call i32 @dns_msg_authadd(%struct.dns_msg* %167, %struct.regional* %168, %struct.ub_packed_rrset_key* %169, i32 0)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %166
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %29, align 4
  br label %183

173:                                              ; preds = %166
  %174 = load %struct.dns_msg*, %struct.dns_msg** %20, align 8
  %175 = load %struct.regional*, %struct.regional** %17, align 8
  %176 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %26, align 8
  %177 = call i32 @dns_msg_authadd(%struct.dns_msg* %174, %struct.regional* %175, %struct.ub_packed_rrset_key* %176, i32 0)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %173
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %29, align 4
  br label %183

180:                                              ; preds = %173
  %181 = load %struct.dns_msg*, %struct.dns_msg** %20, align 8
  store %struct.dns_msg* %181, %struct.dns_msg** %10, align 8
  store i32 1, i32* %29, align 4
  br label %183

182:                                              ; preds = %138
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %29, align 4
  br label %183

183:                                              ; preds = %182, %180, %179, %172, %165, %137, %132, %126, %115, %110, %109, %102, %91, %72, %66, %47, %38
  %184 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %184)
  %185 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  ret %struct.dns_msg* %185
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.val_neg_data* @neg_find_nsec3_ce(%struct.val_neg_zone*, i64*, i64, i32, i32*, i64*, i64*) #2

declare dso_local %struct.ub_packed_rrset_key* @grab_nsec(%struct.rrset_cache*, i32, i32, i32, i32, i32, %struct.regional*, i32, i32, i32) #2

declare dso_local i32 @neg_params_ok(%struct.val_neg_zone*, %struct.ub_packed_rrset_key*) #2

declare dso_local i64 @nsec3_has_type(%struct.ub_packed_rrset_key*, i32, i32) #2

declare dso_local %struct.dns_msg* @dns_msg_create(i64*, i64, i32, i32, %struct.regional*, i32) #2

declare dso_local i32 @dns_msg_authadd(%struct.dns_msg*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #2

declare dso_local %struct.ub_packed_rrset_key* @neg_nsec3_getnc(%struct.val_neg_zone*, i64*, i64, %struct.rrset_cache*, %struct.regional*, i32, i64*, i32) #2

declare dso_local i32 @nsec3_has_optout(%struct.ub_packed_rrset_key*, i32) #2

declare dso_local i64 @nsec3_covers(i32, %struct.nsec3_cached_hash*, %struct.ub_packed_rrset_key*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
