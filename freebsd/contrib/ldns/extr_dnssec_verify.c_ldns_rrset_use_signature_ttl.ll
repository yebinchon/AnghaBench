; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_rrset_use_signature_ttl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_rrset_use_signature_ttl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @ldns_rrset_use_signature_ttl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ldns_rrset_use_signature_ttl(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @ldns_rr_rd_count(i32* %14)
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %2
  br label %85

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @ldns_rr_rdf(i32* %19, i32 3)
  %21 = call i32 @ldns_rdf2native_int32(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ldns_rr_rdf(i32* %22, i32 2)
  %24 = call i64 @ldns_rdf2native_int8(i32 %23)
  store i64 %24, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %82, %18
  %26 = load i64, i64* %6, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @ldns_rr_list_rr_count(i32* %27)
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %30, label %85

30:                                               ; preds = %25
  %31 = load i64, i64* %7, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @ldns_rr_list_rr(i32* %32, i64 %33)
  %35 = call i32* @ldns_rr_owner(i32 %34)
  %36 = call i64 @ldns_dname_label_count(i32* %35)
  %37 = icmp slt i64 %31, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %30
  %39 = call i32 @ldns_str2rdf_dname(i32** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %40 = load i32*, i32** %3, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @ldns_rr_list_rr(i32* %40, i64 %41)
  %43 = call i32* @ldns_rr_owner(i32 %42)
  %44 = call i32* @ldns_rdf_clone(i32* %43)
  store i32* %44, i32** %9, align 8
  br label %45

45:                                               ; preds = %50, %38
  %46 = load i64, i64* %7, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @ldns_dname_label_count(i32* %47)
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32*, i32** %9, align 8
  %52 = call i32* @ldns_dname_left_chop(i32* %51)
  store i32* %52, i32** %10, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @ldns_rdf_deep_free(i32* %53)
  %55 = load i32*, i32** %10, align 8
  store i32* %55, i32** %9, align 8
  br label %45

56:                                               ; preds = %45
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @ldns_dname_cat(i32* %57, i32* %58)
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @ldns_rdf_deep_free(i32* %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @ldns_rr_list_rr(i32* %62, i64 %63)
  %65 = call i32* @ldns_rr_owner(i32 %64)
  %66 = call i32 @ldns_rdf_deep_free(i32* %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @ldns_rr_list_rr(i32* %67, i64 %68)
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @ldns_rr_set_owner(i32 %69, i32* %70)
  br label %72

72:                                               ; preds = %56, %30
  %73 = load i32*, i32** %3, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @ldns_rr_list_rr(i32* %73, i64 %74)
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @ldns_rr_set_ttl(i32 %75, i32 %76)
  %78 = load i32*, i32** %3, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @ldns_rr_list_rr(i32* %78, i64 %79)
  %81 = call i32 @ldns_rr2canonical(i32 %80)
  br label %82

82:                                               ; preds = %72
  %83 = load i64, i64* %6, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %6, align 8
  br label %25

85:                                               ; preds = %17, %25
  ret void
}

declare dso_local i32 @ldns_rr_rd_count(i32*) #1

declare dso_local i32 @ldns_rdf2native_int32(i32) #1

declare dso_local i32 @ldns_rr_rdf(i32*, i32) #1

declare dso_local i64 @ldns_rdf2native_int8(i32) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i64 @ldns_dname_label_count(i32*) #1

declare dso_local i32* @ldns_rr_owner(i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i32 @ldns_str2rdf_dname(i32**, i8*) #1

declare dso_local i32* @ldns_rdf_clone(i32*) #1

declare dso_local i32* @ldns_dname_left_chop(i32*) #1

declare dso_local i32 @ldns_rdf_deep_free(i32*) #1

declare dso_local i32 @ldns_dname_cat(i32*, i32*) #1

declare dso_local i32 @ldns_rr_set_owner(i32, i32*) #1

declare dso_local i32 @ldns_rr_set_ttl(i32, i32) #1

declare dso_local i32 @ldns_rr2canonical(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
