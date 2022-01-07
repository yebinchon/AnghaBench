; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_process_prime_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_process_prime_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64* }
%struct.val_qstate = type { i64, i8*, i32*, i32*, i32*, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dns_msg = type { i32 }
%struct.sock_list = type { i32 }
%struct.val_env = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.trust_anchor = type { i32, i32, i64, i32, i32 }

@VAL_INIT_STATE = common dso_local global i8* null, align 8
@VAL_VALIDATE_STATE = common dso_local global i8* null, align 8
@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DNSKEY = common dso_local global i32 0, align 4
@VAL_MAX_RESTART_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"for trust anchor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_qstate*, %struct.val_qstate*, i32, i32, %struct.dns_msg*, %struct.sock_list*)* @process_prime_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_prime_response(%struct.module_qstate* %0, %struct.val_qstate* %1, i32 %2, i32 %3, %struct.dns_msg* %4, %struct.sock_list* %5) #0 {
  %7 = alloca %struct.module_qstate*, align 8
  %8 = alloca %struct.val_qstate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dns_msg*, align 8
  %12 = alloca %struct.sock_list*, align 8
  %13 = alloca %struct.val_env*, align 8
  %14 = alloca %struct.ub_packed_rrset_key*, align 8
  %15 = alloca %struct.trust_anchor*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %7, align 8
  store %struct.val_qstate* %1, %struct.val_qstate** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dns_msg* %4, %struct.dns_msg** %11, align 8
  store %struct.sock_list* %5, %struct.sock_list** %12, align 8
  %16 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %17 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.val_env*
  store %struct.val_env* %25, %struct.val_env** %13, align 8
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %14, align 8
  %26 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %27 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %32 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %35 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %38 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %41 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.trust_anchor* @anchor_find(i32 %30, i32* %33, i32 %36, i32 %39, i32 %43)
  store %struct.trust_anchor* %44, %struct.trust_anchor** %15, align 8
  %45 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %46 = icmp ne %struct.trust_anchor* %45, null
  br i1 %46, label %62, label %47

47:                                               ; preds = %6
  %48 = load i8*, i8** @VAL_INIT_STATE, align 8
  %49 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %50 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %52 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %47
  %56 = load i8*, i8** @VAL_VALIDATE_STATE, align 8
  %57 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %58 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %55, %47
  %60 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %61 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %60, i32 0, i32 4
  store i32* null, i32** %61, align 8
  br label %189

62:                                               ; preds = %6
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %68 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %71 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %74 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %77 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %78 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.ub_packed_rrset_key* @reply_find_rrset_section_an(i32 %69, i32 %72, i32 %75, i32 %76, i32 %79)
  store %struct.ub_packed_rrset_key* %80, %struct.ub_packed_rrset_key** %14, align 8
  br label %81

81:                                               ; preds = %66, %62
  %82 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %83 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %81
  %87 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %88 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load %struct.val_env*, %struct.val_env** %13, align 8
  %91 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %92 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %93 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %94 = call i32 @autr_process_prime(%struct.TYPE_4__* %89, %struct.val_env* %90, %struct.trust_anchor* %91, %struct.ub_packed_rrset_key* %92, %struct.module_qstate* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %86
  %97 = load i8*, i8** @VAL_INIT_STATE, align 8
  %98 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %99 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %101 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %100, i32 0, i32 4
  store i32* null, i32** %101, align 8
  br label %189

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102, %81
  %104 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %105 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %106 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32* @primeResponseToKE(%struct.ub_packed_rrset_key* %104, %struct.trust_anchor* %105, %struct.module_qstate* %106, i32 %107)
  %109 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %110 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %109, i32 0, i32 2
  store i32* %108, i32** %110, align 8
  %111 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %112 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %111, i32 0, i32 1
  %113 = call i32 @lock_basic_unlock(i32* %112)
  %114 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %115 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %168

118:                                              ; preds = %103
  %119 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %120 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = call i64 @key_entry_isbad(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %149

124:                                              ; preds = %118
  %125 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %126 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @VAL_MAX_RESTART_COUNT, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %149

130:                                              ; preds = %124
  %131 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %132 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %131, i32 0, i32 3
  %133 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %134 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.sock_list*, %struct.sock_list** %12, align 8
  %137 = call i32 @val_blacklist(i32** %132, i32 %135, %struct.sock_list* %136, i32 1)
  %138 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %139 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %138, i32 0, i32 0
  store i32* null, i32** %139, align 8
  %140 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %141 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %141, align 8
  %144 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %145 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %144, i32 0, i32 2
  store i32* null, i32** %145, align 8
  %146 = load i8*, i8** @VAL_INIT_STATE, align 8
  %147 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %148 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  br label %189

149:                                              ; preds = %124, %118
  %150 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %151 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %150, i32 0, i32 3
  store i32* null, i32** %151, align 8
  %152 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %153 = load %struct.sock_list*, %struct.sock_list** %12, align 8
  %154 = call i32 @errinf_origin(%struct.module_qstate* %152, %struct.sock_list* %153)
  %155 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %156 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %157 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @errinf_dname(%struct.module_qstate* %155, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %158)
  %160 = load %struct.val_env*, %struct.val_env** %13, align 8
  %161 = getelementptr inbounds %struct.val_env, %struct.val_env* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %164 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %167 = call i32 @key_cache_insert(i32 %162, i32* %165, %struct.module_qstate* %166)
  br label %168

168:                                              ; preds = %149, %103
  %169 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %170 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %185

173:                                              ; preds = %168
  %174 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %175 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = call i64 @key_entry_isnull(i32* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %173
  %180 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %181 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = call i64 @key_entry_isbad(i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %179, %173, %168
  %186 = load i8*, i8** @VAL_VALIDATE_STATE, align 8
  %187 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %188 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %187, i32 0, i32 1
  store i8* %186, i8** %188, align 8
  br label %189

189:                                              ; preds = %59, %96, %130, %185, %179
  ret void
}

declare dso_local %struct.trust_anchor* @anchor_find(i32, i32*, i32, i32, i32) #1

declare dso_local %struct.ub_packed_rrset_key* @reply_find_rrset_section_an(i32, i32, i32, i32, i32) #1

declare dso_local i32 @autr_process_prime(%struct.TYPE_4__*, %struct.val_env*, %struct.trust_anchor*, %struct.ub_packed_rrset_key*, %struct.module_qstate*) #1

declare dso_local i32* @primeResponseToKE(%struct.ub_packed_rrset_key*, %struct.trust_anchor*, %struct.module_qstate*, i32) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i64 @key_entry_isbad(i32*) #1

declare dso_local i32 @val_blacklist(i32**, i32, %struct.sock_list*, i32) #1

declare dso_local i32 @errinf_origin(%struct.module_qstate*, %struct.sock_list*) #1

declare dso_local i32 @errinf_dname(%struct.module_qstate*, i8*, i32) #1

declare dso_local i32 @key_cache_insert(i32, i32*, %struct.module_qstate*) #1

declare dso_local i64 @key_entry_isnull(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
