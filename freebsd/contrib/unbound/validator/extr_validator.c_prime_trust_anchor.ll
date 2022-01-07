; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_prime_trust_anchor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_prime_trust_anchor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.val_qstate = type { i32, i32, i32, i32 }
%struct.trust_anchor = type { i32, i32, i32, i32 }

@LDNS_RR_TYPE_DNSKEY = common dso_local global i32 0, align 4
@BIT_CD = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"keytag signaling query failed\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not prime trust anchor\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Could not prime trust anchor: out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.val_qstate*, i32, %struct.trust_anchor*)* @prime_trust_anchor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prime_trust_anchor(%struct.module_qstate* %0, %struct.val_qstate* %1, i32 %2, %struct.trust_anchor* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.val_qstate*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.trust_anchor*, align 8
  %10 = alloca %struct.module_qstate*, align 8
  %11 = alloca i32, align 4
  store %struct.module_qstate* %0, %struct.module_qstate** %6, align 8
  store %struct.val_qstate* %1, %struct.val_qstate** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.trust_anchor* %3, %struct.trust_anchor** %9, align 8
  store %struct.module_qstate* null, %struct.module_qstate** %10, align 8
  %12 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %15 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %18 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %21 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %22 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BIT_CD, align 4
  %25 = call i32 @generate_request(%struct.module_qstate* %12, i32 %13, i32 %16, i32 %19, i32 %20, i32 %23, i32 %24, %struct.module_qstate** %10, i32 0)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.module_qstate*, %struct.module_qstate** %10, align 8
  %27 = icmp ne %struct.module_qstate* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %4
  %29 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %30 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %41 = call i32 @generate_keytag_query(%struct.module_qstate* %38, i32 %39, %struct.trust_anchor* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @VERB_ALGO, align 4
  %45 = call i32 @verbose(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %84

46:                                               ; preds = %37, %28, %4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @VERB_ALGO, align 4
  %51 = call i32 @verbose(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %84

52:                                               ; preds = %46
  %53 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %54 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %56 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %59 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %62 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @regional_alloc_init(i32 %57, i32 %60, i32 %63)
  %65 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %66 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %68 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %71 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %73 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %76 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %78 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %52
  %82 = call i32 @log_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %84

83:                                               ; preds = %52
  store i32 1, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %81, %49, %43
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @generate_request(%struct.module_qstate*, i32, i32, i32, i32, i32, i32, %struct.module_qstate**, i32) #1

declare dso_local i32 @generate_keytag_query(%struct.module_qstate*, i32, %struct.trust_anchor*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @regional_alloc_init(i32, i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
