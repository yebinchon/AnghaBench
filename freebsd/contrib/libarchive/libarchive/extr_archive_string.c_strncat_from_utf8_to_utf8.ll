; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_strncat_from_utf8_to_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_strncat_from_utf8_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i64, i8*, i32 }
%struct.archive_string_conv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_string*, i8*, i64, %struct.archive_string_conv*)* @strncat_from_utf8_to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strncat_from_utf8_to_utf8(%struct.archive_string* %0, i8* %1, i64 %2, %struct.archive_string_conv* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_string*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.archive_string_conv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.archive_string* %0, %struct.archive_string** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.archive_string_conv* %3, %struct.archive_string_conv** %9, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %19 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %20 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %21 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %22, %23
  %25 = add i64 %24, 1
  %26 = call i32* @archive_string_ensure(%struct.archive_string* %19, i64 %25)
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %236

29:                                               ; preds = %4
  %30 = load i8*, i8** %7, align 8
  store i8* %30, i8** %10, align 8
  %31 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %32 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %35 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  store i8* %37, i8** %11, align 8
  %38 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %39 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %42 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  %46 = getelementptr inbounds i8, i8* %45, i64 -1
  store i8* %46, i8** %12, align 8
  br label %47

47:                                               ; preds = %215, %29
  %48 = load i8*, i8** %10, align 8
  store i8* %48, i8** %16, align 8
  br label %49

49:                                               ; preds = %54, %47
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @utf8_to_unicode(i32* %15, i8* %50, i64 %51)
  store i32 %52, i32* %13, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i32, i32* %13, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %10, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %8, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %8, align 8
  br label %49

63:                                               ; preds = %49
  %64 = load i8*, i8** %16, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ult i8* %64, %65
  br i1 %66, label %67, label %132

67:                                               ; preds = %63
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = getelementptr inbounds i8, i8* %68, i64 %73
  %75 = load i8*, i8** %12, align 8
  %76 = icmp ugt i8* %74, %75
  br i1 %76, label %77, label %115

77:                                               ; preds = %67
  %78 = load i8*, i8** %11, align 8
  %79 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %80 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = ptrtoint i8* %78 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %86 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %88 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %89 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %91, %92
  %94 = add i64 %93, 1
  %95 = call i32* @archive_string_ensure(%struct.archive_string* %87, i64 %94)
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %77
  store i32 -1, i32* %5, align 4
  br label %236

98:                                               ; preds = %77
  %99 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %100 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %103 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  store i8* %105, i8** %11, align 8
  %106 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %107 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %110 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %108, i64 %112
  %114 = getelementptr inbounds i8, i8* %113, i64 -1
  store i8* %114, i8** %12, align 8
  br label %115

115:                                              ; preds = %98, %67
  %116 = load i8*, i8** %11, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = load i8*, i8** %16, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = trunc i64 %122 to i32
  %124 = call i32 @memcpy(i8* %116, i8* %117, i32 %123)
  %125 = load i8*, i8** %10, align 8
  %126 = load i8*, i8** %16, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = load i8*, i8** %11, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 %129
  store i8* %131, i8** %11, align 8
  br label %132

132:                                              ; preds = %115, %63
  %133 = load i32, i32* %13, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %214

135:                                              ; preds = %132
  %136 = load i32, i32* %13, align 4
  %137 = icmp eq i32 %136, -3
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load i32, i32* %15, align 4
  %140 = call i64 @IS_SURROGATE_PAIR_LA(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i8*, i8** %10, align 8
  %144 = load i64, i64* %8, align 8
  %145 = call i32 @cesu8_to_unicode(i32* %15, i8* %143, i64 %144)
  store i32 %145, i32* %13, align 4
  br label %146

146:                                              ; preds = %142, %138, %135
  %147 = load i32, i32* %13, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  store i32 -1, i32* %14, align 4
  %150 = load i32, i32* %13, align 4
  %151 = mul nsw i32 %150, -1
  store i32 %151, i32* %13, align 4
  br label %152

152:                                              ; preds = %149, %146
  br label %153

153:                                              ; preds = %185, %152
  %154 = load i8*, i8** %11, align 8
  %155 = load i8*, i8** %12, align 8
  %156 = load i8*, i8** %11, align 8
  %157 = ptrtoint i8* %155 to i64
  %158 = ptrtoint i8* %156 to i64
  %159 = sub i64 %157, %158
  %160 = trunc i64 %159 to i32
  %161 = load i32, i32* %15, align 4
  %162 = call i64 @unicode_to_utf8(i8* %154, i32 %160, i32 %161)
  store i64 %162, i64* %17, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %202

164:                                              ; preds = %153
  %165 = load i8*, i8** %11, align 8
  %166 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %167 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = ptrtoint i8* %165 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %173 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  %174 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %175 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %176 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = load i64, i64* %8, align 8
  %180 = add i64 %178, %179
  %181 = add i64 %180, 1
  %182 = call i32* @archive_string_ensure(%struct.archive_string* %174, i64 %181)
  %183 = icmp eq i32* %182, null
  br i1 %183, label %184, label %185

184:                                              ; preds = %164
  store i32 -1, i32* %5, align 4
  br label %236

185:                                              ; preds = %164
  %186 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %187 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %190 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  store i8* %192, i8** %11, align 8
  %193 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %194 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %197 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %195, i64 %199
  %201 = getelementptr inbounds i8, i8* %200, i64 -1
  store i8* %201, i8** %12, align 8
  br label %153

202:                                              ; preds = %153
  %203 = load i64, i64* %17, align 8
  %204 = load i8*, i8** %11, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 %203
  store i8* %205, i8** %11, align 8
  %206 = load i32, i32* %13, align 4
  %207 = load i8*, i8** %10, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  store i8* %209, i8** %10, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = load i64, i64* %8, align 8
  %213 = sub i64 %212, %211
  store i64 %213, i64* %8, align 8
  br label %214

214:                                              ; preds = %202, %132
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %13, align 4
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %47, label %218

218:                                              ; preds = %215
  %219 = load i8*, i8** %11, align 8
  %220 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %221 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = ptrtoint i8* %219 to i64
  %224 = ptrtoint i8* %222 to i64
  %225 = sub i64 %223, %224
  %226 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %227 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %226, i32 0, i32 0
  store i64 %225, i64* %227, align 8
  %228 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %229 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %228, i32 0, i32 1
  %230 = load i8*, i8** %229, align 8
  %231 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %232 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds i8, i8* %230, i64 %233
  store i8 0, i8* %234, align 1
  %235 = load i32, i32* %14, align 4
  store i32 %235, i32* %5, align 4
  br label %236

236:                                              ; preds = %218, %184, %97, %28
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local i32* @archive_string_ensure(%struct.archive_string*, i64) #1

declare dso_local i32 @utf8_to_unicode(i32*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @IS_SURROGATE_PAIR_LA(i32) #1

declare dso_local i32 @cesu8_to_unicode(i32*, i8*, i64) #1

declare dso_local i64 @unicode_to_utf8(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
