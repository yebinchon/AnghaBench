; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rdata.c_ldns_rdf_new_frm_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rdata.c_ldns_rdf_new_frm_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_ERR = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_rdf_new_frm_str(i32 %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %118 [
    i32 154, label %9
    i32 146, label %12
    i32 148, label %15
    i32 147, label %18
    i32 164, label %21
    i32 163, label %24
    i32 133, label %27
    i32 161, label %30
    i32 158, label %33
    i32 159, label %36
    i32 151, label %39
    i32 139, label %42
    i32 130, label %45
    i32 155, label %48
    i32 156, label %51
    i32 162, label %54
    i32 129, label %57
    i32 131, label %60
    i32 136, label %63
    i32 150, label %66
    i32 134, label %69
    i32 144, label %72
    i32 128, label %75
    i32 140, label %78
    i32 160, label %81
    i32 145, label %84
    i32 137, label %87
    i32 138, label %90
    i32 149, label %93
    i32 153, label %96
    i32 152, label %99
    i32 132, label %102
    i32 143, label %105
    i32 157, label %108
    i32 135, label %111
    i32 142, label %114
    i32 141, label %117
  ]

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @ldns_str2rdf_dname(i32** %6, i8* %10)
  store i64 %11, i64* %7, align 8
  br label %120

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @ldns_str2rdf_int8(i32** %6, i8* %13)
  store i64 %14, i64* %7, align 8
  br label %120

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @ldns_str2rdf_int16(i32** %6, i8* %16)
  store i64 %17, i64* %7, align 8
  br label %120

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @ldns_str2rdf_int32(i32** %6, i8* %19)
  store i64 %20, i64* %7, align 8
  br label %120

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @ldns_str2rdf_a(i32** %6, i8* %22)
  store i64 %23, i64* %7, align 8
  br label %120

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @ldns_str2rdf_aaaa(i32** %6, i8* %25)
  store i64 %26, i64* %7, align 8
  br label %120

27:                                               ; preds = %2
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @ldns_str2rdf_str(i32** %6, i8* %28)
  store i64 %29, i64* %7, align 8
  br label %120

30:                                               ; preds = %2
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @ldns_str2rdf_apl(i32** %6, i8* %31)
  store i64 %32, i64* %7, align 8
  br label %120

33:                                               ; preds = %2
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @ldns_str2rdf_b64(i32** %6, i8* %34)
  store i64 %35, i64* %7, align 8
  br label %120

36:                                               ; preds = %2
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @ldns_str2rdf_b32_ext(i32** %6, i8* %37)
  store i64 %38, i64* %7, align 8
  br label %120

39:                                               ; preds = %2
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @ldns_str2rdf_hex(i32** %6, i8* %40)
  store i64 %41, i64* %7, align 8
  br label %120

42:                                               ; preds = %2
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @ldns_str2rdf_nsec(i32** %6, i8* %43)
  store i64 %44, i64* %7, align 8
  br label %120

45:                                               ; preds = %2
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @ldns_str2rdf_type(i32** %6, i8* %46)
  store i64 %47, i64* %7, align 8
  br label %120

48:                                               ; preds = %2
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 @ldns_str2rdf_class(i32** %6, i8* %49)
  store i64 %50, i64* %7, align 8
  br label %120

51:                                               ; preds = %2
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @ldns_str2rdf_cert_alg(i32** %6, i8* %52)
  store i64 %53, i64* %7, align 8
  br label %120

54:                                               ; preds = %2
  %55 = load i8*, i8** %5, align 8
  %56 = call i64 @ldns_str2rdf_alg(i32** %6, i8* %55)
  store i64 %56, i64* %7, align 8
  br label %120

57:                                               ; preds = %2
  %58 = load i8*, i8** %5, align 8
  %59 = call i64 @ldns_str2rdf_unknown(i32** %6, i8* %58)
  store i64 %59, i64* %7, align 8
  br label %120

60:                                               ; preds = %2
  %61 = load i8*, i8** %5, align 8
  %62 = call i64 @ldns_str2rdf_time(i32** %6, i8* %61)
  store i64 %62, i64* %7, align 8
  br label %120

63:                                               ; preds = %2
  %64 = load i8*, i8** %5, align 8
  %65 = call i64 @ldns_str2rdf_period(i32** %6, i8* %64)
  store i64 %65, i64* %7, align 8
  br label %120

66:                                               ; preds = %2
  %67 = load i8*, i8** %5, align 8
  %68 = call i64 @ldns_str2rdf_hip(i32** %6, i8* %67)
  store i64 %68, i64* %7, align 8
  br label %120

69:                                               ; preds = %2
  %70 = load i8*, i8** %5, align 8
  %71 = call i64 @ldns_str2rdf_service(i32** %6, i8* %70)
  store i64 %71, i64* %7, align 8
  br label %120

72:                                               ; preds = %2
  %73 = load i8*, i8** %5, align 8
  %74 = call i64 @ldns_str2rdf_loc(i32** %6, i8* %73)
  store i64 %74, i64* %7, align 8
  br label %120

75:                                               ; preds = %2
  %76 = load i8*, i8** %5, align 8
  %77 = call i64 @ldns_str2rdf_wks(i32** %6, i8* %76)
  store i64 %77, i64* %7, align 8
  br label %120

78:                                               ; preds = %2
  %79 = load i8*, i8** %5, align 8
  %80 = call i64 @ldns_str2rdf_nsap(i32** %6, i8* %79)
  store i64 %80, i64* %7, align 8
  br label %120

81:                                               ; preds = %2
  %82 = load i8*, i8** %5, align 8
  %83 = call i64 @ldns_str2rdf_atma(i32** %6, i8* %82)
  store i64 %83, i64* %7, align 8
  br label %120

84:                                               ; preds = %2
  %85 = load i8*, i8** %5, align 8
  %86 = call i64 @ldns_str2rdf_ipseckey(i32** %6, i8* %85)
  store i64 %86, i64* %7, align 8
  br label %120

87:                                               ; preds = %2
  %88 = load i8*, i8** %5, align 8
  %89 = call i64 @ldns_str2rdf_nsec3_salt(i32** %6, i8* %88)
  store i64 %89, i64* %7, align 8
  br label %120

90:                                               ; preds = %2
  %91 = load i8*, i8** %5, align 8
  %92 = call i64 @ldns_str2rdf_b32_ext(i32** %6, i8* %91)
  store i64 %92, i64* %7, align 8
  br label %120

93:                                               ; preds = %2
  %94 = load i8*, i8** %5, align 8
  %95 = call i64 @ldns_str2rdf_ilnp64(i32** %6, i8* %94)
  store i64 %95, i64* %7, align 8
  br label %120

96:                                               ; preds = %2
  %97 = load i8*, i8** %5, align 8
  %98 = call i64 @ldns_str2rdf_eui48(i32** %6, i8* %97)
  store i64 %98, i64* %7, align 8
  br label %120

99:                                               ; preds = %2
  %100 = load i8*, i8** %5, align 8
  %101 = call i64 @ldns_str2rdf_eui64(i32** %6, i8* %100)
  store i64 %101, i64* %7, align 8
  br label %120

102:                                              ; preds = %2
  %103 = load i8*, i8** %5, align 8
  %104 = call i64 @ldns_str2rdf_tag(i32** %6, i8* %103)
  store i64 %104, i64* %7, align 8
  br label %120

105:                                              ; preds = %2
  %106 = load i8*, i8** %5, align 8
  %107 = call i64 @ldns_str2rdf_long_str(i32** %6, i8* %106)
  store i64 %107, i64* %7, align 8
  br label %120

108:                                              ; preds = %2
  %109 = load i8*, i8** %5, align 8
  %110 = call i64 @ldns_str2rdf_certificate_usage(i32** %6, i8* %109)
  store i64 %110, i64* %7, align 8
  br label %120

111:                                              ; preds = %2
  %112 = load i8*, i8** %5, align 8
  %113 = call i64 @ldns_str2rdf_selector(i32** %6, i8* %112)
  store i64 %113, i64* %7, align 8
  br label %120

114:                                              ; preds = %2
  %115 = load i8*, i8** %5, align 8
  %116 = call i64 @ldns_str2rdf_matching_type(i32** %6, i8* %115)
  store i64 %116, i64* %7, align 8
  br label %120

117:                                              ; preds = %2
  br label %118

118:                                              ; preds = %2, %117
  %119 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %119, i64* %7, align 8
  br label %120

120:                                              ; preds = %118, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9
  %121 = load i64, i64* @LDNS_STATUS_OK, align 8
  %122 = load i64, i64* %7, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @ldns_rdf_set_type(i32* %125, i32 %126)
  %128 = load i32*, i32** %6, align 8
  store i32* %128, i32** %3, align 8
  br label %136

129:                                              ; preds = %120
  %130 = load i32*, i32** %6, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @LDNS_FREE(i32* %133)
  br label %135

135:                                              ; preds = %132, %129
  store i32* null, i32** %3, align 8
  br label %136

136:                                              ; preds = %135, %124
  %137 = load i32*, i32** %3, align 8
  ret i32* %137
}

declare dso_local i64 @ldns_str2rdf_dname(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_int8(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_int16(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_int32(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_a(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_aaaa(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_str(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_apl(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_b64(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_b32_ext(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_hex(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_nsec(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_type(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_class(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_cert_alg(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_alg(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_unknown(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_time(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_period(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_hip(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_service(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_loc(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_wks(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_nsap(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_atma(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_ipseckey(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_nsec3_salt(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_ilnp64(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_eui48(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_eui64(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_tag(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_long_str(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_certificate_usage(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_selector(i32**, i8*) #1

declare dso_local i64 @ldns_str2rdf_matching_type(i32**, i8*) #1

declare dso_local i32 @ldns_rdf_set_type(i32*, i32) #1

declare dso_local i32 @LDNS_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
