; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_create_nsec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_create_nsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_create_nsec(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [65536 x i64], align 16
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %10, align 8
  store i64 0, i64* %12, align 8
  %13 = call i32* (...) @ldns_rr_new()
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %16 = call i32 @ldns_rr_set_type(i32* %14, i64 %15)
  %17 = load i32*, i32** %10, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @ldns_rdf_clone(i32* %18)
  %20 = call i32 @ldns_rr_set_owner(i32* %17, i32 %19)
  %21 = load i32*, i32** %10, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @ldns_rdf_clone(i32* %22)
  %24 = call i32 @ldns_rr_push_rdf(i32* %21, i32 %23)
  store i64 0, i64* %7, align 8
  br label %25

25:                                               ; preds = %68, %3
  %26 = load i64, i64* %7, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @ldns_rr_list_rr_count(i32* %27)
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %25
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32* @ldns_rr_list_rr(i32* %31, i64 %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @ldns_rr_owner(i32* %35)
  %37 = call i64 @ldns_rdf_compare(i32* %34, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %30
  %40 = load i32*, i32** %8, align 8
  %41 = call i64 @ldns_rr_get_type(i32* %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = load i64, i64* %12, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %12, align 8
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds [65536 x i64], [65536 x i64]* %11, i64 0, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %52, %49
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds [65536 x i64], [65536 x i64]* %11, i64 0, i64 %61
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %12, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %12, align 8
  br label %65

65:                                               ; preds = %59, %52
  br label %66

66:                                               ; preds = %65, %45, %39
  br label %67

67:                                               ; preds = %66, %30
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %7, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %25

71:                                               ; preds = %25
  %72 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds [65536 x i64], [65536 x i64]* %11, i64 0, i64 %73
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %12, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds [65536 x i64], [65536 x i64]* %11, i64 0, i64 %78
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %12, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %12, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds [65536 x i64], [65536 x i64]* %11, i64 0, i64 0
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %86 = call i32 @ldns_dnssec_create_nsec_bitmap(i64* %83, i64 %84, i64 %85)
  %87 = call i32 @ldns_rr_push_rdf(i32* %82, i32 %86)
  %88 = load i32*, i32** %10, align 8
  ret i32* %88
}

declare dso_local i32* @ldns_rr_new(...) #1

declare dso_local i32 @ldns_rr_set_type(i32*, i64) #1

declare dso_local i32 @ldns_rr_set_owner(i32*, i32) #1

declare dso_local i32 @ldns_rdf_clone(i32*) #1

declare dso_local i32 @ldns_rr_push_rdf(i32*, i32) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i64 @ldns_rdf_compare(i32*, i32) #1

declare dso_local i32 @ldns_rr_owner(i32*) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i32 @ldns_dnssec_create_nsec_bitmap(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
