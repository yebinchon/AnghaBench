; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_rr_is_selfsigned_revoked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_rr_is_selfsigned_revoked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.val_env = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.module_qstate = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"seen REVOKE flag, check self-signed, rr %d\00", align 1
@LDNS_SECTION_ANSWER = common dso_local global i32 0, align 4
@sec_status_secure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, i64, %struct.module_qstate*)* @rr_is_selfsigned_revoked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rr_is_selfsigned_revoked(%struct.module_env* %0, %struct.val_env* %1, %struct.ub_packed_rrset_key* %2, i64 %3, %struct.module_qstate* %4) #0 {
  %6 = alloca %struct.module_env*, align 8
  %7 = alloca %struct.val_env*, align 8
  %8 = alloca %struct.ub_packed_rrset_key*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.module_qstate*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.module_env* %0, %struct.module_env** %6, align 8
  store %struct.val_env* %1, %struct.val_env** %7, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.module_qstate* %4, %struct.module_qstate** %10, align 8
  store i8* null, i8** %12, align 8
  %13 = load i32, i32* @VERB_ALGO, align 4
  %14 = load i64, i64* %9, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @verbose(i32 %13, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.module_env*, %struct.module_env** %6, align 8
  %18 = load %struct.val_env*, %struct.val_env** %7, align 8
  %19 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %20 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %23 = load %struct.module_qstate*, %struct.module_qstate** %10, align 8
  %24 = call i32 @dnskey_verify_rrset(%struct.module_env* %17, %struct.val_env* %18, %struct.ub_packed_rrset_key* %19, %struct.ub_packed_rrset_key* %20, i64 %21, i8** %12, i32 %22, %struct.module_qstate* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @sec_status_secure, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local i32 @verbose(i32, i8*, i32) #1

declare dso_local i32 @dnskey_verify_rrset(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*, i64, i8**, i32, %struct.module_qstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
