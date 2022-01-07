; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_manpath.c_manconf_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_manpath.c_manconf_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.manoutput = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"includes\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"man\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"paper\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"fragment\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"mdoc\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"noval\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"toc\00", align 1
@__const.manconf_output.toks = private unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)], align 16
@.str.11 = private unnamed_addr constant [4 x i8] c" =\09\00", align 1
@MANDOCERR_BADVAL_MISS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"-O %s=?\00", align 1
@MANDOCERR_BADVAL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"-O %s=%s\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@MANDOCERR_BADVAL_BAD = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [19 x i8] c"-O indent=%s is %s\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"-O width=%s is %s\00", align 1
@MANDOCERR_BADARG_BAD = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"-O %s\00", align 1
@MANDOCERR_BADVAL_DUPE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [28 x i8] c"-O %s=%s: already set to %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @manconf_output(%struct.manoutput* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.manoutput*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [11 x i8*], align 16
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.manoutput* %0, %struct.manoutput** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = bitcast [11 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([11 x i8*]* @__const.manconf_output.toks to i8*), i64 88, i1 false)
  store i64 11, i64* %9, align 8
  store i64 0, i64* %13, align 8
  br label %15

15:                                               ; preds = %59, %3
  %16 = load i64, i64* %13, align 8
  %17 = icmp ult i64 %16, 11
  br i1 %17, label %18, label %62

18:                                               ; preds = %15
  %19 = load i64, i64* %13, align 8
  %20 = getelementptr inbounds [11 x i8*], [11 x i8*]* %8, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strlen(i8* %21)
  store i64 %22, i64* %12, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %13, align 8
  %25 = getelementptr inbounds [11 x i8*], [11 x i8*]* %8, i64 0, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i64 @strncmp(i8* %23, i8* %26, i64 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %18
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = call i32* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8 signext %34)
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = load i64, i64* %12, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 61
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  br label %48

48:                                               ; preds = %45, %37
  br label %49

49:                                               ; preds = %54, %48
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @isspace(i8 zeroext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  br label %49

57:                                               ; preds = %49
  br label %62

58:                                               ; preds = %30, %18
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %13, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %13, align 8
  br label %15

62:                                               ; preds = %57, %15
  %63 = load i64, i64* %13, align 8
  %64 = icmp ult i64 %63, 6
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* @MANDOCERR_BADVAL_MISS, align 4
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds [11 x i8*], [11 x i8*]* %8, i64 0, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i32, i32, i32, i8*, i8*, ...) @mandoc_msg(i32 %71, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* %74)
  store i32 -1, i32* %4, align 4
  br label %249

76:                                               ; preds = %65, %62
  %77 = load i64, i64* %13, align 8
  %78 = icmp ugt i64 %77, 6
  br i1 %78, label %79, label %94

79:                                               ; preds = %76
  %80 = load i64, i64* %13, align 8
  %81 = icmp ult i64 %80, 11
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load i8*, i8** %6, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i32, i32* @MANDOCERR_BADVAL, align 4
  %89 = load i64, i64* %13, align 8
  %90 = getelementptr inbounds [11 x i8*], [11 x i8*]* %8, i64 0, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 (i32, i32, i32, i8*, i8*, ...) @mandoc_msg(i32 %88, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* %91, i8* %92)
  store i32 -1, i32* %4, align 4
  br label %249

94:                                               ; preds = %82, %79, %76
  %95 = load i64, i64* %13, align 8
  switch i64 %95, label %229 [
    i64 0, label %96
    i64 1, label %111
    i64 2, label %126
    i64 3, label %141
    i64 4, label %156
    i64 5, label %179
    i64 6, label %202
    i64 7, label %217
    i64 8, label %220
    i64 9, label %223
    i64 10, label %226
  ]

96:                                               ; preds = %94
  %97 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %98 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %103 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @mandoc_strdup(i8* %104)
  store i8* %105, i8** %11, align 8
  br label %233

106:                                              ; preds = %96
  %107 = load i8*, i8** %6, align 8
  %108 = call i8* @mandoc_strdup(i8* %107)
  %109 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %110 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  store i32 0, i32* %4, align 4
  br label %249

111:                                              ; preds = %94
  %112 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %113 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %118 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i8* @mandoc_strdup(i8* %119)
  store i8* %120, i8** %11, align 8
  br label %233

121:                                              ; preds = %111
  %122 = load i8*, i8** %6, align 8
  %123 = call i8* @mandoc_strdup(i8* %122)
  %124 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %125 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  store i32 0, i32* %4, align 4
  br label %249

126:                                              ; preds = %94
  %127 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %128 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %133 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = call i8* @mandoc_strdup(i8* %134)
  store i8* %135, i8** %11, align 8
  br label %233

136:                                              ; preds = %126
  %137 = load i8*, i8** %6, align 8
  %138 = call i8* @mandoc_strdup(i8* %137)
  %139 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %140 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  store i32 0, i32* %4, align 4
  br label %249

141:                                              ; preds = %94
  %142 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %143 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %148 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = call i8* @mandoc_strdup(i8* %149)
  store i8* %150, i8** %11, align 8
  br label %233

151:                                              ; preds = %141
  %152 = load i8*, i8** %6, align 8
  %153 = call i8* @mandoc_strdup(i8* %152)
  %154 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %155 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %154, i32 0, i32 3
  store i8* %153, i8** %155, align 8
  store i32 0, i32* %4, align 4
  br label %249

156:                                              ; preds = %94
  %157 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %158 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %157, i32 0, i32 10
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %163 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %162, i32 0, i32 10
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @mandoc_asprintf(i8** %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* %164)
  br label %233

166:                                              ; preds = %156
  %167 = load i8*, i8** %6, align 8
  %168 = call i8* @strtonum(i8* %167, i32 0, i32 1000, i8** %10)
  %169 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %170 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %169, i32 0, i32 10
  store i8* %168, i8** %170, align 8
  %171 = load i8*, i8** %10, align 8
  %172 = icmp eq i8* %171, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  store i32 0, i32* %4, align 4
  br label %249

174:                                              ; preds = %166
  %175 = load i32, i32* @MANDOCERR_BADVAL_BAD, align 4
  %176 = load i8*, i8** %6, align 8
  %177 = load i8*, i8** %10, align 8
  %178 = call i32 (i32, i32, i32, i8*, i8*, ...) @mandoc_msg(i32 %175, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8* %176, i8* %177)
  store i32 -1, i32* %4, align 4
  br label %249

179:                                              ; preds = %94
  %180 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %181 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %180, i32 0, i32 9
  %182 = load i8*, i8** %181, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %186 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %185, i32 0, i32 9
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @mandoc_asprintf(i8** %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* %187)
  br label %233

189:                                              ; preds = %179
  %190 = load i8*, i8** %6, align 8
  %191 = call i8* @strtonum(i8* %190, i32 1, i32 1000, i8** %10)
  %192 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %193 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %192, i32 0, i32 9
  store i8* %191, i8** %193, align 8
  %194 = load i8*, i8** %10, align 8
  %195 = icmp eq i8* %194, null
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  store i32 0, i32* %4, align 4
  br label %249

197:                                              ; preds = %189
  %198 = load i32, i32* @MANDOCERR_BADVAL_BAD, align 4
  %199 = load i8*, i8** %6, align 8
  %200 = load i8*, i8** %10, align 8
  %201 = call i32 (i32, i32, i32, i8*, i8*, ...) @mandoc_msg(i32 %198, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* %199, i8* %200)
  store i32 -1, i32* %4, align 4
  br label %249

202:                                              ; preds = %94
  %203 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %204 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %203, i32 0, i32 4
  %205 = load i8*, i8** %204, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %209 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %208, i32 0, i32 4
  %210 = load i8*, i8** %209, align 8
  %211 = call i8* @mandoc_strdup(i8* %210)
  store i8* %211, i8** %11, align 8
  br label %233

212:                                              ; preds = %202
  %213 = load i8*, i8** %6, align 8
  %214 = call i8* @mandoc_strdup(i8* %213)
  %215 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %216 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %215, i32 0, i32 4
  store i8* %214, i8** %216, align 8
  store i32 0, i32* %4, align 4
  br label %249

217:                                              ; preds = %94
  %218 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %219 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %218, i32 0, i32 5
  store i32 1, i32* %219, align 8
  store i32 0, i32* %4, align 4
  br label %249

220:                                              ; preds = %94
  %221 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %222 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %221, i32 0, i32 6
  store i32 1, i32* %222, align 4
  store i32 0, i32* %4, align 4
  br label %249

223:                                              ; preds = %94
  %224 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %225 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %224, i32 0, i32 7
  store i32 1, i32* %225, align 8
  store i32 0, i32* %4, align 4
  br label %249

226:                                              ; preds = %94
  %227 = load %struct.manoutput*, %struct.manoutput** %5, align 8
  %228 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %227, i32 0, i32 8
  store i32 1, i32* %228, align 4
  store i32 0, i32* %4, align 4
  br label %249

229:                                              ; preds = %94
  %230 = load i32, i32* @MANDOCERR_BADARG_BAD, align 4
  %231 = load i8*, i8** %6, align 8
  %232 = call i32 (i32, i32, i32, i8*, i8*, ...) @mandoc_msg(i32 %230, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %231)
  store i32 -1, i32* %4, align 4
  br label %249

233:                                              ; preds = %207, %184, %161, %146, %131, %116, %101
  %234 = load i32, i32* %7, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load i8*, i8** %11, align 8
  %238 = call i32 @free(i8* %237)
  store i32 0, i32* %4, align 4
  br label %249

239:                                              ; preds = %233
  %240 = load i32, i32* @MANDOCERR_BADVAL_DUPE, align 4
  %241 = load i64, i64* %13, align 8
  %242 = getelementptr inbounds [11 x i8*], [11 x i8*]* %8, i64 0, i64 %241
  %243 = load i8*, i8** %242, align 8
  %244 = load i8*, i8** %6, align 8
  %245 = load i8*, i8** %11, align 8
  %246 = call i32 (i32, i32, i32, i8*, i8*, ...) @mandoc_msg(i32 %240, i32 0, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i8* %243, i8* %244, i8* %245)
  %247 = load i8*, i8** %11, align 8
  %248 = call i32 @free(i8* %247)
  store i32 -1, i32* %4, align 4
  br label %249

249:                                              ; preds = %239, %236, %229, %226, %223, %220, %217, %212, %197, %196, %174, %173, %151, %136, %121, %106, %87, %70
  %250 = load i32, i32* %4, align 4
  ret i32 %250
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i64) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, i8*, ...) #2

declare dso_local i8* @mandoc_strdup(i8*) #2

declare dso_local i32 @mandoc_asprintf(i8**, i8*, i8*) #2

declare dso_local i8* @strtonum(i8*, i32, i32, i8**) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
