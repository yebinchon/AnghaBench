; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_dnssec_chain_nsec3_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_dnssec_chain_nsec3_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_dnssec_chain_nsec3_list(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %8, i32* %7, align 4
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %101, %1
  %10 = load i64, i64* %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @ldns_rr_list_rr_count(i32* %11)
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %104

15:                                               ; preds = %9
  %16 = load i64, i64* %3, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @ldns_rr_list_rr_count(i32* %17)
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = icmp eq i64 %16, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %15
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @ldns_rr_list_rr(i32* %23, i64 0)
  %25 = call i32 @ldns_rr_owner(i32 %24)
  %26 = call i32* @ldns_dname_label(i32 %25, i32 0)
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i8* @ldns_rdf2str(i32* %27)
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 46
  br i1 %37, label %38, label %45

38:                                               ; preds = %22
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  store i8 0, i8* %44, align 1
  br label %45

45:                                               ; preds = %38, %22
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @ldns_str2rdf_b32_ext(i32** %6, i8* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32*, i32** %2, align 8
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @ldns_rr_list_rr(i32* %48, i64 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @ldns_rr_set_rdf(i32 %50, i32* %51, i32 4)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %45
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @ldns_rdf_deep_free(i32* %56)
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @LDNS_FREE(i8* %58)
  br label %100

60:                                               ; preds = %15
  %61 = load i32*, i32** %2, align 8
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 1
  %64 = call i32 @ldns_rr_list_rr(i32* %61, i64 %63)
  %65 = call i32 @ldns_rr_owner(i32 %64)
  %66 = call i32* @ldns_dname_label(i32 %65, i32 0)
  store i32* %66, i32** %5, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i8* @ldns_rdf2str(i32* %67)
  store i8* %68, i8** %4, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 46
  br i1 %77, label %78, label %85

78:                                               ; preds = %60
  %79 = load i8*, i8** %4, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  store i8 0, i8* %84, align 1
  br label %85

85:                                               ; preds = %78, %60
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @ldns_str2rdf_b32_ext(i32** %6, i8* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @ldns_rdf_deep_free(i32* %88)
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @LDNS_FREE(i8* %90)
  %92 = load i32*, i32** %2, align 8
  %93 = load i64, i64* %3, align 8
  %94 = call i32 @ldns_rr_list_rr(i32* %92, i64 %93)
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @ldns_rr_set_rdf(i32 %94, i32* %95, i32 4)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %85
  br label %100

100:                                              ; preds = %99, %55
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %3, align 8
  br label %9

104:                                              ; preds = %9
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_dname_label(i32, i32) #1

declare dso_local i32 @ldns_rr_owner(i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i8* @ldns_rdf2str(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ldns_str2rdf_b32_ext(i32**, i8*) #1

declare dso_local i32 @ldns_rr_set_rdf(i32, i32*, i32) #1

declare dso_local i32 @ldns_rdf_deep_free(i32*) #1

declare dso_local i32 @LDNS_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
