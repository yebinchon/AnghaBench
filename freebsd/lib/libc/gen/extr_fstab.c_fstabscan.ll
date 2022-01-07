; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fstab.c_fstabscan.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fstab.c_fstabscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@fstabscan.line = internal global [1024 x i8] zeroinitializer, align 16
@_fs_fp = common dso_local global i32 0, align 4
@LineNo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@_fs_fstab = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FSTAB_XX = common dso_local global i8* null, align 8
@FSTAB_SW = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"ufs\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@FSTAB_RW = common dso_local global i8* null, align 8
@FSTAB_RQ = common dso_local global i8* null, align 8
@FSTAB_RO = common dso_local global i8* null, align 8
@EFTYPE = common dso_local global i32 0, align 4
@MAXLINELENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fstabscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fstabscan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  br label %6

6:                                                ; preds = %241, %235, %81, %38, %21, %0
  %7 = load i32, i32* @_fs_fp, align 4
  %8 = call i8* @fgets(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @fstabscan.line, i64 0, i64 0), i32 1024, i32 %7)
  store i8* %8, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %244

11:                                               ; preds = %6
  %12 = load i32, i32* @LineNo, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @LineNo, align 4
  %14 = load i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @fstabscan.line, i64 0, i64 0), align 16
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 35
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @fstabscan.line, i64 0, i64 0), align 16
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %11
  br label %6

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strpbrk(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %60, label %26

26:                                               ; preds = %22
  %27 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 0), align 8
  %28 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 1), align 8
  %29 = call i32 (...) @fixfsfile()
  %30 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 2), align 8
  %31 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 2), align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %59

33:                                               ; preds = %26
  %34 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 2), align 8
  %35 = load i8*, i8** @FSTAB_XX, align 8
  %36 = call i64 @strcmp(i8* %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %6

39:                                               ; preds = %33
  %40 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 2), align 8
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 3), align 8
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 2), align 8
  %42 = load i8*, i8** @FSTAB_SW, align 8
  %43 = call i64 @strcmp(i8* %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  store i8* %46, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 4), align 8
  %47 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %47, i8** %2, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %39
  %50 = load i8*, i8** %2, align 8
  %51 = call i8* @atoi(i8* %50)
  store i8* %51, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 6), align 8
  %52 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %52, i8** %2, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %2, align 8
  %56 = call i8* @atoi(i8* %55)
  store i8* %56, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 5), align 8
  store i32 1, i32* %1, align 4
  br label %244

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %39
  br label %59

59:                                               ; preds = %58, %26
  br label %241

60:                                               ; preds = %22
  br label %61

61:                                               ; preds = %71, %60
  %62 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i8* %62, i8** %2, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i8*, i8** %2, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br label %69

69:                                               ; preds = %64, %61
  %70 = phi i1 [ false, %61 ], [ %68, %64 ]
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  br label %61

72:                                               ; preds = %69
  %73 = load i8*, i8** %2, align 8
  store i8* %73, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 0), align 8
  %74 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 0), align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 0), align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 35
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %72
  br label %6

82:                                               ; preds = %76
  %83 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 0), align 8
  %84 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 0), align 8
  %85 = call i64 @strunvis(i8* %83, i8* %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %241

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %99, %88
  %90 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i8* %90, i8** %2, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i8*, i8** %2, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br label %97

97:                                               ; preds = %92, %89
  %98 = phi i1 [ false, %89 ], [ %96, %92 ]
  br i1 %98, label %99, label %100

99:                                               ; preds = %97
  br label %89

100:                                              ; preds = %97
  %101 = load i8*, i8** %2, align 8
  store i8* %101, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 1), align 8
  %102 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 1), align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %241

105:                                              ; preds = %100
  %106 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 1), align 8
  %107 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 1), align 8
  %108 = call i64 @strunvis(i8* %106, i8* %107)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %241

111:                                              ; preds = %105
  %112 = call i32 (...) @fixfsfile()
  br label %113

113:                                              ; preds = %123, %111
  %114 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i8* %114, i8** %2, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i8*, i8** %2, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 0
  br label %121

121:                                              ; preds = %116, %113
  %122 = phi i1 [ false, %113 ], [ %120, %116 ]
  br i1 %122, label %123, label %124

123:                                              ; preds = %121
  br label %113

124:                                              ; preds = %121
  %125 = load i8*, i8** %2, align 8
  store i8* %125, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 4), align 8
  br label %126

126:                                              ; preds = %136, %124
  %127 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i8* %127, i8** %2, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i8*, i8** %2, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 0
  br label %134

134:                                              ; preds = %129, %126
  %135 = phi i1 [ false, %126 ], [ %133, %129 ]
  br i1 %135, label %136, label %137

136:                                              ; preds = %134
  br label %126

137:                                              ; preds = %134
  %138 = load i8*, i8** %2, align 8
  store i8* %138, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 3), align 8
  %139 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 3), align 8
  %140 = icmp eq i8* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  br label %241

142:                                              ; preds = %137
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 6), align 8
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 5), align 8
  br label %143

143:                                              ; preds = %153, %142
  %144 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i8* %144, i8** %2, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i8*, i8** %2, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 0
  br label %151

151:                                              ; preds = %146, %143
  %152 = phi i1 [ false, %143 ], [ %150, %146 ]
  br i1 %152, label %153, label %154

153:                                              ; preds = %151
  br label %143

154:                                              ; preds = %151
  %155 = load i8*, i8** %2, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %178

157:                                              ; preds = %154
  %158 = load i8*, i8** %2, align 8
  %159 = call i8* @atoi(i8* %158)
  store i8* %159, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 6), align 8
  br label %160

160:                                              ; preds = %170, %157
  %161 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i8* %161, i8** %2, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load i8*, i8** %2, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 0
  br label %168

168:                                              ; preds = %163, %160
  %169 = phi i1 [ false, %160 ], [ %167, %163 ]
  br i1 %169, label %170, label %171

170:                                              ; preds = %168
  br label %160

171:                                              ; preds = %168
  %172 = load i8*, i8** %2, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i8*, i8** %2, align 8
  %176 = call i8* @atoi(i8* %175)
  store i8* %176, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 5), align 8
  br label %177

177:                                              ; preds = %174, %171
  br label %178

178:                                              ; preds = %177, %154
  %179 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %180 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 3), align 8
  %181 = call i32 @strlcpy(i8* %179, i8* %180, i32 1024)
  %182 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  store i8* %182, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %183 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %183, i8** %2, align 8
  br label %184

184:                                              ; preds = %230, %178
  %185 = load i8*, i8** %2, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %232

187:                                              ; preds = %184
  %188 = load i8*, i8** %2, align 8
  %189 = call i32 @strlen(i8* %188)
  %190 = icmp ne i32 %189, 2
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  br label %230

192:                                              ; preds = %187
  %193 = load i8*, i8** %2, align 8
  %194 = load i8*, i8** @FSTAB_RW, align 8
  %195 = call i64 @strcmp(i8* %193, i8* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %192
  %198 = load i8*, i8** @FSTAB_RW, align 8
  store i8* %198, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 2), align 8
  br label %232

199:                                              ; preds = %192
  %200 = load i8*, i8** %2, align 8
  %201 = load i8*, i8** @FSTAB_RQ, align 8
  %202 = call i64 @strcmp(i8* %200, i8* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %199
  %205 = load i8*, i8** @FSTAB_RQ, align 8
  store i8* %205, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 2), align 8
  br label %232

206:                                              ; preds = %199
  %207 = load i8*, i8** %2, align 8
  %208 = load i8*, i8** @FSTAB_RO, align 8
  %209 = call i64 @strcmp(i8* %207, i8* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %206
  %212 = load i8*, i8** @FSTAB_RO, align 8
  store i8* %212, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 2), align 8
  br label %232

213:                                              ; preds = %206
  %214 = load i8*, i8** %2, align 8
  %215 = load i8*, i8** @FSTAB_SW, align 8
  %216 = call i64 @strcmp(i8* %214, i8* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %213
  %219 = load i8*, i8** @FSTAB_SW, align 8
  store i8* %219, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 2), align 8
  br label %232

220:                                              ; preds = %213
  %221 = load i8*, i8** %2, align 8
  %222 = load i8*, i8** @FSTAB_XX, align 8
  %223 = call i64 @strcmp(i8* %221, i8* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %220
  %226 = load i8*, i8** @FSTAB_XX, align 8
  store i8* %226, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_fs_fstab, i32 0, i32 2), align 8
  %227 = load i32, i32* %5, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %5, align 4
  br label %232

229:                                              ; preds = %220
  br label %230

230:                                              ; preds = %229, %191
  %231 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %231, i8** %2, align 8
  br label %184

232:                                              ; preds = %225, %218, %211, %204, %197, %184
  %233 = load i32, i32* %5, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  br label %6

236:                                              ; preds = %232
  %237 = load i8*, i8** %2, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  store i32 1, i32* %1, align 4
  br label %244

240:                                              ; preds = %236
  br label %241

241:                                              ; preds = %240, %141, %110, %104, %87, %59
  %242 = load i32, i32* @EFTYPE, align 4
  %243 = call i32 @error(i32 %242)
  br label %6

244:                                              ; preds = %239, %54, %10
  %245 = load i32, i32* %1, align 4
  ret i32 %245
}

declare dso_local i8* @fgets(i8*, i32, i32) #1

declare dso_local i32 @strpbrk(i8*, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @fixfsfile(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i64 @strunvis(i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
