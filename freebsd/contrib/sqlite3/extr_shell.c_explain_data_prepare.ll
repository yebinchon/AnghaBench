; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_explain_data_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_explain_data_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"Next\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Prev\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"VPrev\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"VNext\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"SorterNext\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Yield\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"SeekLT\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SeekGT\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"RowSetRead\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Rewind\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Goto\00", align 1
@__const.explain_data_prepare.azGoto = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@.str.11 = private unnamed_addr constant [8 x i8] c"explain\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@explain_data_prepare.explainCols = internal global [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)], align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"opcode\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"p1\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"p2\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"p3\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"p4\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"p5\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @explain_data_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @explain_data_prepare(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [6 x i8*], align 16
  %11 = alloca [6 x i8*], align 16
  %12 = alloca [2 x i8*], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %19 = bitcast [6 x i8*]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 48, i1 false)
  %20 = bitcast i8* %19 to [6 x i8*]*
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %21, align 16
  %22 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %22, align 8
  %23 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %23, align 16
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8** %24, align 8
  %25 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8** %25, align 16
  %26 = bitcast [6 x i8*]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 48, i1 false)
  %27 = bitcast i8* %26 to [6 x i8*]*
  %28 = getelementptr inbounds [6 x i8*], [6 x i8*]* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8** %28, align 16
  %29 = getelementptr inbounds [6 x i8*], [6 x i8*]* %27, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8** %29, align 8
  %30 = getelementptr inbounds [6 x i8*], [6 x i8*]* %27, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8** %30, align 16
  %31 = getelementptr inbounds [6 x i8*], [6 x i8*]* %27, i32 0, i32 3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8** %31, align 8
  %32 = getelementptr inbounds [6 x i8*], [6 x i8*]* %27, i32 0, i32 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8** %32, align 16
  %33 = bitcast [2 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %33, i8* align 16 bitcast ([2 x i8*]* @__const.explain_data_prepare.azGoto to i8*), i64 16, i1 false)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @sqlite3_column_count(i32* %34)
  %36 = icmp ne i32 %35, 8
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  br label %271

43:                                               ; preds = %2
  %44 = load i32*, i32** %4, align 8
  %45 = call i8* @sqlite3_sql(i32* %44)
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %271

49:                                               ; preds = %43
  %50 = load i8*, i8** %5, align 8
  store i8* %50, i8** %6, align 8
  br label %51

51:                                               ; preds = %79, %49
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 32
  br i1 %55, label %76, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 9
  br i1 %60, label %76, label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %6, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** %6, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 12
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %6, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 13
  br label %76

76:                                               ; preds = %71, %66, %61, %56, %51
  %77 = phi i1 [ true, %66 ], [ true, %61 ], [ true, %56 ], [ true, %51 ], [ %75, %71 ]
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %6, align 8
  br label %51

82:                                               ; preds = %76
  %83 = load i8*, i8** %6, align 8
  %84 = call i64 @sqlite3_strnicmp(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 7)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  br label %271

92:                                               ; preds = %82
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %261, %92
  %94 = load i64, i64* @SQLITE_ROW, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = call i64 @sqlite3_step(i32* %95)
  %97 = icmp eq i64 %94, %96
  br i1 %97, label %98, label %264

98:                                               ; preds = %93
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @sqlite3_column_int(i32* %99, i32 0)
  store i32 %100, i32* %14, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = call i64 @sqlite3_column_text(i32* %101, i32 1)
  %103 = inttoptr i64 %102 to i8*
  store i8* %103, i8** %15, align 8
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @sqlite3_column_int(i32* %104, i32 3)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %14, align 4
  %109 = sub nsw i32 %107, %108
  %110 = add nsw i32 %106, %109
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %178

114:                                              ; preds = %98
  %115 = load i32, i32* %9, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %145

117:                                              ; preds = %114
  store i32 0, i32* %18, align 4
  br label %118

118:                                              ; preds = %141, %117
  %119 = load i32, i32* %18, align 4
  %120 = call i32 @ArraySize(i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @explain_data_prepare.explainCols, i64 0, i64 0))
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %144

122:                                              ; preds = %118
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @sqlite3_column_name(i32* %123, i32 %124)
  %126 = load i32, i32* %18, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [8 x i8*], [8 x i8*]* @explain_data_prepare.explainCols, i64 0, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @strcmp(i32 %125, i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %122
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @sqlite3_reset(i32* %138)
  br label %271

140:                                              ; preds = %122
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %18, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %18, align 4
  br label %118

144:                                              ; preds = %118
  br label %145

145:                                              ; preds = %144, %114
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 100
  store i32 %147, i32* %8, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = mul i64 %152, 4
  %154 = trunc i64 %153 to i32
  %155 = call i64 @sqlite3_realloc64(i32* %150, i32 %154)
  %156 = inttoptr i64 %155 to i32*
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  store i32* %156, i32** %158, align 8
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %145
  %164 = call i32 (...) @shell_out_of_memory()
  br label %165

165:                                              ; preds = %163, %145
  %166 = load i32*, i32** %7, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = mul i64 %168, 4
  %170 = trunc i64 %169 to i32
  %171 = call i64 @sqlite3_realloc64(i32* %166, i32 %170)
  %172 = inttoptr i64 %171 to i32*
  store i32* %172, i32** %7, align 8
  %173 = load i32*, i32** %7, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %177

175:                                              ; preds = %165
  %176 = call i32 (...) @shell_out_of_memory()
  br label %177

177:                                              ; preds = %175, %165
  br label %178

178:                                              ; preds = %177, %98
  %179 = load i8*, i8** %15, align 8
  %180 = getelementptr inbounds [6 x i8*], [6 x i8*]* %11, i64 0, i64 0
  %181 = call i32 @str_in_array(i8* %179, i8** %180)
  %182 = load i32*, i32** %7, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %181, i32* %185, align 4
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  store i32 0, i32* %191, align 4
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, 1
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 8
  %196 = load i8*, i8** %15, align 8
  %197 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i64 0, i64 0
  %198 = call i32 @str_in_array(i8* %196, i8** %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %219

200:                                              ; preds = %178
  %201 = load i32, i32* %17, align 4
  store i32 %201, i32* %13, align 4
  br label %202

202:                                              ; preds = %215, %200
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %9, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %218

206:                                              ; preds = %202
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 2
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %206
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %13, align 4
  br label %202

218:                                              ; preds = %202
  br label %219

219:                                              ; preds = %218, %178
  %220 = load i8*, i8** %15, align 8
  %221 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %222 = call i32 @str_in_array(i8* %220, i8** %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %260

224:                                              ; preds = %219
  %225 = load i32, i32* %17, align 4
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %260

230:                                              ; preds = %224
  %231 = load i32*, i32** %7, align 8
  %232 = load i32, i32* %17, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %230
  %238 = load i32*, i32** %4, align 8
  %239 = call i32 @sqlite3_column_int(i32* %238, i32 2)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %260

241:                                              ; preds = %237, %230
  %242 = load i32, i32* %17, align 4
  store i32 %242, i32* %13, align 4
  br label %243

243:                                              ; preds = %256, %241
  %244 = load i32, i32* %13, align 4
  %245 = load i32, i32* %9, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %259

247:                                              ; preds = %243
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, 2
  store i32 %255, i32* %253, align 4
  br label %256

256:                                              ; preds = %247
  %257 = load i32, i32* %13, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %13, align 4
  br label %243

259:                                              ; preds = %243
  br label %260

260:                                              ; preds = %259, %237, %224, %219
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %9, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %9, align 4
  br label %93

264:                                              ; preds = %93
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 2
  store i64 0, i64* %266, align 8
  %267 = load i32*, i32** %7, align 8
  %268 = call i32 @sqlite3_free(i32* %267)
  %269 = load i32*, i32** %4, align 8
  %270 = call i32 @sqlite3_reset(i32* %269)
  br label %271

271:                                              ; preds = %264, %132, %86, %48, %37
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sqlite3_column_count(i32*) #2

declare dso_local i8* @sqlite3_sql(i32*) #2

declare dso_local i64 @sqlite3_strnicmp(i8*, i8*, i32) #2

declare dso_local i64 @sqlite3_step(i32*) #2

declare dso_local i32 @sqlite3_column_int(i32*, i32) #2

declare dso_local i64 @sqlite3_column_text(i32*, i32) #2

declare dso_local i32 @ArraySize(i8**) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @sqlite3_column_name(i32*, i32) #2

declare dso_local i32 @sqlite3_reset(i32*) #2

declare dso_local i64 @sqlite3_realloc64(i32*, i32) #2

declare dso_local i32 @shell_out_of_memory(...) #2

declare dso_local i32 @str_in_array(i8*, i8**) #2

declare dso_local i32 @sqlite3_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
