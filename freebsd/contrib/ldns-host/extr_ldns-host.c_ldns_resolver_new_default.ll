; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_ldns_resolver_new_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_ldns_resolver_new_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_STATUS_MEM_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32**)* @ldns_resolver_new_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ldns_resolver_new_default(i32** %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  %4 = load i32**, i32*** %3, align 8
  %5 = call i64 @ldns_resolver_new_frm_file(i32** %4, i32* null)
  %6 = load i64, i64* @LDNS_STATUS_OK, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = call i32* (...) @ldns_resolver_new()
  %10 = load i32**, i32*** %3, align 8
  store i32* %9, i32** %10, align 8
  %11 = icmp ne i32* %9, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  %13 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %13, i64* %2, align 8
  br label %16

14:                                               ; preds = %8
  %15 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  store i64 %15, i64* %2, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i64, i64* %2, align 8
  ret i64 %17
}

declare dso_local i64 @ldns_resolver_new_frm_file(i32**, i32*) #1

declare dso_local i32* @ldns_resolver_new(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
