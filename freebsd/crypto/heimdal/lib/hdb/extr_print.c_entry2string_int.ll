; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_print.c_entry2string_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_print.c_entry2string_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__, i32* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c":%d:%d:\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"::%d:\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%u/\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%s:%d:%d \00", align 1
@HDB_extension = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"internal asn.1 encoder error\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, %struct.TYPE_15__*)* @entry2string_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @entry2string_int(i32 %0, i32* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 12
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @krb5_unparse_name(i32 %14, i32 %17, i8** %8)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* %10, align 8
  store i64 %22, i64* %4, align 8
  br label %371

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %24, i32* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %30, i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %143, %23
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 10
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %37, %41
  br i1 %42, label %43, label %146

43:                                               ; preds = %36
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 10
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %75

53:                                               ; preds = %43
  %54 = load i32, i32* %5, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 10
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 10
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %54, i32* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %73)
  br label %88

75:                                               ; preds = %43
  %76 = load i32, i32* %5, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 10
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %76, i32* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %75, %53
  %89 = load i32, i32* %5, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 10
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = call i32 @append_hex(i32 %89, i32* %90, i32* %98)
  %100 = load i32, i32* %5, align 4
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %100, i32* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 10
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = load i64, i64* %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = icmp ne %struct.TYPE_10__* %110, null
  br i1 %111, label %112, label %138

112:                                              ; preds = %88
  %113 = load i32, i32* %5, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 10
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %113, i32* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %5, align 4
  %127 = load i32*, i32** %6, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 10
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = load i64, i64* %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = call i32 @append_hex(i32 %126, i32* %127, i32* %136)
  br label %142

138:                                              ; preds = %88
  %139 = load i32, i32* %5, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %139, i32* %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %142

142:                                              ; preds = %138, %112
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %9, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %9, align 8
  br label %36

146:                                              ; preds = %36
  %147 = load i32, i32* %5, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %147, i32* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %150 = load i32, i32* %5, align 4
  %151 = load i32*, i32** %6, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 9
  %154 = call i32 @append_event(i32 %150, i32* %151, i32* %153)
  %155 = load i32, i32* %5, align 4
  %156 = load i32*, i32** %6, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 8
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @append_event(i32 %155, i32* %156, i32* %159)
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 7
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %174

165:                                              ; preds = %146
  %166 = load i32, i32* %5, align 4
  %167 = load i32*, i32** %6, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 7
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @time2str(i32 %171)
  %173 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %166, i32* %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %172)
  br label %178

174:                                              ; preds = %146
  %175 = load i32, i32* %5, align 4
  %176 = load i32*, i32** %6, align 8
  %177 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %175, i32* %176, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %178

178:                                              ; preds = %174, %165
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 6
  %181 = load i32*, i32** %180, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %192

183:                                              ; preds = %178
  %184 = load i32, i32* %5, align 4
  %185 = load i32*, i32** %6, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 6
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @time2str(i32 %189)
  %191 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %184, i32* %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %190)
  br label %196

192:                                              ; preds = %178
  %193 = load i32, i32* %5, align 4
  %194 = load i32*, i32** %6, align 8
  %195 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %193, i32* %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %196

196:                                              ; preds = %192, %183
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 5
  %199 = load i32*, i32** %198, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %210

201:                                              ; preds = %196
  %202 = load i32, i32* %5, align 4
  %203 = load i32*, i32** %6, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 5
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @time2str(i32 %207)
  %209 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %202, i32* %203, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %208)
  br label %214

210:                                              ; preds = %196
  %211 = load i32, i32* %5, align 4
  %212 = load i32*, i32** %6, align 8
  %213 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %211, i32* %212, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %214

214:                                              ; preds = %210, %201
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 4
  %217 = load i32*, i32** %216, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %227

219:                                              ; preds = %214
  %220 = load i32, i32* %5, align 4
  %221 = load i32*, i32** %6, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 4
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %224, align 4
  %226 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %220, i32* %221, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %225)
  br label %231

227:                                              ; preds = %214
  %228 = load i32, i32* %5, align 4
  %229 = load i32*, i32** %6, align 8
  %230 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %228, i32* %229, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %231

231:                                              ; preds = %227, %219
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %244

236:                                              ; preds = %231
  %237 = load i32, i32* %5, align 4
  %238 = load i32*, i32** %6, align 8
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %237, i32* %238, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %242)
  br label %248

244:                                              ; preds = %231
  %245 = load i32, i32* %5, align 4
  %246 = load i32*, i32** %6, align 8
  %247 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %245, i32* %246, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %248

248:                                              ; preds = %244, %236
  %249 = load i32, i32* %5, align 4
  %250 = load i32*, i32** %6, align 8
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @HDBFlags2int(i32 %253)
  %255 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %249, i32* %250, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %254)
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %257, align 8
  %259 = icmp ne %struct.TYPE_13__* %258, null
  br i1 %259, label %260, label %280

260:                                              ; preds = %248
  %261 = load i32, i32* %5, align 4
  %262 = load i32*, i32** %6, align 8
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @time2str(i32 %267)
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %261, i32* %262, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %268, i32 %273, i32 %278)
  br label %284

280:                                              ; preds = %248
  %281 = load i32, i32* %5, align 4
  %282 = load i32*, i32** %6, align 8
  %283 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %281, i32* %282, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %284

284:                                              ; preds = %280, %260
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %286, align 8
  %288 = icmp ne %struct.TYPE_14__* %287, null
  br i1 %288, label %289, label %366

289:                                              ; preds = %284
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = icmp ugt i64 %294, 0
  br i1 %295, label %296, label %366

296:                                              ; preds = %289
  store i64 0, i64* %9, align 8
  br label %297

297:                                              ; preds = %362, %296
  %298 = load i64, i64* %9, align 8
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = icmp ult i64 %298, %303
  br i1 %304, label %305, label %365

305:                                              ; preds = %297
  store i64 0, i64* %13, align 8
  %306 = load i32, i32* @HDB_extension, align 4
  %307 = load i8*, i8** %11, align 8
  %308 = load i64, i64* %12, align 8
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = load i64, i64* %9, align 8
  %315 = getelementptr inbounds i32, i32* %313, i64 %314
  %316 = load i64, i64* %10, align 8
  %317 = call i32 @ASN1_MALLOC_ENCODE(i32 %306, i8* %307, i64 %308, i32* %315, i64* %13, i64 %316)
  %318 = load i64, i64* %10, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %305
  %321 = load i32, i32* %5, align 4
  %322 = call i32 @krb5_clear_error_message(i32 %321)
  %323 = load i64, i64* %10, align 8
  store i64 %323, i64* %4, align 8
  br label %371

324:                                              ; preds = %305
  %325 = load i64, i64* %12, align 8
  %326 = load i64, i64* %13, align 8
  %327 = icmp ne i64 %325, %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %324
  %329 = load i32, i32* %5, align 4
  %330 = call i32 @krb5_abortx(i32 %329, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %331

331:                                              ; preds = %328, %324
  %332 = load i8*, i8** %11, align 8
  %333 = load i64, i64* %12, align 8
  %334 = call i64 @hex_encode(i8* %332, i64 %333, i8** %8)
  %335 = icmp slt i64 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %331
  %337 = load i8*, i8** %11, align 8
  %338 = call i32 @free(i8* %337)
  %339 = load i32, i32* %5, align 4
  %340 = load i64, i64* @ENOMEM, align 8
  %341 = call i32 @krb5_set_error_message(i32 %339, i64 %340, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %342 = load i64, i64* @ENOMEM, align 8
  store i64 %342, i64* %4, align 8
  br label %371

343:                                              ; preds = %331
  %344 = load i8*, i8** %11, align 8
  %345 = call i32 @free(i8* %344)
  %346 = load i32, i32* %5, align 4
  %347 = load i32*, i32** %6, align 8
  %348 = load i8*, i8** %8, align 8
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = sub i64 %353, 1
  %355 = load i64, i64* %9, align 8
  %356 = icmp ne i64 %354, %355
  %357 = zext i1 %356 to i64
  %358 = select i1 %356, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %359 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %346, i32* %347, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %348, i8* %358)
  %360 = load i8*, i8** %8, align 8
  %361 = call i32 @free(i8* %360)
  br label %362

362:                                              ; preds = %343
  %363 = load i64, i64* %9, align 8
  %364 = add i64 %363, 1
  store i64 %364, i64* %9, align 8
  br label %297

365:                                              ; preds = %297
  br label %370

366:                                              ; preds = %289, %284
  %367 = load i32, i32* %5, align 4
  %368 = load i32*, i32** %6, align 8
  %369 = call i32 (i32, i32*, i8*, ...) @append_string(i32 %367, i32* %368, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %370

370:                                              ; preds = %366, %365
  store i64 0, i64* %4, align 8
  br label %371

371:                                              ; preds = %370, %336, %320, %21
  %372 = load i64, i64* %4, align 8
  ret i64 %372
}

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @append_string(i32, i32*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @append_hex(i32, i32*, i32*) #1

declare dso_local i32 @append_event(i32, i32*, i32*) #1

declare dso_local i32 @time2str(i32) #1

declare dso_local i32 @HDBFlags2int(i32) #1

declare dso_local i32 @ASN1_MALLOC_ENCODE(i32, i8*, i64, i32*, i64*, i64) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i32 @krb5_abortx(i32, i8*) #1

declare dso_local i64 @hex_encode(i8*, i64, i8**) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
