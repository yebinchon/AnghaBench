; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_verify_denial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_verify_denial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED = common dso_local global i64 0, align 8
@LDNS_STATUS_DNSSEC_NSEC_WILDCARD_NOT_COVERED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_dnssec_verify_denial(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %19 = call i32* @ldns_dname_new_frm_str(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @ldns_rr_owner(i32* %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32* @ldns_dname_left_chop(i32* %22)
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i64 @ldns_dname_cat(i32* %24, i32* %25)
  store i64 %26, i64* %13, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @ldns_rdf_deep_free(i32* %27)
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* @LDNS_STATUS_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i64, i64* %13, align 8
  store i64 %33, i64* %4, align 8
  br label %126

34:                                               ; preds = %3
  store i64 0, i64* %12, align 8
  br label %35

35:                                               ; preds = %103, %34
  %36 = load i64, i64* %12, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @ldns_rr_list_rr_count(i32* %37)
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %40, label %106

40:                                               ; preds = %35
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i32* @ldns_rr_list_rr(i32* %41, i64 %42)
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i32* @ldns_rr_owner(i32* %45)
  %47 = call i64 @ldns_dname_compare(i32* %44, i32* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %40
  %50 = load i32*, i32** %11, align 8
  %51 = call i32* @ldns_rr_owner(i32* %50)
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @ldns_rr_get_type(i32* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = call i32* @ldns_dnssec_get_rrsig_for_name_and_type(i32* %51, i32 %53, i32* %54)
  store i32* %55, i32** %14, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = load i32*, i32** %14, align 8
  %60 = call i32 @ldns_rr_rrsig_labels(i32* %59)
  %61 = call i64 @ldns_rdf2native_int8(i32 %60)
  %62 = load i32*, i32** %8, align 8
  %63 = call i64 @ldns_dname_label_count(i32* %62)
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 1, i32* %17, align 4
  br label %66

66:                                               ; preds = %65, %58, %49
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @ldns_nsec_get_bitmap(i32* %67)
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @ldns_rr_get_type(i32* %69)
  %71 = call i64 @ldns_nsec_bitmap_covers_type(i32 %68, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 1, i32* %16, align 4
  br label %74

74:                                               ; preds = %73, %66
  br label %75

75:                                               ; preds = %74, %40
  %76 = load i32*, i32** %11, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = call i64 @ldns_nsec_covers_name(i32* %76, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 1, i32* %15, align 4
  br label %81

81:                                               ; preds = %80, %75
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i32* @ldns_rr_owner(i32* %83)
  %85 = call i64 @ldns_dname_compare(i32* %82, i32* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @ldns_nsec_get_bitmap(i32* %88)
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @ldns_rr_get_type(i32* %90)
  %92 = call i64 @ldns_nsec_bitmap_covers_type(i32 %89, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store i32 1, i32* %18, align 4
  br label %95

95:                                               ; preds = %94, %87
  br label %96

96:                                               ; preds = %95, %81
  %97 = load i32*, i32** %11, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = call i64 @ldns_nsec_covers_name(i32* %97, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 1, i32* %17, align 4
  br label %102

102:                                              ; preds = %101, %96
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %12, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %12, align 8
  br label %35

106:                                              ; preds = %35
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @ldns_rdf_deep_free(i32* %107)
  %109 = load i32, i32* %16, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111, %106
  %115 = load i64, i64* @LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED, align 8
  store i64 %115, i64* %4, align 8
  br label %126

116:                                              ; preds = %111
  %117 = load i32, i32* %18, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %17, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %119, %116
  %123 = load i64, i64* @LDNS_STATUS_DNSSEC_NSEC_WILDCARD_NOT_COVERED, align 8
  store i64 %123, i64* %4, align 8
  br label %126

124:                                              ; preds = %119
  %125 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %125, i64* %4, align 8
  br label %126

126:                                              ; preds = %124, %122, %114, %32
  %127 = load i64, i64* %4, align 8
  ret i64 %127
}

declare dso_local i32* @ldns_dname_new_frm_str(i8*) #1

declare dso_local i32* @ldns_rr_owner(i32*) #1

declare dso_local i32* @ldns_dname_left_chop(i32*) #1

declare dso_local i64 @ldns_dname_cat(i32*, i32*) #1

declare dso_local i32 @ldns_rdf_deep_free(i32*) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i64 @ldns_dname_compare(i32*, i32*) #1

declare dso_local i32* @ldns_dnssec_get_rrsig_for_name_and_type(i32*, i32, i32*) #1

declare dso_local i32 @ldns_rr_get_type(i32*) #1

declare dso_local i64 @ldns_rdf2native_int8(i32) #1

declare dso_local i32 @ldns_rr_rrsig_labels(i32*) #1

declare dso_local i64 @ldns_dname_label_count(i32*) #1

declare dso_local i64 @ldns_nsec_bitmap_covers_type(i32, i32) #1

declare dso_local i32 @ldns_nsec_get_bitmap(i32*) #1

declare dso_local i64 @ldns_nsec_covers_name(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
