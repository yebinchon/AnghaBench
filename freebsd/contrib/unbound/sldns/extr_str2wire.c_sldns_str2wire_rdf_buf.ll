; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_rdf_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_rdf_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_WIREPARSE_ERR_NOT_IMPL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_GENERAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_rdf_buf(i8* %0, i32* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %184 [
    i32 155, label %11
    i32 146, label %16
    i32 149, label %21
    i32 147, label %26
    i32 164, label %31
    i32 163, label %36
    i32 135, label %41
    i32 161, label %46
    i32 158, label %51
    i32 159, label %56
    i32 152, label %61
    i32 140, label %66
    i32 130, label %71
    i32 156, label %76
    i32 157, label %81
    i32 162, label %86
    i32 133, label %91
    i32 137, label %96
    i32 131, label %101
    i32 144, label %106
    i32 128, label %111
    i32 141, label %116
    i32 160, label %121
    i32 145, label %126
    i32 138, label %131
    i32 139, label %136
    i32 150, label %141
    i32 154, label %146
    i32 153, label %151
    i32 134, label %156
    i32 143, label %161
    i32 132, label %166
    i32 151, label %171
    i32 148, label %176
    i32 129, label %181
    i32 136, label %181
    i32 142, label %183
  ]

11:                                               ; preds = %4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i64*, i64** %8, align 8
  %15 = call i32 @sldns_str2wire_dname_buf(i8* %12, i32* %13, i64* %14)
  store i32 %15, i32* %5, align 4
  br label %187

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = call i32 @sldns_str2wire_int8_buf(i8* %17, i32* %18, i64* %19)
  store i32 %20, i32* %5, align 4
  br label %187

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = call i32 @sldns_str2wire_int16_buf(i8* %22, i32* %23, i64* %24)
  store i32 %25, i32* %5, align 4
  br label %187

26:                                               ; preds = %4
  %27 = load i8*, i8** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = call i32 @sldns_str2wire_int32_buf(i8* %27, i32* %28, i64* %29)
  store i32 %30, i32* %5, align 4
  br label %187

31:                                               ; preds = %4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i64*, i64** %8, align 8
  %35 = call i32 @sldns_str2wire_a_buf(i8* %32, i32* %33, i64* %34)
  store i32 %35, i32* %5, align 4
  br label %187

36:                                               ; preds = %4
  %37 = load i8*, i8** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = call i32 @sldns_str2wire_aaaa_buf(i8* %37, i32* %38, i64* %39)
  store i32 %40, i32* %5, align 4
  br label %187

41:                                               ; preds = %4
  %42 = load i8*, i8** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = call i32 @sldns_str2wire_str_buf(i8* %42, i32* %43, i64* %44)
  store i32 %45, i32* %5, align 4
  br label %187

46:                                               ; preds = %4
  %47 = load i8*, i8** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i64*, i64** %8, align 8
  %50 = call i32 @sldns_str2wire_apl_buf(i8* %47, i32* %48, i64* %49)
  store i32 %50, i32* %5, align 4
  br label %187

51:                                               ; preds = %4
  %52 = load i8*, i8** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i64*, i64** %8, align 8
  %55 = call i32 @sldns_str2wire_b64_buf(i8* %52, i32* %53, i64* %54)
  store i32 %55, i32* %5, align 4
  br label %187

56:                                               ; preds = %4
  %57 = load i8*, i8** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i64*, i64** %8, align 8
  %60 = call i32 @sldns_str2wire_b32_ext_buf(i8* %57, i32* %58, i64* %59)
  store i32 %60, i32* %5, align 4
  br label %187

61:                                               ; preds = %4
  %62 = load i8*, i8** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i64*, i64** %8, align 8
  %65 = call i32 @sldns_str2wire_hex_buf(i8* %62, i32* %63, i64* %64)
  store i32 %65, i32* %5, align 4
  br label %187

66:                                               ; preds = %4
  %67 = load i8*, i8** %6, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i64*, i64** %8, align 8
  %70 = call i32 @sldns_str2wire_nsec_buf(i8* %67, i32* %68, i64* %69)
  store i32 %70, i32* %5, align 4
  br label %187

71:                                               ; preds = %4
  %72 = load i8*, i8** %6, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i64*, i64** %8, align 8
  %75 = call i32 @sldns_str2wire_type_buf(i8* %72, i32* %73, i64* %74)
  store i32 %75, i32* %5, align 4
  br label %187

76:                                               ; preds = %4
  %77 = load i8*, i8** %6, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i64*, i64** %8, align 8
  %80 = call i32 @sldns_str2wire_class_buf(i8* %77, i32* %78, i64* %79)
  store i32 %80, i32* %5, align 4
  br label %187

81:                                               ; preds = %4
  %82 = load i8*, i8** %6, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = load i64*, i64** %8, align 8
  %85 = call i32 @sldns_str2wire_cert_alg_buf(i8* %82, i32* %83, i64* %84)
  store i32 %85, i32* %5, align 4
  br label %187

86:                                               ; preds = %4
  %87 = load i8*, i8** %6, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i64*, i64** %8, align 8
  %90 = call i32 @sldns_str2wire_alg_buf(i8* %87, i32* %88, i64* %89)
  store i32 %90, i32* %5, align 4
  br label %187

91:                                               ; preds = %4
  %92 = load i8*, i8** %6, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load i64*, i64** %8, align 8
  %95 = call i32 @sldns_str2wire_time_buf(i8* %92, i32* %93, i64* %94)
  store i32 %95, i32* %5, align 4
  br label %187

96:                                               ; preds = %4
  %97 = load i8*, i8** %6, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load i64*, i64** %8, align 8
  %100 = call i32 @sldns_str2wire_period_buf(i8* %97, i32* %98, i64* %99)
  store i32 %100, i32* %5, align 4
  br label %187

101:                                              ; preds = %4
  %102 = load i8*, i8** %6, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = load i64*, i64** %8, align 8
  %105 = call i32 @sldns_str2wire_tsigtime_buf(i8* %102, i32* %103, i64* %104)
  store i32 %105, i32* %5, align 4
  br label %187

106:                                              ; preds = %4
  %107 = load i8*, i8** %6, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = load i64*, i64** %8, align 8
  %110 = call i32 @sldns_str2wire_loc_buf(i8* %107, i32* %108, i64* %109)
  store i32 %110, i32* %5, align 4
  br label %187

111:                                              ; preds = %4
  %112 = load i8*, i8** %6, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = load i64*, i64** %8, align 8
  %115 = call i32 @sldns_str2wire_wks_buf(i8* %112, i32* %113, i64* %114)
  store i32 %115, i32* %5, align 4
  br label %187

116:                                              ; preds = %4
  %117 = load i8*, i8** %6, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = load i64*, i64** %8, align 8
  %120 = call i32 @sldns_str2wire_nsap_buf(i8* %117, i32* %118, i64* %119)
  store i32 %120, i32* %5, align 4
  br label %187

121:                                              ; preds = %4
  %122 = load i8*, i8** %6, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = load i64*, i64** %8, align 8
  %125 = call i32 @sldns_str2wire_atma_buf(i8* %122, i32* %123, i64* %124)
  store i32 %125, i32* %5, align 4
  br label %187

126:                                              ; preds = %4
  %127 = load i8*, i8** %6, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = load i64*, i64** %8, align 8
  %130 = call i32 @sldns_str2wire_ipseckey_buf(i8* %127, i32* %128, i64* %129)
  store i32 %130, i32* %5, align 4
  br label %187

131:                                              ; preds = %4
  %132 = load i8*, i8** %6, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = load i64*, i64** %8, align 8
  %135 = call i32 @sldns_str2wire_nsec3_salt_buf(i8* %132, i32* %133, i64* %134)
  store i32 %135, i32* %5, align 4
  br label %187

136:                                              ; preds = %4
  %137 = load i8*, i8** %6, align 8
  %138 = load i32*, i32** %7, align 8
  %139 = load i64*, i64** %8, align 8
  %140 = call i32 @sldns_str2wire_b32_ext_buf(i8* %137, i32* %138, i64* %139)
  store i32 %140, i32* %5, align 4
  br label %187

141:                                              ; preds = %4
  %142 = load i8*, i8** %6, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = load i64*, i64** %8, align 8
  %145 = call i32 @sldns_str2wire_ilnp64_buf(i8* %142, i32* %143, i64* %144)
  store i32 %145, i32* %5, align 4
  br label %187

146:                                              ; preds = %4
  %147 = load i8*, i8** %6, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = load i64*, i64** %8, align 8
  %150 = call i32 @sldns_str2wire_eui48_buf(i8* %147, i32* %148, i64* %149)
  store i32 %150, i32* %5, align 4
  br label %187

151:                                              ; preds = %4
  %152 = load i8*, i8** %6, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = load i64*, i64** %8, align 8
  %155 = call i32 @sldns_str2wire_eui64_buf(i8* %152, i32* %153, i64* %154)
  store i32 %155, i32* %5, align 4
  br label %187

156:                                              ; preds = %4
  %157 = load i8*, i8** %6, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = load i64*, i64** %8, align 8
  %160 = call i32 @sldns_str2wire_tag_buf(i8* %157, i32* %158, i64* %159)
  store i32 %160, i32* %5, align 4
  br label %187

161:                                              ; preds = %4
  %162 = load i8*, i8** %6, align 8
  %163 = load i32*, i32** %7, align 8
  %164 = load i64*, i64** %8, align 8
  %165 = call i32 @sldns_str2wire_long_str_buf(i8* %162, i32* %163, i64* %164)
  store i32 %165, i32* %5, align 4
  br label %187

166:                                              ; preds = %4
  %167 = load i8*, i8** %6, align 8
  %168 = load i32*, i32** %7, align 8
  %169 = load i64*, i64** %8, align 8
  %170 = call i32 @sldns_str2wire_tsigerror_buf(i8* %167, i32* %168, i64* %169)
  store i32 %170, i32* %5, align 4
  br label %187

171:                                              ; preds = %4
  %172 = load i8*, i8** %6, align 8
  %173 = load i32*, i32** %7, align 8
  %174 = load i64*, i64** %8, align 8
  %175 = call i32 @sldns_str2wire_hip_buf(i8* %172, i32* %173, i64* %174)
  store i32 %175, i32* %5, align 4
  br label %187

176:                                              ; preds = %4
  %177 = load i8*, i8** %6, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = load i64*, i64** %8, align 8
  %180 = call i32 @sldns_str2wire_int16_data_buf(i8* %177, i32* %178, i64* %179)
  store i32 %180, i32* %5, align 4
  br label %187

181:                                              ; preds = %4, %4
  %182 = load i32, i32* @LDNS_WIREPARSE_ERR_NOT_IMPL, align 4
  store i32 %182, i32* %5, align 4
  br label %187

183:                                              ; preds = %4
  br label %184

184:                                              ; preds = %4, %183
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* @LDNS_WIREPARSE_ERR_GENERAL, align 4
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %185, %181, %176, %171, %166, %161, %156, %151, %146, %141, %136, %131, %126, %121, %116, %111, %106, %101, %96, %91, %86, %81, %76, %71, %66, %61, %56, %51, %46, %41, %36, %31, %26, %21, %16, %11
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i32 @sldns_str2wire_dname_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_int8_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_int16_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_int32_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_a_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_aaaa_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_str_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_apl_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_b64_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_b32_ext_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_hex_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_nsec_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_type_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_class_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_cert_alg_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_alg_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_time_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_period_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_tsigtime_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_loc_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_wks_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_nsap_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_atma_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_ipseckey_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_nsec3_salt_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_ilnp64_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_eui48_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_eui64_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_tag_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_long_str_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_tsigerror_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_hip_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_int16_data_buf(i8*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
