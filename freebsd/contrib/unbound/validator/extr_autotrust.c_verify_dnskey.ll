; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_verify_dnskey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_verify_dnskey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.val_env = type { i32 }
%struct.trust_anchor = type { i32, i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.module_qstate = type { i32 }

@ALGO_NEEDS_MAX = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"autotrust: validate DNSKEY with anchor: %s\00", align 1
@sec_status_secure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, %struct.val_env*, %struct.trust_anchor*, %struct.ub_packed_rrset_key*, %struct.module_qstate*)* @verify_dnskey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_dnskey(%struct.module_env* %0, %struct.val_env* %1, %struct.trust_anchor* %2, %struct.ub_packed_rrset_key* %3, %struct.module_qstate* %4) #0 {
  %6 = alloca %struct.module_env*, align 8
  %7 = alloca %struct.val_env*, align 8
  %8 = alloca %struct.trust_anchor*, align 8
  %9 = alloca %struct.ub_packed_rrset_key*, align 8
  %10 = alloca %struct.module_qstate*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %6, align 8
  store %struct.val_env* %1, %struct.val_env** %7, align 8
  store %struct.trust_anchor* %2, %struct.trust_anchor** %8, align 8
  store %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key** %9, align 8
  store %struct.module_qstate* %4, %struct.module_qstate** %10, align 8
  store i8* null, i8** %11, align 8
  %16 = load i32, i32* @ALGO_NEEDS_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load %struct.module_env*, %struct.module_env** %6, align 8
  %22 = getelementptr inbounds %struct.module_env, %struct.module_env* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load %struct.module_env*, %struct.module_env** %6, align 8
  %27 = load %struct.val_env*, %struct.val_env** %7, align 8
  %28 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %29 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %30 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %33 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %5
  br label %39

38:                                               ; preds = %5
  br label %39

39:                                               ; preds = %38, %37
  %40 = phi i32* [ %20, %37 ], [ null, %38 ]
  %41 = load %struct.module_qstate*, %struct.module_qstate** %10, align 8
  %42 = call i32 @val_verify_DNSKEY_with_TA(%struct.module_env* %26, %struct.val_env* %27, %struct.ub_packed_rrset_key* %28, i32 %31, i32 %34, i32* %40, i8** %11, %struct.module_qstate* %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* @VERB_ALGO, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @sec_status_to_string(i32 %44)
  %46 = call i32 @verbose(i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @sec_status_secure, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %51)
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @val_verify_DNSKEY_with_TA(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, i32, i32, i32*, i8**, %struct.module_qstate*) #2

declare dso_local i32 @verbose(i32, i8*, i32) #2

declare dso_local i32 @sec_status_to_string(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
