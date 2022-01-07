; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_check_contains_revoked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_check_contains_revoked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.val_env = type { i32 }
%struct.trust_anchor = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.module_qstate = type { i32 }
%struct.packed_rrset_data = type { i64, i64*, i64* }
%struct.autr_ta = type { i32, i32, i32, i32 }

@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"is self-signed revoked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_env*, %struct.val_env*, %struct.trust_anchor*, %struct.ub_packed_rrset_key*, i32*, %struct.module_qstate*)* @check_contains_revoked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_contains_revoked(%struct.module_env* %0, %struct.val_env* %1, %struct.trust_anchor* %2, %struct.ub_packed_rrset_key* %3, i32* %4, %struct.module_qstate* %5) #0 {
  %7 = alloca %struct.module_env*, align 8
  %8 = alloca %struct.val_env*, align 8
  %9 = alloca %struct.trust_anchor*, align 8
  %10 = alloca %struct.ub_packed_rrset_key*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.module_qstate*, align 8
  %13 = alloca %struct.packed_rrset_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.autr_ta*, align 8
  store %struct.module_env* %0, %struct.module_env** %7, align 8
  store %struct.val_env* %1, %struct.val_env** %8, align 8
  store %struct.trust_anchor* %2, %struct.trust_anchor** %9, align 8
  store %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.module_qstate* %5, %struct.module_qstate** %12, align 8
  %16 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %17 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %20, %struct.packed_rrset_data** %13, align 8
  %21 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %22 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @ntohs(i32 %24)
  %26 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @log_assert(i32 %28)
  store i64 0, i64* %14, align 8
  br label %30

30:                                               ; preds = %192, %6
  %31 = load i64, i64* %14, align 8
  %32 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %33 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %195

36:                                               ; preds = %30
  store %struct.autr_ta* null, %struct.autr_ta** %15, align 8
  %37 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %38 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @ntohs(i32 %40)
  %42 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %43 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %14, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 2
  %49 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %50 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %14, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, 2
  %56 = call i32 @rr_is_dnskey_sep(i64 %41, i64 %48, i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %36
  %59 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %60 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @ntohs(i32 %62)
  %64 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %65 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %14, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 2
  %71 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %72 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %14, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, 2
  %78 = call i32 @rr_is_dnskey_revoked(i64 %63, i64 %70, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %58, %36
  br label %192

81:                                               ; preds = %58
  %82 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %83 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %84 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @ntohs(i32 %86)
  %88 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %89 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %88, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  %91 = load i64, i64* %14, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 2
  %95 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %96 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %14, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %100, 2
  %102 = call i32 @find_key(%struct.trust_anchor* %82, i64 %87, i64 %94, i64 %101, %struct.autr_ta** %15)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %81
  %105 = call i32 @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %192

106:                                              ; preds = %81
  %107 = load %struct.autr_ta*, %struct.autr_ta** %15, align 8
  %108 = icmp ne %struct.autr_ta* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  br label %192

110:                                              ; preds = %106
  %111 = load %struct.module_env*, %struct.module_env** %7, align 8
  %112 = load %struct.val_env*, %struct.val_env** %8, align 8
  %113 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %114 = load i64, i64* %14, align 8
  %115 = load %struct.module_qstate*, %struct.module_qstate** %12, align 8
  %116 = call i64 @rr_is_selfsigned_revoked(%struct.module_env* %111, %struct.val_env* %112, %struct.ub_packed_rrset_key* %113, i64 %114, %struct.module_qstate* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %191

118:                                              ; preds = %110
  %119 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %120 = load i64, i64* %14, align 8
  %121 = call i32 @dnskey_calc_keytag(%struct.ub_packed_rrset_key* %119, i64 %120)
  %122 = sub nsw i32 %121, 128
  %123 = load %struct.autr_ta*, %struct.autr_ta** %15, align 8
  %124 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.autr_ta*, %struct.autr_ta** %15, align 8
  %127 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.autr_ta*, %struct.autr_ta** %15, align 8
  %130 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @sldns_wirerr_get_rdata(i32 %125, i32 %128, i32 %131)
  %133 = load %struct.autr_ta*, %struct.autr_ta** %15, align 8
  %134 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.autr_ta*, %struct.autr_ta** %15, align 8
  %137 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.autr_ta*, %struct.autr_ta** %15, align 8
  %140 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @sldns_wirerr_get_rdatalen(i32 %135, i32 %138, i32 %141)
  %143 = call i32 @sldns_calc_keytag_raw(i32 %132, i32 %142)
  %144 = icmp eq i32 %122, %143
  br i1 %144, label %171, label %145

145:                                              ; preds = %118
  %146 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %147 = load i64, i64* %14, align 8
  %148 = call i32 @dnskey_calc_keytag(%struct.ub_packed_rrset_key* %146, i64 %147)
  %149 = load %struct.autr_ta*, %struct.autr_ta** %15, align 8
  %150 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.autr_ta*, %struct.autr_ta** %15, align 8
  %153 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.autr_ta*, %struct.autr_ta** %15, align 8
  %156 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @sldns_wirerr_get_rdata(i32 %151, i32 %154, i32 %157)
  %159 = load %struct.autr_ta*, %struct.autr_ta** %15, align 8
  %160 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.autr_ta*, %struct.autr_ta** %15, align 8
  %163 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.autr_ta*, %struct.autr_ta** %15, align 8
  %166 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @sldns_wirerr_get_rdatalen(i32 %161, i32 %164, i32 %167)
  %169 = call i32 @sldns_calc_keytag_raw(i32 %158, i32 %168)
  %170 = icmp eq i32 %148, %169
  br label %171

171:                                              ; preds = %145, %118
  %172 = phi i1 [ true, %118 ], [ %170, %145 ]
  %173 = zext i1 %172 to i32
  %174 = call i32 @log_assert(i32 %173)
  %175 = load %struct.autr_ta*, %struct.autr_ta** %15, align 8
  %176 = load i32, i32* @VERB_ALGO, align 4
  %177 = call i32 @verbose_key(%struct.autr_ta* %175, i32 %176, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %178 = load %struct.autr_ta*, %struct.autr_ta** %15, align 8
  %179 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %171
  %183 = load i32*, i32** %11, align 8
  store i32 1, i32* %183, align 4
  br label %184

184:                                              ; preds = %182, %171
  %185 = load %struct.autr_ta*, %struct.autr_ta** %15, align 8
  %186 = call i32 @seen_revoked_trustanchor(%struct.autr_ta* %185, i32 1)
  %187 = load %struct.module_env*, %struct.module_env** %7, align 8
  %188 = load %struct.autr_ta*, %struct.autr_ta** %15, align 8
  %189 = load i32*, i32** %11, align 8
  %190 = call i32 @do_revoked(%struct.module_env* %187, %struct.autr_ta* %188, i32* %189)
  br label %191

191:                                              ; preds = %184, %110
  br label %192

192:                                              ; preds = %191, %109, %104, %80
  %193 = load i64, i64* %14, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %14, align 8
  br label %30

195:                                              ; preds = %30
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @rr_is_dnskey_sep(i64, i64, i64) #1

declare dso_local i32 @rr_is_dnskey_revoked(i64, i64, i64) #1

declare dso_local i32 @find_key(%struct.trust_anchor*, i64, i64, i64, %struct.autr_ta**) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i64 @rr_is_selfsigned_revoked(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, i64, %struct.module_qstate*) #1

declare dso_local i32 @dnskey_calc_keytag(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @sldns_calc_keytag_raw(i32, i32) #1

declare dso_local i32 @sldns_wirerr_get_rdata(i32, i32, i32) #1

declare dso_local i32 @sldns_wirerr_get_rdatalen(i32, i32, i32) #1

declare dso_local i32 @verbose_key(%struct.autr_ta*, i32, i8*) #1

declare dso_local i32 @seen_revoked_trustanchor(%struct.autr_ta*, i32) #1

declare dso_local i32 @do_revoked(%struct.module_env*, %struct.autr_ta*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
