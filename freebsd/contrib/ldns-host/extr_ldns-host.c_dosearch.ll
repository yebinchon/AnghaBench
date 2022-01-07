; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_dosearch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_dosearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@o_mode = common dso_local global i64 0, align 8
@M_DEFAULT_Q = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@o_rrtype = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_MX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @dosearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dosearch(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32* @search(i32* %9, i32* %10, i32** %7, i32 %11, i32 1)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32*, i32** %8, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32* [ %17, %16 ], [ %19, %18 ]
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @report(i32* %13, i32* %21, i32* %22)
  %24 = load i64, i64* @o_mode, align 8
  %25 = load i64, i64* @M_DEFAULT_Q, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  br label %49

31:                                               ; preds = %20
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  store i64 %35, i64* @o_rrtype, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @doquery_filtered(i32* %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i64, i64* @LDNS_RR_TYPE_MX, align 8
  store i64 %41, i64* @o_rrtype, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @doquery_filtered(i32* %42, i32* %43)
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %40, %34, %31
  %47 = phi i1 [ false, %34 ], [ false, %31 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %46, %27
  %50 = phi i32 [ %30, %27 ], [ %48, %46 ]
  ret i32 %50
}

declare dso_local i32* @search(i32*, i32*, i32**, i32, i32) #1

declare dso_local i32 @report(i32*, i32*, i32*) #1

declare dso_local i32 @doquery_filtered(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
