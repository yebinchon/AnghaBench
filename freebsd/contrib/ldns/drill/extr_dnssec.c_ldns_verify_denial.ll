; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_dnssec.c_ldns_verify_denial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_dnssec.c_ldns_verify_denial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_ERR = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NSEC = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NSEC3 = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_RRSIG = common dso_local global i32 0, align 4
@LDNS_SECTION_ANY_NOQUESTION = common dso_local global i32 0, align 4
@LDNS_STATUS_CRYPTO_NO_RRSIG = common dso_local global i32 0, align 4
@LDNS_STATUS_MEM_ERR = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_verify_denial(i32* %0, i32* %1, i32 %2, i32** %3, i32** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  store i32** %4, i32*** %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32**, i32*** %9, align 8
  %15 = load i32**, i32*** %10, align 8
  %16 = load i32, i32* @LDNS_STATUS_ERR, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
