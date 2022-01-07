; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_update_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_update_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.val_env = type { i32 }
%struct.trust_anchor = type { i64, i32, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.packed_rrset_data = type { i64, i64*, i64*, i64* }
%struct.autr_ta = type { i32 }

@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@VERB_DETAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"trust point has unsupported algorithm at\00", align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"verified by DS\00", align 1
@AUTR_STATE_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"in DNS response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, %struct.val_env*, %struct.trust_anchor*, %struct.ub_packed_rrset_key*, i32*)* @update_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_events(%struct.module_env* %0, %struct.val_env* %1, %struct.trust_anchor* %2, %struct.ub_packed_rrset_key* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.module_env*, align 8
  %8 = alloca %struct.val_env*, align 8
  %9 = alloca %struct.trust_anchor*, align 8
  %10 = alloca %struct.ub_packed_rrset_key*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.packed_rrset_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.autr_ta*, align 8
  store %struct.module_env* %0, %struct.module_env** %7, align 8
  store %struct.val_env* %1, %struct.val_env** %8, align 8
  store %struct.trust_anchor* %2, %struct.trust_anchor** %9, align 8
  store %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %16 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %19, %struct.packed_rrset_data** %12, align 8
  %20 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %21 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @ntohs(i32 %23)
  %25 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @log_assert(i32 %27)
  %29 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %30 = call i32 @init_events(%struct.trust_anchor* %29)
  store i64 0, i64* %13, align 8
  br label %31

31:                                               ; preds = %185, %5
  %32 = load i64, i64* %13, align 8
  %33 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %34 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %188

37:                                               ; preds = %31
  store %struct.autr_ta* null, %struct.autr_ta** %14, align 8
  %38 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %39 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @ntohs(i32 %41)
  %43 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %44 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %13, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 2
  %50 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %51 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %13, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, 2
  %57 = call i32 @rr_is_dnskey_sep(i64 %42, i64 %49, i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %37
  br label %185

60:                                               ; preds = %37
  %61 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %62 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @ntohs(i32 %64)
  %66 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %67 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %13, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 2
  %73 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %74 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, 2
  %80 = call i64 @rr_is_dnskey_revoked(i64 %65, i64 %72, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %60
  br label %185

83:                                               ; preds = %60
  %84 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %85 = load i64, i64* %13, align 8
  %86 = call i32 @dnskey_algo_is_supported(%struct.ub_packed_rrset_key* %84, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @VERB_DETAIL, align 4
  %90 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %91 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %94 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %95 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @log_nametypeclass(i32 %89, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %92, i64 %93, i32 %96)
  br label %185

98:                                               ; preds = %83
  %99 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %100 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %101 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @ntohs(i32 %103)
  %105 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %106 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %105, i32 0, i32 2
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 2
  %112 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %113 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* %13, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %117, 2
  %119 = call i32 @find_key(%struct.trust_anchor* %99, i64 %104, i64 %111, i64 %118, %struct.autr_ta** %14)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %98
  store i32 0, i32* %6, align 4
  br label %197

122:                                              ; preds = %98
  %123 = load %struct.autr_ta*, %struct.autr_ta** %14, align 8
  %124 = icmp ne %struct.autr_ta* %123, null
  br i1 %124, label %175, label %125

125:                                              ; preds = %122
  %126 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %127 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %128 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %127, i32 0, i32 3
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* %13, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %135 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %134, i32 0, i32 2
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* %13, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, 2
  %141 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %142 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %141, i32 0, i32 1
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* %13, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %146, 2
  %148 = call %struct.autr_ta* @add_key(%struct.trust_anchor* %126, i32 %133, i64 %140, i64 %147)
  store %struct.autr_ta* %148, %struct.autr_ta** %14, align 8
  %149 = load i32*, i32** %11, align 8
  store i32 1, i32* %149, align 4
  %150 = load %struct.autr_ta*, %struct.autr_ta** %14, align 8
  %151 = icmp ne %struct.autr_ta* %150, null
  br i1 %151, label %152, label %174

152:                                              ; preds = %125
  %153 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %154 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %174

157:                                              ; preds = %152
  %158 = load %struct.module_env*, %struct.module_env** %7, align 8
  %159 = load %struct.val_env*, %struct.val_env** %8, align 8
  %160 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %161 = load i64, i64* %13, align 8
  %162 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %163 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @key_matches_a_ds(%struct.module_env* %158, %struct.val_env* %159, %struct.ub_packed_rrset_key* %160, i64 %161, i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %157
  %168 = load %struct.autr_ta*, %struct.autr_ta** %14, align 8
  %169 = load i32, i32* @VERB_ALGO, align 4
  %170 = call i32 @verbose_key(%struct.autr_ta* %168, i32 %169, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %171 = load i32, i32* @AUTR_STATE_VALID, align 4
  %172 = load %struct.autr_ta*, %struct.autr_ta** %14, align 8
  %173 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %167, %157, %152, %125
  br label %175

175:                                              ; preds = %174, %122
  %176 = load %struct.autr_ta*, %struct.autr_ta** %14, align 8
  %177 = icmp ne %struct.autr_ta* %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %175
  store i32 0, i32* %6, align 4
  br label %197

179:                                              ; preds = %175
  %180 = load %struct.autr_ta*, %struct.autr_ta** %14, align 8
  %181 = call i32 @seen_trustanchor(%struct.autr_ta* %180, i32 1)
  %182 = load %struct.autr_ta*, %struct.autr_ta** %14, align 8
  %183 = load i32, i32* @VERB_ALGO, align 4
  %184 = call i32 @verbose_key(%struct.autr_ta* %182, i32 %183, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %185

185:                                              ; preds = %179, %88, %82, %59
  %186 = load i64, i64* %13, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %13, align 8
  br label %31

188:                                              ; preds = %31
  %189 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %190 = load %struct.module_env*, %struct.module_env** %7, align 8
  %191 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %192 = call i32 @min_expiry(%struct.module_env* %190, %struct.packed_rrset_data* %191)
  %193 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %194 = call i32 @key_ttl(%struct.ub_packed_rrset_key* %193)
  %195 = load i32*, i32** %11, align 8
  %196 = call i32 @set_tp_times(%struct.trust_anchor* %189, i32 %192, i32 %194, i32* %195)
  store i32 1, i32* %6, align 4
  br label %197

197:                                              ; preds = %188, %178, %121
  %198 = load i32, i32* %6, align 4
  ret i32 %198
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @init_events(%struct.trust_anchor*) #1

declare dso_local i32 @rr_is_dnskey_sep(i64, i64, i64) #1

declare dso_local i64 @rr_is_dnskey_revoked(i64, i64, i64) #1

declare dso_local i32 @dnskey_algo_is_supported(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @find_key(%struct.trust_anchor*, i64, i64, i64, %struct.autr_ta**) #1

declare dso_local %struct.autr_ta* @add_key(%struct.trust_anchor*, i32, i64, i64) #1

declare dso_local i64 @key_matches_a_ds(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, i64, i64) #1

declare dso_local i32 @verbose_key(%struct.autr_ta*, i32, i8*) #1

declare dso_local i32 @seen_trustanchor(%struct.autr_ta*, i32) #1

declare dso_local i32 @set_tp_times(%struct.trust_anchor*, i32, i32, i32*) #1

declare dso_local i32 @min_expiry(%struct.module_env*, %struct.packed_rrset_data*) #1

declare dso_local i32 @key_ttl(%struct.ub_packed_rrset_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
