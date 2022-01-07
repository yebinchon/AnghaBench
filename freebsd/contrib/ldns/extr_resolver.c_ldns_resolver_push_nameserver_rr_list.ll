; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_resolver.c_ldns_resolver_push_nameserver_rr_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_resolver.c_ldns_resolver_push_nameserver_rr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_STATUS_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_resolver_push_nameserver_rr_list(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %30, %12
  %14 = load i64, i64* %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @ldns_rr_list_rr_count(i32* %15)
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32* @ldns_rr_list_rr(i32* %19, i64 %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @ldns_resolver_push_nameserver_rr(i32* %22, i32* %23)
  %25 = load i64, i64* @LDNS_STATUS_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %28, i64* %7, align 8
  br label %33

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %8, align 8
  br label %13

33:                                               ; preds = %27, %13
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %3, align 8
  br label %37

35:                                               ; preds = %2
  %36 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i64 @ldns_resolver_push_nameserver_rr(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
