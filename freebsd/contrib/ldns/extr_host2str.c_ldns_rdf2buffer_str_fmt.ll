; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rdf2buffer_str_fmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rdf2buffer_str_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"(null) \00", align 1
@LDNS_STATUS_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @ldns_rdf2buffer_str_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_rdf2buffer_str_fmt(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %150

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @ldns_rdf_get_type(i32* %12)
  switch i32 %13, label %149 [
    i32 142, label %14
    i32 156, label %15
    i32 147, label %19
    i32 164, label %19
    i32 159, label %19
    i32 136, label %19
    i32 143, label %19
    i32 150, label %23
    i32 148, label %27
    i32 137, label %31
    i32 131, label %35
    i32 166, label %39
    i32 165, label %43
    i32 134, label %47
    i32 163, label %51
    i32 161, label %55
    i32 160, label %59
    i32 153, label %63
    i32 140, label %67
    i32 138, label %72
    i32 130, label %76
    i32 157, label %81
    i32 158, label %85
    i32 129, label %89
    i32 132, label %93
    i32 152, label %97
    i32 145, label %101
    i32 128, label %105
    i32 135, label %105
    i32 141, label %109
    i32 162, label %113
    i32 146, label %117
    i32 149, label %121
    i32 139, label %125
    i32 151, label %129
    i32 155, label %133
    i32 154, label %137
    i32 133, label %141
    i32 144, label %145
  ]

14:                                               ; preds = %11
  br label %149

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @ldns_rdf2buffer_str_dname(i32* %16, i32* %17)
  store i32 %18, i32* %7, align 4
  br label %149

19:                                               ; preds = %11, %11, %11, %11, %11
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @ldns_rdf2buffer_str_int8(i32* %20, i32* %21)
  store i32 %22, i32* %7, align 4
  br label %149

23:                                               ; preds = %11
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ldns_rdf2buffer_str_int16(i32* %24, i32* %25)
  store i32 %26, i32* %7, align 4
  br label %149

27:                                               ; preds = %11
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @ldns_rdf2buffer_str_int32(i32* %28, i32* %29)
  store i32 %30, i32* %7, align 4
  br label %149

31:                                               ; preds = %11
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @ldns_rdf2buffer_str_period(i32* %32, i32* %33)
  store i32 %34, i32* %7, align 4
  br label %149

35:                                               ; preds = %11
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @ldns_rdf2buffer_str_tsigtime(i32* %36, i32* %37)
  store i32 %38, i32* %7, align 4
  br label %149

39:                                               ; preds = %11
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @ldns_rdf2buffer_str_a(i32* %40, i32* %41)
  store i32 %42, i32* %7, align 4
  br label %149

43:                                               ; preds = %11
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @ldns_rdf2buffer_str_aaaa(i32* %44, i32* %45)
  store i32 %46, i32* %7, align 4
  br label %149

47:                                               ; preds = %11
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @ldns_rdf2buffer_str_str(i32* %48, i32* %49)
  store i32 %50, i32* %7, align 4
  br label %149

51:                                               ; preds = %11
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @ldns_rdf2buffer_str_apl(i32* %52, i32* %53)
  store i32 %54, i32* %7, align 4
  br label %149

55:                                               ; preds = %11
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @ldns_rdf2buffer_str_b32_ext(i32* %56, i32* %57)
  store i32 %58, i32* %7, align 4
  br label %149

59:                                               ; preds = %11
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @ldns_rdf2buffer_str_b64(i32* %60, i32* %61)
  store i32 %62, i32* %7, align 4
  br label %149

63:                                               ; preds = %11
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @ldns_rdf2buffer_str_hex(i32* %64, i32* %65)
  store i32 %66, i32* %7, align 4
  br label %149

67:                                               ; preds = %11
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @ldns_rdf2buffer_str_nsec_fmt(i32* %68, i32* %69, i32* %70)
  store i32 %71, i32* %7, align 4
  br label %149

72:                                               ; preds = %11
  %73 = load i32*, i32** %4, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @ldns_rdf2buffer_str_nsec3_salt(i32* %73, i32* %74)
  store i32 %75, i32* %7, align 4
  br label %149

76:                                               ; preds = %11
  %77 = load i32*, i32** %4, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @ldns_rdf2buffer_str_type_fmt(i32* %77, i32* %78, i32* %79)
  store i32 %80, i32* %7, align 4
  br label %149

81:                                               ; preds = %11
  %82 = load i32*, i32** %4, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @ldns_rdf2buffer_str_class(i32* %82, i32* %83)
  store i32 %84, i32* %7, align 4
  br label %149

85:                                               ; preds = %11
  %86 = load i32*, i32** %4, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @ldns_rdf2buffer_str_cert_alg(i32* %86, i32* %87)
  store i32 %88, i32* %7, align 4
  br label %149

89:                                               ; preds = %11
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @ldns_rdf2buffer_str_unknown(i32* %90, i32* %91)
  store i32 %92, i32* %7, align 4
  br label %149

93:                                               ; preds = %11
  %94 = load i32*, i32** %4, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @ldns_rdf2buffer_str_time(i32* %94, i32* %95)
  store i32 %96, i32* %7, align 4
  br label %149

97:                                               ; preds = %11
  %98 = load i32*, i32** %4, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @ldns_rdf2buffer_str_hip(i32* %98, i32* %99)
  store i32 %100, i32* %7, align 4
  br label %149

101:                                              ; preds = %11
  %102 = load i32*, i32** %4, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @ldns_rdf2buffer_str_loc(i32* %102, i32* %103)
  store i32 %104, i32* %7, align 4
  br label %149

105:                                              ; preds = %11, %11
  %106 = load i32*, i32** %4, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @ldns_rdf2buffer_str_wks(i32* %106, i32* %107)
  store i32 %108, i32* %7, align 4
  br label %149

109:                                              ; preds = %11
  %110 = load i32*, i32** %4, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @ldns_rdf2buffer_str_nsap(i32* %110, i32* %111)
  store i32 %112, i32* %7, align 4
  br label %149

113:                                              ; preds = %11
  %114 = load i32*, i32** %4, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @ldns_rdf2buffer_str_atma(i32* %114, i32* %115)
  store i32 %116, i32* %7, align 4
  br label %149

117:                                              ; preds = %11
  %118 = load i32*, i32** %4, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @ldns_rdf2buffer_str_ipseckey(i32* %118, i32* %119)
  store i32 %120, i32* %7, align 4
  br label %149

121:                                              ; preds = %11
  %122 = load i32*, i32** %4, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @ldns_rdf2buffer_str_int16_data(i32* %122, i32* %123)
  store i32 %124, i32* %7, align 4
  br label %149

125:                                              ; preds = %11
  %126 = load i32*, i32** %4, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @ldns_rdf2buffer_str_b32_ext(i32* %126, i32* %127)
  store i32 %128, i32* %7, align 4
  br label %149

129:                                              ; preds = %11
  %130 = load i32*, i32** %4, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @ldns_rdf2buffer_str_ilnp64(i32* %130, i32* %131)
  store i32 %132, i32* %7, align 4
  br label %149

133:                                              ; preds = %11
  %134 = load i32*, i32** %4, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 @ldns_rdf2buffer_str_eui48(i32* %134, i32* %135)
  store i32 %136, i32* %7, align 4
  br label %149

137:                                              ; preds = %11
  %138 = load i32*, i32** %4, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @ldns_rdf2buffer_str_eui64(i32* %138, i32* %139)
  store i32 %140, i32* %7, align 4
  br label %149

141:                                              ; preds = %11
  %142 = load i32*, i32** %4, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = call i32 @ldns_rdf2buffer_str_tag(i32* %142, i32* %143)
  store i32 %144, i32* %7, align 4
  br label %149

145:                                              ; preds = %11
  %146 = load i32*, i32** %4, align 8
  %147 = load i32*, i32** %6, align 8
  %148 = call i32 @ldns_rdf2buffer_str_long_str(i32* %146, i32* %147)
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %11, %145, %141, %137, %133, %129, %125, %121, %117, %113, %109, %105, %101, %97, %93, %89, %85, %81, %76, %72, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %14
  br label %154

150:                                              ; preds = %3
  %151 = load i32*, i32** %4, align 8
  %152 = call i32 @ldns_buffer_printf(i32* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %153 = load i32, i32* @LDNS_STATUS_ERR, align 4
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %150, %149
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local i32 @ldns_rdf_get_type(i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_dname(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_int8(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_int16(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_int32(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_period(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_tsigtime(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_a(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_aaaa(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_str(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_apl(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_b32_ext(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_b64(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_hex(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_nsec_fmt(i32*, i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_nsec3_salt(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_type_fmt(i32*, i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_class(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_cert_alg(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_unknown(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_time(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_hip(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_loc(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_wks(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_nsap(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_atma(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_ipseckey(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_int16_data(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_ilnp64(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_eui48(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_eui64(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_tag(i32*, i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_long_str(i32*, i32*) #1

declare dso_local i32 @ldns_buffer_printf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
