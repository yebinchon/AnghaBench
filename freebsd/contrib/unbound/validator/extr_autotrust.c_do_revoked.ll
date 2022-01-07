; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_do_revoked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_do_revoked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.autr_ta = type { i64 }

@AUTR_STATE_VALID = common dso_local global i64 0, align 8
@AUTR_STATE_MISSING = common dso_local global i64 0, align 8
@AUTR_STATE_REVOKED = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"old id, prior to revocation\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"new id, after revocation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_env*, %struct.autr_ta*, i32*)* @do_revoked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_revoked(%struct.module_env* %0, %struct.autr_ta* %1, i32* %2) #0 {
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca %struct.autr_ta*, align 8
  %6 = alloca i32*, align 8
  store %struct.module_env* %0, %struct.module_env** %4, align 8
  store %struct.autr_ta* %1, %struct.autr_ta** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %8 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AUTR_STATE_VALID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %14 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AUTR_STATE_MISSING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %12, %3
  %19 = load %struct.module_env*, %struct.module_env** %4, align 8
  %20 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @AUTR_STATE_REVOKED, align 4
  %23 = call i32 @set_trustanchor_state(%struct.module_env* %19, %struct.autr_ta* %20, i32* %21, i32 %22)
  %24 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %25 = load i32, i32* @VERB_ALGO, align 4
  %26 = call i32 @verbose_key(%struct.autr_ta* %24, i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %28 = call i32 @revoke_dnskey(%struct.autr_ta* %27, i32 0)
  %29 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %30 = load i32, i32* @VERB_ALGO, align 4
  %31 = call i32 @verbose_key(%struct.autr_ta* %29, i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %18, %12
  ret void
}

declare dso_local i32 @set_trustanchor_state(%struct.module_env*, %struct.autr_ta*, i32*, i32) #1

declare dso_local i32 @verbose_key(%struct.autr_ta*, i32, i8*) #1

declare dso_local i32 @revoke_dnskey(%struct.autr_ta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
