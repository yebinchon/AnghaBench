; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_mbrtocXX_iconv.h_mbrtoc32_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_mbrtocXX_iconv.h_mbrtoc32_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i8*, %struct.TYPE_6__, %struct._citrus_iconv }
%struct.TYPE_6__ = type { i8*, i64* }
%struct._citrus_iconv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32 }

@CODESET = common dso_local global i32 0, align 4
@UTF_XX_INTERNAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbrtocXX_l(i64* noalias %0, i8* noalias %1, i64 %2, i32* noalias %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct._citrus_iconv*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @FIX_LOCALE(i32 %23)
  %25 = load i32*, i32** %10, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.TYPE_8__* @XLOCALE_CTYPE(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32* %30, i32** %10, align 8
  br label %31

31:                                               ; preds = %27, %5
  %32 = load i32*, i32** %10, align 8
  %33 = bitcast i32* %32 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %12, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 5
  store %struct._citrus_iconv* %35, %struct._citrus_iconv** %13, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %73, label %43

43:                                               ; preds = %38, %31
  %44 = load i32, i32* @CODESET, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @nl_langinfo_l(i32 %44, i32 %45)
  %47 = load i32, i32* @UTF_XX_INTERNAL, align 4
  %48 = call i64 @_citrus_iconv_open(%struct._citrus_iconv** %13, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* @errno, align 4
  store i64 -1, i64* %6, align 8
  br label %242

54:                                               ; preds = %43
  %55 = load %struct._citrus_iconv*, %struct._citrus_iconv** %13, align 8
  %56 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct._citrus_iconv*, %struct._citrus_iconv** %13, align 8
  %60 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store i32 0, i32* %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %54
  store i64 0, i64* %6, align 8
  br label %242

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72, %38
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i64 -3, i64* %15, align 8
  br label %204

79:                                               ; preds = %73
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 8, %84
  %86 = icmp ugt i64 %80, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = sub i64 8, %91
  store i64 %92, i64* %9, align 8
  br label %93

93:                                               ; preds = %87, %79
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  %102 = load i8*, i8** %8, align 8
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @memcpy(i8* %101, i8* %102, i64 %103)
  store i64 0, i64* %14, align 8
  br label %105

105:                                              ; preds = %201, %93
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %17, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %9, align 8
  %114 = add i64 %112, %113
  store i64 %114, i64* %19, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %18, align 8
  %119 = load i64, i64* %14, align 8
  %120 = mul i64 %119, 8
  store i64 %120, i64* %20, align 8
  %121 = load i64, i64* %19, align 8
  %122 = icmp ule i64 %121, 8
  br i1 %122, label %123, label %126

123:                                              ; preds = %105
  %124 = load i64, i64* %20, align 8
  %125 = icmp ule i64 %124, 8
  br label %126

126:                                              ; preds = %123, %105
  %127 = phi i1 [ false, %105 ], [ %125, %123 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = load %struct._citrus_iconv*, %struct._citrus_iconv** %13, align 8
  %131 = call i32 @_citrus_iconv_convert(%struct._citrus_iconv* %130, i8** %17, i64* %19, i8** %18, i64* %20, i32 0, i64* %21)
  store i32 %131, i32* %22, align 4
  %132 = load i8*, i8** %18, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = ptrtoint i8* %132 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  %140 = udiv i64 %139, 8
  %141 = trunc i64 %140 to i32
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %177

148:                                              ; preds = %126
  %149 = load i8*, i8** %17, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  %153 = ptrtoint i8* %149 to i64
  %154 = ptrtoint i8* %152 to i64
  %155 = sub i64 %153, %154
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = icmp sgt i64 %155, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = load i8*, i8** %17, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 3
  %166 = load i8*, i8** %165, align 8
  %167 = ptrtoint i8* %163 to i64
  %168 = ptrtoint i8* %166 to i64
  %169 = sub i64 %167, %168
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = sub nsw i64 %169, %173
  store i64 %174, i64* %15, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  store i32 0, i32* %176, align 4
  br label %204

177:                                              ; preds = %126
  %178 = load i32, i32* %22, align 4
  %179 = load i32, i32* @E2BIG, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  br label %201

182:                                              ; preds = %177
  %183 = load i64, i64* %21, align 8
  %184 = icmp ugt i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  store i32 0, i32* %187, align 4
  %188 = load i32, i32* @EILSEQ, align 4
  store i32 %188, i32* @errno, align 4
  store i64 -1, i64* %6, align 8
  br label %242

189:                                              ; preds = %182
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 3
  %192 = load i8*, i8** %191, align 8
  %193 = load i8*, i8** %17, align 8
  %194 = load i64, i64* %19, align 8
  %195 = trunc i64 %194 to i32
  %196 = call i32 @memmove(i8* %192, i8* %193, i32 %195)
  %197 = load i64, i64* %19, align 8
  %198 = trunc i64 %197 to i32
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  store i64 -2, i64* %6, align 8
  br label %242

201:                                              ; preds = %181
  %202 = load i64, i64* %14, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %14, align 8
  br label %105

204:                                              ; preds = %148, %78
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = load i64*, i64** %207, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 0
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %16, align 8
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load i64*, i64** %213, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 0
  %216 = bitcast i64* %215 to i8*
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load i64*, i64** %219, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 1
  %222 = bitcast i64* %221 to i8*
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %224, align 8
  %227 = sext i32 %226 to i64
  %228 = mul i64 %227, 8
  %229 = trunc i64 %228 to i32
  %230 = call i32 @memmove(i8* %216, i8* %222, i32 %229)
  %231 = load i64*, i64** %7, align 8
  %232 = icmp ne i64* %231, null
  br i1 %232, label %233, label %236

233:                                              ; preds = %204
  %234 = load i64, i64* %16, align 8
  %235 = load i64*, i64** %7, align 8
  store i64 %234, i64* %235, align 8
  br label %236

236:                                              ; preds = %233, %204
  %237 = load i64, i64* %16, align 8
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  store i64 0, i64* %6, align 8
  br label %242

240:                                              ; preds = %236
  %241 = load i64, i64* %15, align 8
  store i64 %241, i64* %6, align 8
  br label %242

242:                                              ; preds = %240, %239, %189, %185, %71, %50
  %243 = load i64, i64* %6, align 8
  ret i64 %243
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local %struct.TYPE_8__* @XLOCALE_CTYPE(i32) #1

declare dso_local i64 @_citrus_iconv_open(%struct._citrus_iconv**, i32, i32) #1

declare dso_local i32 @nl_langinfo_l(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_citrus_iconv_convert(%struct._citrus_iconv*, i8**, i64*, i8**, i64*, i32, i64*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
