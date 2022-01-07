; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_rr_comment_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_rr_comment_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_rr_comment_print(i8** %0, i64* %1, i32* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8** %0, i8*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %6
  %18 = load i8**, i8*** %8, align 8
  %19 = load i64*, i64** %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = call i32 @rr_comment_dnskey(i8** %18, i64* %19, i32* %20, i64 %21, i64 %22)
  store i32 %23, i32* %7, align 4
  br label %49

24:                                               ; preds = %6
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i8**, i8*** %8, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @rr_comment_rrsig(i8** %29, i64* %30, i32* %31, i64 %32, i64 %33)
  store i32 %34, i32* %7, align 4
  br label %49

35:                                               ; preds = %24
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i8**, i8*** %8, align 8
  %41 = load i64*, i64** %9, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @rr_comment_nsec3(i8** %40, i64* %41, i32* %42, i64 %43, i64 %44)
  store i32 %45, i32* %7, align 4
  br label %49

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %39, %28, %17
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @rr_comment_dnskey(i8**, i64*, i32*, i64, i64) #1

declare dso_local i32 @rr_comment_rrsig(i8**, i64*, i32*, i64, i64) #1

declare dso_local i32 @rr_comment_nsec3(i8**, i64*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
