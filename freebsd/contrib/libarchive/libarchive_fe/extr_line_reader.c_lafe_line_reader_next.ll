; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive_fe/extr_line_reader.c_lafe_line_reader_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive_fe/extr_line_reader.c_lafe_line_reader_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lafe_line_reader = type { i8*, i8*, i8*, i8*, i32, i32*, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Line too long in %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Can't read %s\00", align 1
@stdin = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lafe_line_reader_next(%struct.lafe_line_reader* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lafe_line_reader*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.lafe_line_reader* %0, %struct.lafe_line_reader** %3, align 8
  br label %9

9:                                                ; preds = %259, %1
  br label %10

10:                                               ; preds = %42, %9
  %11 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %12 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %15 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ult i8* %13, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %10
  %19 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %20 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %23 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %23, align 8
  %26 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %27 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %29 = call i32 @lafe_line_reader_find_eol(%struct.lafe_line_reader* %28)
  %30 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %31 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %18
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %18
  %41 = load i8*, i8** %7, align 8
  store i8* %41, i8** %2, align 8
  br label %260

42:                                               ; preds = %34
  br label %10

43:                                               ; preds = %10
  %44 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %45 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %50 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %53 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp eq i8* %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i8* null, i8** %2, align 8
  br label %260

57:                                               ; preds = %48
  %58 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %59 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %7, align 8
  %61 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %62 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %65 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %7, align 8
  store i8* %66, i8** %2, align 8
  br label %260

67:                                               ; preds = %43
  %68 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %69 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %72 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ugt i8* %70, %73
  br i1 %74, label %75, label %126

75:                                               ; preds = %67
  %76 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %77 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %80 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %83 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %86 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = ptrtoint i8* %84 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32 @memmove(i8* %78, i8* %81, i32 %91)
  %93 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %94 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %97 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = ptrtoint i8* %95 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %103 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = sub i64 0, %101
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %103, align 8
  %107 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %108 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %111 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = ptrtoint i8* %109 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %117 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = sub i64 0, %115
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %117, align 8
  %121 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %122 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %125 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  br label %195

126:                                              ; preds = %67
  %127 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %128 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %129, 2
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %6, align 8
  %132 = load i64, i64* %6, align 8
  %133 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %134 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = icmp ule i64 %132, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %126
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %141 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @lafe_errc(i32 1, i32 %139, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %138, %126
  %145 = load i64, i64* %6, align 8
  %146 = trunc i64 %145 to i32
  %147 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %148 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %150 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %149, i32 0, i32 3
  %151 = load i8*, i8** %150, align 8
  %152 = load i64, i64* %6, align 8
  %153 = add i64 %152, 1
  %154 = call i8* @realloc(i8* %151, i64 %153)
  store i8* %154, i8** %8, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %163

157:                                              ; preds = %144
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %160 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @lafe_errc(i32 1, i32 %158, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %157, %144
  %164 = load i8*, i8** %8, align 8
  %165 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %166 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %169 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %168, i32 0, i32 3
  %170 = load i8*, i8** %169, align 8
  %171 = ptrtoint i8* %167 to i64
  %172 = ptrtoint i8* %170 to i64
  %173 = sub i64 %171, %172
  %174 = getelementptr inbounds i8, i8* %164, i64 %173
  %175 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %176 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  %177 = load i8*, i8** %8, align 8
  %178 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %179 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %182 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %181, i32 0, i32 3
  %183 = load i8*, i8** %182, align 8
  %184 = ptrtoint i8* %180 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = getelementptr inbounds i8, i8* %177, i64 %186
  %188 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %189 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %188, i32 0, i32 0
  store i8* %187, i8** %189, align 8
  %190 = load i8*, i8** %8, align 8
  %191 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %192 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %191, i32 0, i32 3
  store i8* %190, i8** %192, align 8
  %193 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %194 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %193, i32 0, i32 2
  store i8* %190, i8** %194, align 8
  br label %195

195:                                              ; preds = %163, %75
  %196 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %197 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %196, i32 0, i32 3
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %200 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %198, i64 %202
  %204 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %205 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = ptrtoint i8* %203 to i64
  %208 = ptrtoint i8* %206 to i64
  %209 = sub i64 %207, %208
  store i64 %209, i64* %4, align 8
  %210 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %211 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = load i64, i64* %4, align 8
  %214 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %215 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %214, i32 0, i32 5
  %216 = load i32*, i32** %215, align 8
  %217 = call i64 @fread(i8* %212, i32 1, i64 %213, i32* %216)
  store i64 %217, i64* %5, align 8
  %218 = load i64, i64* %5, align 8
  %219 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %220 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %219, i32 0, i32 1
  %221 = load i8*, i8** %220, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 %218
  store i8* %222, i8** %220, align 8
  %223 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %224 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %223, i32 0, i32 1
  %225 = load i8*, i8** %224, align 8
  store i8 0, i8* %225, align 1
  %226 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %227 = call i32 @lafe_line_reader_find_eol(%struct.lafe_line_reader* %226)
  %228 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %229 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %228, i32 0, i32 5
  %230 = load i32*, i32** %229, align 8
  %231 = call i64 @ferror(i32* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %195
  %234 = load i32, i32* @errno, align 4
  %235 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %236 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @lafe_errc(i32 1, i32 %234, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %237)
  br label %239

239:                                              ; preds = %233, %195
  %240 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %241 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %240, i32 0, i32 5
  %242 = load i32*, i32** %241, align 8
  %243 = call i64 @feof(i32* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %259

245:                                              ; preds = %239
  %246 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %247 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %246, i32 0, i32 5
  %248 = load i32*, i32** %247, align 8
  %249 = load i32*, i32** @stdin, align 8
  %250 = icmp ne i32* %248, %249
  br i1 %250, label %251, label %256

251:                                              ; preds = %245
  %252 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %253 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %252, i32 0, i32 5
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @fclose(i32* %254)
  br label %256

256:                                              ; preds = %251, %245
  %257 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %3, align 8
  %258 = getelementptr inbounds %struct.lafe_line_reader, %struct.lafe_line_reader* %257, i32 0, i32 5
  store i32* null, i32** %258, align 8
  br label %259

259:                                              ; preds = %256, %239
  br label %9

260:                                              ; preds = %57, %56, %40
  %261 = load i8*, i8** %2, align 8
  ret i8* %261
}

declare dso_local i32 @lafe_line_reader_find_eol(%struct.lafe_line_reader*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @lafe_errc(i32, i32, i8*, i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
