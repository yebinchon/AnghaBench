; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_tsearch.c_tsearch.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_tsearch.c_tsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.path = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @tsearch(i8* %0, %struct.TYPE_5__** %1, i32 (i8*, i8*)* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca i32 (i8*, i8*)*, align 8
  %8 = alloca %struct.path, align 4
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %6, align 8
  store i32 (i8*, i8*)* %2, i32 (i8*, i8*)** %7, align 8
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %18 = icmp eq %struct.TYPE_5__** %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %254

20:                                               ; preds = %3
  %21 = call i32 @path_init(%struct.path* %8)
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__** %22, %struct.TYPE_5__*** %9, align 8
  br label %23

23:                                               ; preds = %63, %20
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %64

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__** %34, %struct.TYPE_5__*** %6, align 8
  %35 = call i32 @path_init(%struct.path* %8)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %7, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 %37(i8* %38, i8* %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = call i32 @path_taking_left(%struct.path* %8)
  %48 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store %struct.TYPE_5__** %50, %struct.TYPE_5__*** %9, align 8
  br label %63

51:                                               ; preds = %36
  %52 = load i32, i32* %15, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = call i32 @path_taking_right(%struct.path* %8)
  %56 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  store %struct.TYPE_5__** %58, %struct.TYPE_5__*** %9, align 8
  br label %62

59:                                               ; preds = %51
  %60 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %4, align 8
  br label %254

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %46
  br label %23

64:                                               ; preds = %23
  %65 = call %struct.TYPE_5__* @malloc(i32 32)
  %66 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %66, align 8
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %10, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %68 = icmp eq %struct.TYPE_5__* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %254

70:                                               ; preds = %64
  %71 = load i8*, i8** %5, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %75, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %11, align 8
  br label %82

82:                                               ; preds = %106, %70
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %84 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = icmp ne %struct.TYPE_5__* %83, %85
  br i1 %86, label %87, label %107

87:                                               ; preds = %82
  %88 = call i64 @path_took_left(%struct.path* %8)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %92, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  store %struct.TYPE_5__* %97, %struct.TYPE_5__** %11, align 8
  br label %106

98:                                               ; preds = %87
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  store %struct.TYPE_5__* %105, %struct.TYPE_5__** %11, align 8
  br label %106

106:                                              ; preds = %98, %90
  br label %82

107:                                              ; preds = %82
  %108 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  store %struct.TYPE_5__* %109, %struct.TYPE_5__** %12, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %112, 1
  br i1 %113, label %114, label %180

114:                                              ; preds = %107
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  store %struct.TYPE_5__* %117, %struct.TYPE_5__** %13, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %164

122:                                              ; preds = %114
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  store %struct.TYPE_5__* %125, %struct.TYPE_5__** %14, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  store %struct.TYPE_5__* %128, %struct.TYPE_5__** %130, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  store %struct.TYPE_5__* %131, %struct.TYPE_5__** %133, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  store %struct.TYPE_5__* %136, %struct.TYPE_5__** %138, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  store %struct.TYPE_5__* %139, %struct.TYPE_5__** %141, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %143 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %142, %struct.TYPE_5__** %143, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 -1, i32 0
  %150 = sext i32 %149 to i64
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp slt i64 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i32 1, i32 0
  %159 = sext i32 %158 to i64
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  store i64 0, i64* %163, align 8
  br label %179

164:                                              ; preds = %114
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 3
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 2
  store %struct.TYPE_5__* %167, %struct.TYPE_5__** %169, align 8
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 3
  store %struct.TYPE_5__* %170, %struct.TYPE_5__** %172, align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %174 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %173, %struct.TYPE_5__** %174, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  store i64 0, i64* %176, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  store i64 0, i64* %178, align 8
  br label %179

179:                                              ; preds = %164, %122
  br label %252

180:                                              ; preds = %107
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp slt i64 %183, -1
  br i1 %184, label %185, label %251

185:                                              ; preds = %180
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  store %struct.TYPE_5__* %188, %struct.TYPE_5__** %13, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp sgt i64 %191, 0
  br i1 %192, label %193, label %235

193:                                              ; preds = %185
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %195, align 8
  store %struct.TYPE_5__* %196, %struct.TYPE_5__** %16, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 3
  store %struct.TYPE_5__* %199, %struct.TYPE_5__** %201, align 8
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 2
  store %struct.TYPE_5__* %202, %struct.TYPE_5__** %204, align 8
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  store %struct.TYPE_5__* %207, %struct.TYPE_5__** %209, align 8
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 3
  store %struct.TYPE_5__* %210, %struct.TYPE_5__** %212, align 8
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %214 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %213, %struct.TYPE_5__** %214, align 8
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp slt i64 %217, 0
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i32 1, i32 0
  %221 = sext i32 %220 to i64
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  store i64 %221, i64* %223, align 8
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp sgt i64 %226, 0
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i32 -1, i32 0
  %230 = sext i32 %229 to i64
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  store i64 %230, i64* %232, align 8
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 0
  store i64 0, i64* %234, align 8
  br label %250

235:                                              ; preds = %185
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %237, align 8
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 3
  store %struct.TYPE_5__* %238, %struct.TYPE_5__** %240, align 8
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 2
  store %struct.TYPE_5__* %241, %struct.TYPE_5__** %243, align 8
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %245 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %244, %struct.TYPE_5__** %245, align 8
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  store i64 0, i64* %247, align 8
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  store i64 0, i64* %249, align 8
  br label %250

250:                                              ; preds = %235, %193
  br label %251

251:                                              ; preds = %250, %180
  br label %252

252:                                              ; preds = %251, %179
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %253, %struct.TYPE_5__** %4, align 8
  br label %254

254:                                              ; preds = %252, %69, %59, %19
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %255
}

declare dso_local i32 @path_init(%struct.path*) #1

declare dso_local i32 @path_taking_left(%struct.path*) #1

declare dso_local i32 @path_taking_right(%struct.path*) #1

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i64 @path_took_left(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
