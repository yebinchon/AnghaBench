; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff3.c_svn_diff__resolve_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff3.c_svn_diff__resolve_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64, %struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32, i8* }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_12__** }

@svn_diff__type_diff_common = common dso_local global i8* null, align 8
@svn_diff__type_conflict = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svn_diff__resolve_conflict(%struct.TYPE_11__* %0, %struct.TYPE_12__** %1, %struct.TYPE_12__** %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca %struct.TYPE_12__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [2 x %struct.TYPE_12__*], align 16
  %17 = alloca [2 x %struct.TYPE_12__*], align 16
  %18 = alloca [2 x i32*], align 16
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca %struct.TYPE_13__**, align 8
  %21 = alloca %struct.TYPE_11__**, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %11, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %12, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %14, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %15, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__** %19, %struct.TYPE_13__*** %20, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 5
  store %struct.TYPE_11__** %38, %struct.TYPE_11__*** %21, align 8
  %39 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %16, i64 0, i64 0
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %41, align 16
  %42 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %16, i64 0, i64 1
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %44, align 8
  br label %45

45:                                               ; preds = %52, %5
  %46 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %16, i64 0, i64 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 16
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %16, i64 0, i64 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 16
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %16, i64 0, i64 0
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %57, align 16
  br label %45

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %66, %58
  %60 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %16, i64 0, i64 1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %16, i64 0, i64 1
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %16, i64 0, i64 1
  store %struct.TYPE_12__* %70, %struct.TYPE_12__** %71, align 8
  br label %59

72:                                               ; preds = %59
  %73 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %16, i64 0, i64 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 16
  %75 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 0
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %75, align 16
  %76 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %16, i64 0, i64 1
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 1
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %78, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %15, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i64, i64* %14, align 8
  br label %86

84:                                               ; preds = %72
  %85 = load i64, i64* %15, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i64 [ %83, %82 ], [ %85, %84 ]
  store i64 %87, i64* %13, align 8
  br label %88

88:                                               ; preds = %103, %86
  %89 = load i64, i64* %13, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 0
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 16
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 1
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %95, %99
  br label %101

101:                                              ; preds = %91, %88
  %102 = phi i1 [ false, %88 ], [ %100, %91 ]
  br i1 %102, label %103, label %116

103:                                              ; preds = %101
  %104 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 16
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 0
  store %struct.TYPE_12__* %107, %struct.TYPE_12__** %108, align 16
  %109 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 1
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 1
  store %struct.TYPE_12__* %112, %struct.TYPE_12__** %113, align 8
  %114 = load i64, i64* %13, align 8
  %115 = add nsw i64 %114, -1
  store i64 %115, i64* %13, align 8
  br label %88

116:                                              ; preds = %101
  %117 = load i64, i64* %13, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %116
  %120 = load i64, i64* %14, align 8
  %121 = load i64, i64* %15, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %119
  %124 = load i8*, i8** @svn_diff__type_diff_common, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 8
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 5
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %128, align 8
  %129 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 0
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 16
  %131 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %131, align 8
  %132 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 1
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  store %struct.TYPE_12__* %133, %struct.TYPE_12__** %134, align 8
  br label %485

135:                                              ; preds = %119, %116
  %136 = load i8*, i8** @svn_diff__type_conflict, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 8
  store i8* %136, i8** %138, align 8
  %139 = load i32*, i32** %10, align 8
  %140 = call i32* @svn_pool_create(i32* %139)
  store i32* %140, i32** %22, align 8
  %141 = load i64, i64* %14, align 8
  %142 = load i64, i64* %15, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = load i64, i64* %14, align 8
  br label %148

146:                                              ; preds = %135
  %147 = load i64, i64* %15, align 8
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i64 [ %145, %144 ], [ %147, %146 ]
  %150 = load i64, i64* %13, align 8
  %151 = sub nsw i64 %149, %150
  store i64 %151, i64* %13, align 8
  %152 = load i64, i64* %13, align 8
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %154, label %177

154:                                              ; preds = %148
  %155 = load i32*, i32** %22, align 8
  %156 = call i8* @apr_palloc(i32* %155, i32 24)
  %157 = bitcast i8* %156 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %157, %struct.TYPE_13__** %19, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %159, align 8
  %160 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %16, i64 0, i64 0
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 16
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %164, i64 0
  store %struct.TYPE_12__* %161, %struct.TYPE_12__** %165, align 8
  %166 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %16, i64 0, i64 1
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %170, i64 1
  store %struct.TYPE_12__* %167, %struct.TYPE_12__** %171, align 8
  %172 = load i64, i64* %13, align 8
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  store %struct.TYPE_13__** %176, %struct.TYPE_13__*** %20, align 8
  br label %177

177:                                              ; preds = %154, %148
  %178 = load i64, i64* %13, align 8
  %179 = load i64, i64* %14, align 8
  %180 = sub nsw i64 %179, %178
  store i64 %180, i64* %14, align 8
  %181 = load i64, i64* %13, align 8
  %182 = load i64, i64* %15, align 8
  %183 = sub nsw i64 %182, %181
  store i64 %183, i64* %15, align 8
  %184 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %16, i64 0, i64 0
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 16
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  store i64 %187, i64* %11, align 8
  %188 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %16, i64 0, i64 1
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %12, align 8
  %192 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 0
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 16
  %194 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %16, i64 0, i64 0
  store %struct.TYPE_12__* %193, %struct.TYPE_12__** %194, align 16
  %195 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 1
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %195, align 8
  %197 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %16, i64 0, i64 1
  store %struct.TYPE_12__* %196, %struct.TYPE_12__** %197, align 8
  %198 = load i64, i64* %14, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %177
  %201 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 0
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 16
  %203 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %202, %struct.TYPE_12__** %203, align 8
  %204 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %204, align 16
  br label %227

205:                                              ; preds = %177
  br label %206

206:                                              ; preds = %210, %205
  %207 = load i64, i64* %14, align 8
  %208 = add nsw i64 %207, -1
  store i64 %208, i64* %14, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %206
  %211 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 0
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %211, align 16
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %213, align 8
  %215 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 0
  store %struct.TYPE_12__* %214, %struct.TYPE_12__** %215, align 16
  br label %206

216:                                              ; preds = %206
  %217 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 0
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %217, align 16
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %220, %struct.TYPE_12__** %221, align 8
  %222 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %16, i64 0, i64 0
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %222, align 16
  %224 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 0
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 16
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 2
  store %struct.TYPE_12__* %223, %struct.TYPE_12__** %226, align 8
  br label %227

227:                                              ; preds = %216, %200
  %228 = load i64, i64* %15, align 8
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %227
  %231 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 1
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %231, align 8
  %233 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  store %struct.TYPE_12__* %232, %struct.TYPE_12__** %233, align 8
  %234 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %234, align 8
  br label %257

235:                                              ; preds = %227
  br label %236

236:                                              ; preds = %240, %235
  %237 = load i64, i64* %15, align 8
  %238 = add nsw i64 %237, -1
  store i64 %238, i64* %15, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %236
  %241 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 1
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %243, align 8
  %245 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 1
  store %struct.TYPE_12__* %244, %struct.TYPE_12__** %245, align 8
  br label %236

246:                                              ; preds = %236
  %247 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 1
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %249, align 8
  %251 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  store %struct.TYPE_12__* %250, %struct.TYPE_12__** %251, align 8
  %252 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %16, i64 0, i64 1
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %252, align 8
  %254 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 1
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 2
  store %struct.TYPE_12__* %253, %struct.TYPE_12__** %256, align 8
  br label %257

257:                                              ; preds = %246, %230
  %258 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 0
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %258, align 16
  %260 = load i32, i32* %9, align 4
  %261 = load i32*, i32** %22, align 8
  %262 = call i32* @svn_diff__get_token_counts(%struct.TYPE_12__* %259, i32 %260, i32* %261)
  %263 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  store i32* %262, i32** %263, align 16
  %264 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 1
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %264, align 8
  %266 = load i32, i32* %9, align 4
  %267 = load i32*, i32** %22, align 8
  %268 = call i32* @svn_diff__get_token_counts(%struct.TYPE_12__* %265, i32 %266, i32* %267)
  %269 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 1
  store i32* %268, i32** %269, align 8
  %270 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 0
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %270, align 16
  %272 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %17, i64 0, i64 1
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %272, align 8
  %274 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %275 = load i32*, i32** %274, align 16
  %276 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 1
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %9, align 4
  %279 = load i32*, i32** %22, align 8
  %280 = call %struct.TYPE_13__* @svn_diff__lcs(%struct.TYPE_12__* %271, %struct.TYPE_12__* %273, i32* %275, i32* %277, i32 %278, i32 0, i32 0, i32* %279)
  %281 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  store %struct.TYPE_13__* %280, %struct.TYPE_13__** %281, align 8
  %282 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %285, i64 0
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = icmp eq i64 %289, 1
  br i1 %290, label %291, label %299

291:                                              ; preds = %257
  %292 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %292, align 8
  %294 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 2
  %297 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %297, i64 0
  store %struct.TYPE_12__* %293, %struct.TYPE_12__** %298, align 8
  br label %299

299:                                              ; preds = %291, %257
  %300 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 2
  %303 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %303, i64 1
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp eq i64 %307, 1
  br i1 %308, label %309, label %317

309:                                              ; preds = %299
  %310 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %310, align 8
  %312 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 2
  %315 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %315, i64 1
  store %struct.TYPE_12__* %311, %struct.TYPE_12__** %316, align 8
  br label %317

317:                                              ; preds = %309, %299
  br label %318

318:                                              ; preds = %317, %405
  %319 = load i64, i64* %11, align 8
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 2
  %322 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %322, i64 0
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = icmp slt i64 %319, %326
  br i1 %327, label %338, label %328

328:                                              ; preds = %318
  %329 = load i64, i64* %12, align 8
  %330 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 2
  %332 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %332, i64 1
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = icmp slt i64 %329, %336
  br i1 %337, label %338, label %399

338:                                              ; preds = %328, %318
  %339 = load i32*, i32** %10, align 8
  %340 = call i8* @apr_palloc(i32* %339, i32 64)
  %341 = bitcast i8* %340 to %struct.TYPE_11__*
  %342 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  store %struct.TYPE_11__* %341, %struct.TYPE_11__** %342, align 8
  %343 = load i8*, i8** @svn_diff__type_conflict, align 8
  %344 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 8
  store i8* %343, i8** %346, align 8
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 7
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 7
  store i32 %349, i32* %352, align 4
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 6
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 6
  store i32 %355, i32* %358, align 8
  %359 = load i64, i64* %11, align 8
  %360 = sub nsw i64 %359, 1
  %361 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %362 = load %struct.TYPE_11__*, %struct.TYPE_11__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %362, i32 0, i32 0
  store i64 %360, i64* %363, align 8
  %364 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %365 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i32 0, i32 2
  %366 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %366, i64 0
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* %11, align 8
  %372 = sub nsw i64 %370, %371
  %373 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 2
  store i64 %372, i64* %375, align 8
  %376 = load i64, i64* %12, align 8
  %377 = sub nsw i64 %376, 1
  %378 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i32 0, i32 1
  store i64 %377, i64* %380, align 8
  %381 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i32 0, i32 2
  %383 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %383, i64 1
  %385 = load %struct.TYPE_12__*, %struct.TYPE_12__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* %12, align 8
  %389 = sub nsw i64 %387, %388
  %390 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %391 = load %struct.TYPE_11__*, %struct.TYPE_11__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i32 0, i32 3
  store i64 %389, i64* %392, align 8
  %393 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %394 = load %struct.TYPE_11__*, %struct.TYPE_11__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 5
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %395, align 8
  %396 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %397 = load %struct.TYPE_11__*, %struct.TYPE_11__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i32 0, i32 4
  store %struct.TYPE_11__** %398, %struct.TYPE_11__*** %21, align 8
  br label %399

399:                                              ; preds = %338, %328
  %400 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %401 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = icmp eq i64 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %399
  br label %481

405:                                              ; preds = %399
  %406 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %407 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %406, i32 0, i32 2
  %408 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %408, i64 0
  %410 = load %struct.TYPE_12__*, %struct.TYPE_12__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  store i64 %412, i64* %11, align 8
  %413 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %414 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %413, i32 0, i32 2
  %415 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %415, i64 1
  %417 = load %struct.TYPE_12__*, %struct.TYPE_12__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  store i64 %419, i64* %12, align 8
  %420 = load i32*, i32** %10, align 8
  %421 = call i8* @apr_palloc(i32* %420, i32 64)
  %422 = bitcast i8* %421 to %struct.TYPE_11__*
  %423 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  store %struct.TYPE_11__* %422, %struct.TYPE_11__** %423, align 8
  %424 = load i8*, i8** @svn_diff__type_diff_common, align 8
  %425 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %426 = load %struct.TYPE_11__*, %struct.TYPE_11__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %426, i32 0, i32 8
  store i8* %424, i8** %427, align 8
  %428 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %429 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %428, i32 0, i32 7
  %430 = load i32, i32* %429, align 4
  %431 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %432 = load %struct.TYPE_11__*, %struct.TYPE_11__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %432, i32 0, i32 7
  store i32 %430, i32* %433, align 4
  %434 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %435 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %434, i32 0, i32 6
  %436 = load i32, i32* %435, align 8
  %437 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %438 = load %struct.TYPE_11__*, %struct.TYPE_11__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %438, i32 0, i32 6
  store i32 %436, i32* %439, align 8
  %440 = load i64, i64* %11, align 8
  %441 = sub nsw i64 %440, 1
  %442 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %443 = load %struct.TYPE_11__*, %struct.TYPE_11__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %443, i32 0, i32 0
  store i64 %441, i64* %444, align 8
  %445 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %446 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %449 = load %struct.TYPE_11__*, %struct.TYPE_11__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %449, i32 0, i32 2
  store i64 %447, i64* %450, align 8
  %451 = load i64, i64* %12, align 8
  %452 = sub nsw i64 %451, 1
  %453 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %454 = load %struct.TYPE_11__*, %struct.TYPE_11__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %454, i32 0, i32 1
  store i64 %452, i64* %455, align 8
  %456 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %457 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %460 = load %struct.TYPE_11__*, %struct.TYPE_11__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %460, i32 0, i32 3
  store i64 %458, i64* %461, align 8
  %462 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %463 = load %struct.TYPE_11__*, %struct.TYPE_11__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %463, i32 0, i32 5
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %464, align 8
  %465 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %466 = load %struct.TYPE_11__*, %struct.TYPE_11__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %466, i32 0, i32 4
  store %struct.TYPE_11__** %467, %struct.TYPE_11__*** %21, align 8
  %468 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %469 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %468, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = load i64, i64* %11, align 8
  %472 = add nsw i64 %471, %470
  store i64 %472, i64* %11, align 8
  %473 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %474 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %473, i32 0, i32 0
  %475 = load i64, i64* %474, align 8
  %476 = load i64, i64* %12, align 8
  %477 = add nsw i64 %476, %475
  store i64 %477, i64* %12, align 8
  %478 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %479 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %478, i32 0, i32 1
  %480 = load %struct.TYPE_13__*, %struct.TYPE_13__** %479, align 8
  store %struct.TYPE_13__* %480, %struct.TYPE_13__** %19, align 8
  br label %318

481:                                              ; preds = %404
  %482 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %482, align 8
  %483 = load i32*, i32** %22, align 8
  %484 = call i32 @svn_pool_destroy(i32* %483)
  br label %485

485:                                              ; preds = %481, %123
  ret void
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32* @svn_diff__get_token_counts(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_diff__lcs(%struct.TYPE_12__*, %struct.TYPE_12__*, i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
