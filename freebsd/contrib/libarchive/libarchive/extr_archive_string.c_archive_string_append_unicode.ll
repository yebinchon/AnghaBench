; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_string_append_unicode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_string_append_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i64, i8*, i32 }
%struct.archive_string_conv = type { i32 }

@SCONV_TO_UTF16BE = common dso_local global i32 0, align 4
@SCONV_TO_UTF16LE = common dso_local global i32 0, align 4
@SCONV_TO_UTF8 = common dso_local global i32 0, align 4
@SCONV_FROM_UTF16BE = common dso_local global i32 0, align 4
@SCONV_FROM_UTF16LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_string*, i8*, i64, %struct.archive_string_conv*)* @archive_string_append_unicode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_string_append_unicode(%struct.archive_string* %0, i8* %1, i64 %2, %struct.archive_string_conv* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_string*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.archive_string_conv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32 (i32*, i8*, i64)*, align 8
  %20 = alloca i64 (i8*, i64, i32)*, align 8
  store %struct.archive_string* %0, %struct.archive_string** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.archive_string_conv* %3, %struct.archive_string_conv** %9, align 8
  store i32 0, i32* %16, align 4
  %21 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %22 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SCONV_TO_UTF16BE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i64 (i8*, i64, i32)* @unicode_to_utf16be, i64 (i8*, i64, i32)** %20, align 8
  store i32 2, i32* %17, align 4
  br label %65

28:                                               ; preds = %4
  %29 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %30 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SCONV_TO_UTF16LE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i64 (i8*, i64, i32)* @unicode_to_utf16le, i64 (i8*, i64, i32)** %20, align 8
  store i32 2, i32* %17, align 4
  br label %64

36:                                               ; preds = %28
  %37 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %38 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SCONV_TO_UTF8, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i64 (i8*, i64, i32)* @unicode_to_utf8, i64 (i8*, i64, i32)** %20, align 8
  store i32 1, i32* %17, align 4
  br label %63

44:                                               ; preds = %36
  %45 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %46 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SCONV_FROM_UTF16BE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i64 (i8*, i64, i32)* @unicode_to_utf16be, i64 (i8*, i64, i32)** %20, align 8
  store i32 2, i32* %17, align 4
  br label %62

52:                                               ; preds = %44
  %53 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %54 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SCONV_FROM_UTF16LE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i64 (i8*, i64, i32)* @unicode_to_utf16le, i64 (i8*, i64, i32)** %20, align 8
  store i32 2, i32* %17, align 4
  br label %61

60:                                               ; preds = %52
  store i64 (i8*, i64, i32)* @unicode_to_utf8, i64 (i8*, i64, i32)** %20, align 8
  store i32 1, i32* %17, align 4
  br label %61

61:                                               ; preds = %60, %59
  br label %62

62:                                               ; preds = %61, %51
  br label %63

63:                                               ; preds = %62, %43
  br label %64

64:                                               ; preds = %63, %35
  br label %65

65:                                               ; preds = %64, %27
  %66 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %67 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SCONV_FROM_UTF16BE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 (i32*, i8*, i64)* @utf16be_to_unicode, i32 (i32*, i8*, i64)** %19, align 8
  store i32 1, i32* %18, align 4
  br label %84

73:                                               ; preds = %65
  %74 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %75 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SCONV_FROM_UTF16LE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 (i32*, i8*, i64)* @utf16le_to_unicode, i32 (i32*, i8*, i64)** %19, align 8
  store i32 1, i32* %18, align 4
  br label %83

81:                                               ; preds = %73
  store i32 (i32*, i8*, i64)* @cesu8_to_unicode, i32 (i32*, i8*, i64)** %19, align 8
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %18, align 4
  br label %83

83:                                               ; preds = %81, %80
  br label %84

84:                                               ; preds = %83, %72
  %85 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %86 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %87 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %89, %91
  %93 = add i64 %88, %92
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %93, %95
  %97 = call i32* @archive_string_ensure(%struct.archive_string* %85, i64 %96)
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %84
  store i32 -1, i32* %5, align 4
  br label %233

100:                                              ; preds = %84
  %101 = load i8*, i8** %7, align 8
  store i8* %101, i8** %10, align 8
  %102 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %103 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %106 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8* %108, i8** %11, align 8
  %109 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %110 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %113 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %111, i64 %115
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = sub i64 0, %118
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  store i8* %120, i8** %12, align 8
  br label %121

121:                                              ; preds = %199, %100
  %122 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %19, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = load i64, i64* %8, align 8
  %125 = call i32 %122(i32* %13, i8* %123, i64 %124)
  store i32 %125, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %203

127:                                              ; preds = %121
  %128 = load i32, i32* %15, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* %15, align 4
  %132 = mul nsw i32 %131, -1
  store i32 %132, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i32, i32* %15, align 4
  %135 = load i8*, i8** %10, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8* %137, i8** %10, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* %8, align 8
  %141 = sub i64 %140, %139
  store i64 %141, i64* %8, align 8
  br label %142

142:                                              ; preds = %179, %133
  %143 = load i64 (i8*, i64, i32)*, i64 (i8*, i64, i32)** %20, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = load i8*, i8** %12, align 8
  %146 = load i8*, i8** %11, align 8
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = load i32, i32* %13, align 4
  %151 = call i64 %143(i8* %144, i64 %149, i32 %150)
  store i64 %151, i64* %14, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %199

153:                                              ; preds = %142
  %154 = load i8*, i8** %11, align 8
  %155 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %156 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = ptrtoint i8* %154 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %162 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %164 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %165 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* %8, align 8
  %169 = load i32, i32* %18, align 4
  %170 = sext i32 %169 to i64
  %171 = mul i64 %168, %170
  %172 = add i64 %167, %171
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = add i64 %172, %174
  %176 = call i32* @archive_string_ensure(%struct.archive_string* %163, i64 %175)
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %153
  store i32 -1, i32* %5, align 4
  br label %233

179:                                              ; preds = %153
  %180 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %181 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %184 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  store i8* %186, i8** %11, align 8
  %187 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %188 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %191 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %189, i64 %193
  %195 = load i32, i32* %17, align 4
  %196 = sext i32 %195 to i64
  %197 = sub i64 0, %196
  %198 = getelementptr inbounds i8, i8* %194, i64 %197
  store i8* %198, i8** %12, align 8
  br label %142

199:                                              ; preds = %142
  %200 = load i64, i64* %14, align 8
  %201 = load i8*, i8** %11, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 %200
  store i8* %202, i8** %11, align 8
  br label %121

203:                                              ; preds = %121
  %204 = load i8*, i8** %11, align 8
  %205 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %206 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %205, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = ptrtoint i8* %204 to i64
  %209 = ptrtoint i8* %207 to i64
  %210 = sub i64 %208, %209
  %211 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %212 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %211, i32 0, i32 0
  store i64 %210, i64* %212, align 8
  %213 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %214 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %217 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds i8, i8* %215, i64 %218
  store i8 0, i8* %219, align 1
  %220 = load i32, i32* %17, align 4
  %221 = icmp eq i32 %220, 2
  br i1 %221, label %222, label %231

222:                                              ; preds = %203
  %223 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %224 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %223, i32 0, i32 1
  %225 = load i8*, i8** %224, align 8
  %226 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %227 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = add i64 %228, 1
  %230 = getelementptr inbounds i8, i8* %225, i64 %229
  store i8 0, i8* %230, align 1
  br label %231

231:                                              ; preds = %222, %203
  %232 = load i32, i32* %16, align 4
  store i32 %232, i32* %5, align 4
  br label %233

233:                                              ; preds = %231, %178, %99
  %234 = load i32, i32* %5, align 4
  ret i32 %234
}

declare dso_local i64 @unicode_to_utf16be(i8*, i64, i32) #1

declare dso_local i64 @unicode_to_utf16le(i8*, i64, i32) #1

declare dso_local i64 @unicode_to_utf8(i8*, i64, i32) #1

declare dso_local i32 @utf16be_to_unicode(i32*, i8*, i64) #1

declare dso_local i32 @utf16le_to_unicode(i32*, i8*, i64) #1

declare dso_local i32 @cesu8_to_unicode(i32*, i8*, i64) #1

declare dso_local i32* @archive_string_ensure(%struct.archive_string*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
