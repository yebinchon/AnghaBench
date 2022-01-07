; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_sign.c_ldns_sign_public.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_sign.c_ldns_sign_public.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_PACKETLEN = common dso_local global i32 0, align 4
@LDNS_KEY_ZONE_KEY = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_sign_public(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @ldns_rr_list_rr_count(i32* %18)
  %20 = icmp slt i64 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %17, %2
  store i32* null, i32** %3, align 8
  br label %152

25:                                               ; preds = %21
  store i32* null, i32** %14, align 8
  %26 = call i32* (...) @ldns_rr_list_new()
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32* @ldns_rr_list_clone(i32* %27)
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32* null, i32** %3, align 8
  br label %152

32:                                               ; preds = %25
  store i64 0, i64* %12, align 8
  br label %33

33:                                               ; preds = %50, %32
  %34 = load i64, i64* %12, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @ldns_rr_list_rr_count(i32* %35)
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load i32*, i32** %7, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @ldns_rr_list_rr(i32* %39, i64 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @ldns_rr_list_rr(i32* %42, i64 0)
  %44 = call i32 @ldns_rr_ttl(i32 %43)
  %45 = call i32 @ldns_rr_set_ttl(i32 %41, i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @ldns_rr_list_rr(i32* %46, i64 %47)
  %49 = call i32 @ldns_rr2canonical(i32 %48)
  br label %50

50:                                               ; preds = %38
  %51 = load i64, i64* %12, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %12, align 8
  br label %33

53:                                               ; preds = %33
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @ldns_rr_list_sort(i32* %54)
  store i64 0, i64* %11, align 8
  br label %56

56:                                               ; preds = %145, %53
  %57 = load i64, i64* %11, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i64 @ldns_key_list_key_count(i32* %58)
  %60 = icmp ult i64 %57, %59
  br i1 %60, label %61, label %148

61:                                               ; preds = %56
  %62 = load i32*, i32** %5, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32* @ldns_key_list_key(i32* %62, i64 %63)
  %65 = call i32 @ldns_key_use(i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  br label %145

68:                                               ; preds = %61
  %69 = load i32, i32* @LDNS_MAX_PACKETLEN, align 4
  %70 = call i32* @ldns_buffer_new(i32 %69)
  store i32* %70, i32** %13, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %68
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @ldns_rr_list_free(i32* %74)
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @ldns_rr_list_free(i32* %76)
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @ldns_rdf_free(i32* %78)
  store i32* null, i32** %3, align 8
  br label %152

80:                                               ; preds = %68
  store i32* null, i32** %9, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i32* @ldns_key_list_key(i32* %81, i64 %82)
  store i32* %83, i32** %10, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @ldns_key_flags(i32* %84)
  %86 = load i32, i32* @LDNS_KEY_ZONE_KEY, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %142

89:                                               ; preds = %80
  %90 = load i32*, i32** %7, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i32* @ldns_create_empty_rrsig(i32* %90, i32* %91)
  store i32* %92, i32** %8, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = call i64 @ldns_rrsig2buffer_wire(i32* %93, i32* %94)
  %96 = load i64, i64* @LDNS_STATUS_OK, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %89
  %99 = load i32*, i32** %13, align 8
  %100 = call i32 @ldns_buffer_free(i32* %99)
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @ldns_rr_list_deep_free(i32* %101)
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @ldns_rr_free(i32* %103)
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @ldns_rr_list_deep_free(i32* %105)
  store i32* null, i32** %3, align 8
  br label %152

107:                                              ; preds = %89
  %108 = load i32*, i32** %13, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = call i64 @ldns_rr_list2buffer_wire(i32* %108, i32* %109)
  %111 = load i64, i64* @LDNS_STATUS_OK, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load i32*, i32** %13, align 8
  %115 = call i32 @ldns_buffer_free(i32* %114)
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @ldns_rr_list_deep_free(i32* %116)
  %118 = load i32*, i32** %8, align 8
  %119 = call i32 @ldns_rr_free(i32* %118)
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 @ldns_rr_list_deep_free(i32* %120)
  store i32* null, i32** %3, align 8
  br label %152

122:                                              ; preds = %107
  %123 = load i32*, i32** %13, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = call i32* @ldns_sign_public_buffer(i32* %123, i32* %124)
  store i32* %125, i32** %9, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %135, label %128

128:                                              ; preds = %122
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @ldns_rr_list_deep_free(i32* %129)
  %131 = load i32*, i32** %8, align 8
  %132 = call i32 @ldns_rr_free(i32* %131)
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @ldns_rr_list_deep_free(i32* %133)
  store i32* null, i32** %3, align 8
  br label %152

135:                                              ; preds = %122
  %136 = load i32*, i32** %8, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @ldns_rr_rrsig_set_sig(i32* %136, i32* %137)
  %139 = load i32*, i32** %6, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @ldns_rr_list_push_rr(i32* %139, i32* %140)
  br label %142

142:                                              ; preds = %135, %80
  %143 = load i32*, i32** %13, align 8
  %144 = call i32 @ldns_buffer_free(i32* %143)
  br label %145

145:                                              ; preds = %142, %67
  %146 = load i64, i64* %11, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %11, align 8
  br label %56

148:                                              ; preds = %56
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @ldns_rr_list_deep_free(i32* %149)
  %151 = load i32*, i32** %6, align 8
  store i32* %151, i32** %3, align 8
  br label %152

152:                                              ; preds = %148, %128, %113, %98, %73, %31, %24
  %153 = load i32*, i32** %3, align 8
  ret i32* %153
}

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_new(...) #1

declare dso_local i32* @ldns_rr_list_clone(i32*) #1

declare dso_local i32 @ldns_rr_set_ttl(i32, i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i32 @ldns_rr_ttl(i32) #1

declare dso_local i32 @ldns_rr2canonical(i32) #1

declare dso_local i32 @ldns_rr_list_sort(i32*) #1

declare dso_local i64 @ldns_key_list_key_count(i32*) #1

declare dso_local i32 @ldns_key_use(i32*) #1

declare dso_local i32* @ldns_key_list_key(i32*, i64) #1

declare dso_local i32* @ldns_buffer_new(i32) #1

declare dso_local i32 @ldns_rr_list_free(i32*) #1

declare dso_local i32 @ldns_rdf_free(i32*) #1

declare dso_local i32 @ldns_key_flags(i32*) #1

declare dso_local i32* @ldns_create_empty_rrsig(i32*, i32*) #1

declare dso_local i64 @ldns_rrsig2buffer_wire(i32*, i32*) #1

declare dso_local i32 @ldns_buffer_free(i32*) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

declare dso_local i32 @ldns_rr_free(i32*) #1

declare dso_local i64 @ldns_rr_list2buffer_wire(i32*, i32*) #1

declare dso_local i32* @ldns_sign_public_buffer(i32*, i32*) #1

declare dso_local i32 @ldns_rr_rrsig_set_sig(i32*, i32*) #1

declare dso_local i32 @ldns_rr_list_push_rr(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
