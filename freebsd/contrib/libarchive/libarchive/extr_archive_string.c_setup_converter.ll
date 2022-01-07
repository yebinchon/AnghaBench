; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_setup_converter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_setup_converter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string_conv = type { i32, i64, i64, i64 }

@SCONV_UTF8_LIBARCHIVE_2 = common dso_local global i32 0, align 4
@strncat_from_utf8_libarchive2 = common dso_local global i32 0, align 4
@SCONV_TO_UTF16 = common dso_local global i32 0, align 4
@SCONV_FROM_UTF8 = common dso_local global i32 0, align 4
@archive_string_append_unicode = common dso_local global i32 0, align 4
@SCONV_BEST_EFFORT = common dso_local global i32 0, align 4
@SCONV_TO_UTF16BE = common dso_local global i32 0, align 4
@best_effort_strncat_to_utf16be = common dso_local global i32 0, align 4
@best_effort_strncat_to_utf16le = common dso_local global i32 0, align 4
@SCONV_FROM_UTF16 = common dso_local global i32 0, align 4
@SCONV_NORMALIZATION_D = common dso_local global i32 0, align 4
@archive_string_normalize_D = common dso_local global i32 0, align 4
@SCONV_NORMALIZATION_C = common dso_local global i32 0, align 4
@archive_string_normalize_C = common dso_local global i32 0, align 4
@SCONV_TO_UTF8 = common dso_local global i32 0, align 4
@SCONV_FROM_UTF16BE = common dso_local global i32 0, align 4
@best_effort_strncat_from_utf16be = common dso_local global i32 0, align 4
@SCONV_FROM_UTF16LE = common dso_local global i32 0, align 4
@best_effort_strncat_from_utf16le = common dso_local global i32 0, align 4
@strncat_from_utf8_to_utf8 = common dso_local global i32 0, align 4
@best_effort_strncat_in_locale = common dso_local global i32 0, align 4
@SCONV_FROM_CHARSET = common dso_local global i32 0, align 4
@SCONV_WIN_CP = common dso_local global i32 0, align 4
@iconv_strncat_in_locale = common dso_local global i32 0, align 4
@strncat_in_codepage = common dso_local global i32 0, align 4
@win_strncat_from_utf16be = common dso_local global i32 0, align 4
@win_strncat_from_utf16le = common dso_local global i32 0, align 4
@win_strncat_to_utf16be = common dso_local global i32 0, align 4
@win_strncat_to_utf16le = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_string_conv*)* @setup_converter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_converter(%struct.archive_string_conv* %0) #0 {
  %2 = alloca %struct.archive_string_conv*, align 8
  store %struct.archive_string_conv* %0, %struct.archive_string_conv** %2, align 8
  %3 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %4 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %3, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %6 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @SCONV_UTF8_LIBARCHIVE_2, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %13 = load i32, i32* @strncat_from_utf8_libarchive2, align 4
  %14 = call i32 @add_converter(%struct.archive_string_conv* %12, i32 %13)
  br label %219

15:                                               ; preds = %1
  %16 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %17 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SCONV_TO_UTF16, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %15
  %23 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %24 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SCONV_FROM_UTF8, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %31 = load i32, i32* @archive_string_append_unicode, align 4
  %32 = call i32 @add_converter(%struct.archive_string_conv* %30, i32 %31)
  br label %219

33:                                               ; preds = %22
  %34 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %35 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SCONV_BEST_EFFORT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %33
  %41 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %42 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SCONV_TO_UTF16BE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %49 = load i32, i32* @best_effort_strncat_to_utf16be, align 4
  %50 = call i32 @add_converter(%struct.archive_string_conv* %48, i32 %49)
  br label %55

51:                                               ; preds = %40
  %52 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %53 = load i32, i32* @best_effort_strncat_to_utf16le, align 4
  %54 = call i32 @add_converter(%struct.archive_string_conv* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %47
  br label %59

56:                                               ; preds = %33
  %57 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %58 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %55
  br label %219

60:                                               ; preds = %15
  %61 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %62 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SCONV_FROM_UTF16, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %148

67:                                               ; preds = %60
  %68 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %69 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SCONV_NORMALIZATION_D, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %76 = load i32, i32* @archive_string_normalize_D, align 4
  %77 = call i32 @add_converter(%struct.archive_string_conv* %75, i32 %76)
  br label %90

78:                                               ; preds = %67
  %79 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %80 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SCONV_NORMALIZATION_C, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %87 = load i32, i32* @archive_string_normalize_C, align 4
  %88 = call i32 @add_converter(%struct.archive_string_conv* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %78
  br label %90

90:                                               ; preds = %89, %74
  %91 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %92 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @SCONV_TO_UTF8, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %90
  %98 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %99 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @SCONV_NORMALIZATION_D, align 4
  %102 = load i32, i32* @SCONV_NORMALIZATION_C, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %97
  %107 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %108 = load i32, i32* @archive_string_append_unicode, align 4
  %109 = call i32 @add_converter(%struct.archive_string_conv* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %97
  br label %219

111:                                              ; preds = %90
  %112 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %113 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SCONV_BEST_EFFORT, align 4
  %116 = load i32, i32* @SCONV_FROM_UTF16BE, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = load i32, i32* @SCONV_BEST_EFFORT, align 4
  %120 = load i32, i32* @SCONV_FROM_UTF16BE, align 4
  %121 = or i32 %119, %120
  %122 = icmp eq i32 %118, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %111
  %124 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %125 = load i32, i32* @best_effort_strncat_from_utf16be, align 4
  %126 = call i32 @add_converter(%struct.archive_string_conv* %124, i32 %125)
  br label %147

127:                                              ; preds = %111
  %128 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %129 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @SCONV_BEST_EFFORT, align 4
  %132 = load i32, i32* @SCONV_FROM_UTF16LE, align 4
  %133 = or i32 %131, %132
  %134 = and i32 %130, %133
  %135 = load i32, i32* @SCONV_BEST_EFFORT, align 4
  %136 = load i32, i32* @SCONV_FROM_UTF16LE, align 4
  %137 = or i32 %135, %136
  %138 = icmp eq i32 %134, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %127
  %140 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %141 = load i32, i32* @best_effort_strncat_from_utf16le, align 4
  %142 = call i32 @add_converter(%struct.archive_string_conv* %140, i32 %141)
  br label %146

143:                                              ; preds = %127
  %144 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %145 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %144, i32 0, i32 2
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %143, %139
  br label %147

147:                                              ; preds = %146, %123
  br label %219

148:                                              ; preds = %60
  %149 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %150 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @SCONV_FROM_UTF8, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %200

155:                                              ; preds = %148
  %156 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %157 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @SCONV_NORMALIZATION_D, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  %163 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %164 = load i32, i32* @archive_string_normalize_D, align 4
  %165 = call i32 @add_converter(%struct.archive_string_conv* %163, i32 %164)
  br label %178

166:                                              ; preds = %155
  %167 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %168 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @SCONV_NORMALIZATION_C, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %175 = load i32, i32* @archive_string_normalize_C, align 4
  %176 = call i32 @add_converter(%struct.archive_string_conv* %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %166
  br label %178

178:                                              ; preds = %177, %162
  %179 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %180 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @SCONV_TO_UTF8, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %199

185:                                              ; preds = %178
  %186 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %187 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @SCONV_NORMALIZATION_D, align 4
  %190 = load i32, i32* @SCONV_NORMALIZATION_C, align 4
  %191 = or i32 %189, %190
  %192 = and i32 %188, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %185
  %195 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %196 = load i32, i32* @strncat_from_utf8_to_utf8, align 4
  %197 = call i32 @add_converter(%struct.archive_string_conv* %195, i32 %196)
  br label %198

198:                                              ; preds = %194, %185
  br label %219

199:                                              ; preds = %178
  br label %200

200:                                              ; preds = %199, %148
  %201 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %202 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @SCONV_BEST_EFFORT, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %200
  %208 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %209 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207, %200
  %213 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %214 = load i32, i32* @best_effort_strncat_in_locale, align 4
  %215 = call i32 @add_converter(%struct.archive_string_conv* %213, i32 %214)
  br label %219

216:                                              ; preds = %207
  %217 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %218 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %217, i32 0, i32 2
  store i64 0, i64* %218, align 8
  br label %219

219:                                              ; preds = %11, %29, %59, %110, %147, %198, %216, %212
  ret void
}

declare dso_local i32 @add_converter(%struct.archive_string_conv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
