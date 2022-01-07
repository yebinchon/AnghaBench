; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts.c_fts_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts.c_fts_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i32, i32, i64, i8*, i64, i64, %struct.TYPE_17__*, i8*, i64, i32, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i64, i8*, %struct.TYPE_17__*, i8*, %struct.TYPE_17__* }

@FTS_STOP = common dso_local global i32 0, align 4
@FTS_NOINSTR = common dso_local global i8* null, align 8
@FTS_AGAIN = common dso_local global i32 0, align 4
@FTS_FOLLOW = common dso_local global i32 0, align 4
@FTS_SL = common dso_local global i64 0, align 8
@FTS_SLNONE = common dso_local global i64 0, align 8
@FTS_D = common dso_local global i64 0, align 8
@FTS_NOCHDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@FTS_ERR = common dso_local global i8* null, align 8
@FTS_SYMFOLLOW = common dso_local global i32 0, align 4
@FTS_SKIP = common dso_local global i32 0, align 4
@FTS_XDEV = common dso_local global i32 0, align 4
@FTS_DP = common dso_local global i8* null, align 8
@FTS_NAMEONLY = common dso_local global i32 0, align 4
@FTS_DONTCHDIR = common dso_local global i32 0, align 4
@BREAD = common dso_local global i32 0, align 4
@FTS_ROOTLEVEL = common dso_local global i64 0, align 8
@FTS_ROOTPARENTLEVEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @fts_read(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %12 = icmp eq %struct.TYPE_17__* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @FTS_STOP, align 4
  %15 = call i64 @ISSET(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %1
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %454

18:                                               ; preds = %13
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %4, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load i8*, i8** @FTS_NOINSTR, align 8
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @FTS_AGAIN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %18
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = call i8* @fts_stat(%struct.TYPE_18__* %33, %struct.TYPE_17__* %34, i32 0, i32 -1)
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %2, align 8
  br label %454

40:                                               ; preds = %18
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @FTS_FOLLOW, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %97

44:                                               ; preds = %40
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FTS_SL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FTS_SLNONE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %97

56:                                               ; preds = %50, %44
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = call i8* @fts_stat(%struct.TYPE_18__* %57, %struct.TYPE_17__* %58, i32 1, i32 -1)
  %60 = ptrtoint i8* %59 to i64
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @FTS_D, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %95

68:                                               ; preds = %56
  %69 = load i32, i32* @FTS_NOCHDIR, align 4
  %70 = call i64 @ISSET(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %95, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @O_RDONLY, align 4
  %74 = load i32, i32* @O_CLOEXEC, align 4
  %75 = or i32 %73, %74
  %76 = call i8* @_open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %75, i32 0)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 9
  store i8* %76, i8** %78, align 8
  %79 = icmp ult i8* %76, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load i32, i32* @errno, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load i8*, i8** @FTS_ERR, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  br label %94

88:                                               ; preds = %72
  %89 = load i32, i32* @FTS_SYMFOLLOW, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %88, %80
  br label %95

95:                                               ; preds = %94, %68, %56
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %96, %struct.TYPE_17__** %2, align 8
  br label %454

97:                                               ; preds = %50, %40
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @FTS_D, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %230

103:                                              ; preds = %97
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @FTS_SKIP, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %119, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* @FTS_XDEV, align 4
  %109 = call i64 @ISSET(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %149

111:                                              ; preds = %107
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %119, label %149

119:                                              ; preds = %111, %103
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @FTS_SYMFOLLOW, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 9
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @_close(i8* %129)
  br label %131

131:                                              ; preds = %126, %119
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = icmp ne %struct.TYPE_17__* %134, null
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = call i32 @fts_lfree(%struct.TYPE_17__* %139)
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %142, align 8
  br label %143

143:                                              ; preds = %136, %131
  %144 = load i8*, i8** @FTS_DP, align 8
  %145 = ptrtoint i8* %144 to i64
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %148, %struct.TYPE_17__** %2, align 8
  br label %454

149:                                              ; preds = %111, %107
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 4
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %151, align 8
  %153 = icmp ne %struct.TYPE_17__* %152, null
  br i1 %153, label %154, label %167

154:                                              ; preds = %149
  %155 = load i32, i32* @FTS_NAMEONLY, align 4
  %156 = call i64 @ISSET(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %154
  %159 = load i32, i32* @FTS_NAMEONLY, align 4
  %160 = call i32 @CLR(i32 %159)
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %162, align 8
  %164 = call i32 @fts_lfree(%struct.TYPE_17__* %163)
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %166, align 8
  br label %167

167:                                              ; preds = %158, %154, %149
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 4
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %169, align 8
  %171 = icmp ne %struct.TYPE_17__* %170, null
  br i1 %171, label %172, label %209

172:                                              ; preds = %167
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 5
  %177 = load i8*, i8** %176, align 8
  %178 = call i64 @fts_safe_changedir(%struct.TYPE_18__* %173, %struct.TYPE_17__* %174, i32 -1, i8* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %208

180:                                              ; preds = %172
  %181 = load i32, i32* @errno, align 4
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* @FTS_DONTCHDIR, align 4
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 4
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %190, align 8
  store %struct.TYPE_17__* %191, %struct.TYPE_17__** %4, align 8
  br label %192

192:                                              ; preds = %203, %180
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %194 = icmp ne %struct.TYPE_17__* %193, null
  br i1 %194, label %195, label %207

195:                                              ; preds = %192
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 5
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 5
  store i8* %200, i8** %202, align 8
  br label %203

203:                                              ; preds = %195
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 12
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %205, align 8
  store %struct.TYPE_17__* %206, %struct.TYPE_17__** %4, align 8
  br label %192

207:                                              ; preds = %192
  br label %208

208:                                              ; preds = %207, %172
  br label %224

209:                                              ; preds = %167
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %211 = load i32, i32* @BREAD, align 4
  %212 = call %struct.TYPE_17__* @fts_build(%struct.TYPE_18__* %210, i32 %211)
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 4
  store %struct.TYPE_17__* %212, %struct.TYPE_17__** %214, align 8
  %215 = icmp eq %struct.TYPE_17__* %212, null
  br i1 %215, label %216, label %223

216:                                              ; preds = %209
  %217 = load i32, i32* @FTS_STOP, align 4
  %218 = call i64 @ISSET(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %454

221:                                              ; preds = %216
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %222, %struct.TYPE_17__** %2, align 8
  br label %454

223:                                              ; preds = %209
  br label %224

224:                                              ; preds = %223, %208
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 4
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %226, align 8
  store %struct.TYPE_17__* %227, %struct.TYPE_17__** %4, align 8
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %229, align 8
  br label %324

230:                                              ; preds = %97
  br label %231

231:                                              ; preds = %268, %230
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %232, %struct.TYPE_17__** %5, align 8
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 12
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %234, align 8
  store %struct.TYPE_17__* %235, %struct.TYPE_17__** %4, align 8
  %236 = icmp ne %struct.TYPE_17__* %235, null
  br i1 %236, label %237, label %348

237:                                              ; preds = %231
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 6
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @FTS_ROOTLEVEL, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %262

243:                                              ; preds = %237
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 3
  %247 = load i8*, i8** %246, align 8
  %248 = call i64 @FCHDIR(%struct.TYPE_18__* %244, i8* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %243
  %251 = load i32, i32* @FTS_STOP, align 4
  %252 = call i32 @SET(i32 %251)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %454

253:                                              ; preds = %243
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %255 = call i32 @free(%struct.TYPE_17__* %254)
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %258 = call i32 @fts_load(%struct.TYPE_18__* %256, %struct.TYPE_17__* %257)
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 2
  store %struct.TYPE_17__* %259, %struct.TYPE_17__** %261, align 8
  store %struct.TYPE_17__* %259, %struct.TYPE_17__** %2, align 8
  br label %454

262:                                              ; preds = %237
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @FTS_SKIP, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %262
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %270 = call i32 @free(%struct.TYPE_17__* %269)
  br label %231

271:                                              ; preds = %262
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @FTS_FOLLOW, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %321

277:                                              ; preds = %271
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %280 = call i8* @fts_stat(%struct.TYPE_18__* %278, %struct.TYPE_17__* %279, i32 1, i32 -1)
  %281 = ptrtoint i8* %280 to i64
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 1
  store i64 %281, i64* %283, align 8
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @FTS_D, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %316

289:                                              ; preds = %277
  %290 = load i32, i32* @FTS_NOCHDIR, align 4
  %291 = call i64 @ISSET(i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %316, label %293

293:                                              ; preds = %289
  %294 = load i32, i32* @O_RDONLY, align 4
  %295 = load i32, i32* @O_CLOEXEC, align 4
  %296 = or i32 %294, %295
  %297 = call i8* @_open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %296, i32 0)
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 9
  store i8* %297, i8** %299, align 8
  %300 = icmp ult i8* %297, null
  br i1 %300, label %301, label %309

301:                                              ; preds = %293
  %302 = load i32, i32* @errno, align 4
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 2
  store i32 %302, i32* %304, align 8
  %305 = load i8*, i8** @FTS_ERR, align 8
  %306 = ptrtoint i8* %305 to i64
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 1
  store i64 %306, i64* %308, align 8
  br label %315

309:                                              ; preds = %293
  %310 = load i32, i32* @FTS_SYMFOLLOW, align 4
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = or i32 %313, %310
  store i32 %314, i32* %312, align 4
  br label %315

315:                                              ; preds = %309, %301
  br label %316

316:                                              ; preds = %315, %289, %277
  %317 = load i8*, i8** @FTS_NOINSTR, align 8
  %318 = ptrtoint i8* %317 to i32
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 8
  br label %321

321:                                              ; preds = %316, %271
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %323 = call i32 @free(%struct.TYPE_17__* %322)
  br label %324

324:                                              ; preds = %321, %224
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 1
  %327 = load i8*, i8** %326, align 8
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 8
  %330 = load %struct.TYPE_17__*, %struct.TYPE_17__** %329, align 8
  %331 = call i32 @NAPPEND(%struct.TYPE_17__* %330)
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, i8* %327, i64 %332
  store i8* %333, i8** %7, align 8
  %334 = load i8*, i8** %7, align 8
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %7, align 8
  store i8 47, i8* %334, align 1
  %336 = load i8*, i8** %7, align 8
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 11
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 10
  %342 = load i64, i64* %341, align 8
  %343 = add nsw i64 %342, 1
  %344 = call i32 @memmove(i8* %336, i32 %339, i64 %343)
  %345 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %346 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %346, i32 0, i32 2
  store %struct.TYPE_17__* %345, %struct.TYPE_17__** %347, align 8
  store %struct.TYPE_17__* %345, %struct.TYPE_17__** %2, align 8
  br label %454

348:                                              ; preds = %231
  %349 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %349, i32 0, i32 8
  %351 = load %struct.TYPE_17__*, %struct.TYPE_17__** %350, align 8
  store %struct.TYPE_17__* %351, %struct.TYPE_17__** %4, align 8
  %352 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %352, i32 0, i32 6
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @FTS_ROOTPARENTLEVEL, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %364

357:                                              ; preds = %348
  %358 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %359 = call i32 @free(%struct.TYPE_17__* %358)
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %361 = call i32 @free(%struct.TYPE_17__* %360)
  store i32 0, i32* @errno, align 4
  %362 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %362, i32 0, i32 2
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %363, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %454

364:                                              ; preds = %348
  %365 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %365, i32 0, i32 1
  %367 = load i8*, i8** %366, align 8
  %368 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %368, i32 0, i32 7
  %370 = load i64, i64* %369, align 8
  %371 = getelementptr inbounds i8, i8* %367, i64 %370
  store i8 0, i8* %371, align 1
  %372 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %372, i32 0, i32 6
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @FTS_ROOTLEVEL, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %388

377:                                              ; preds = %364
  %378 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %379 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %379, i32 0, i32 3
  %381 = load i8*, i8** %380, align 8
  %382 = call i64 @FCHDIR(%struct.TYPE_18__* %378, i8* %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %377
  %385 = load i32, i32* @FTS_STOP, align 4
  %386 = call i32 @SET(i32 %385)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %454

387:                                              ; preds = %377
  br label %435

388:                                              ; preds = %364
  %389 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %389, i32 0, i32 3
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @FTS_SYMFOLLOW, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %416

395:                                              ; preds = %388
  %396 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %397 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %397, i32 0, i32 9
  %399 = load i8*, i8** %398, align 8
  %400 = call i64 @FCHDIR(%struct.TYPE_18__* %396, i8* %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %411

402:                                              ; preds = %395
  %403 = load i32, i32* @errno, align 4
  store i32 %403, i32* %8, align 4
  %404 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %404, i32 0, i32 9
  %406 = load i8*, i8** %405, align 8
  %407 = call i32 @_close(i8* %406)
  %408 = load i32, i32* %8, align 4
  store i32 %408, i32* @errno, align 4
  %409 = load i32, i32* @FTS_STOP, align 4
  %410 = call i32 @SET(i32 %409)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %454

411:                                              ; preds = %395
  %412 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %412, i32 0, i32 9
  %414 = load i8*, i8** %413, align 8
  %415 = call i32 @_close(i8* %414)
  br label %434

416:                                              ; preds = %388
  %417 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %418 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* @FTS_DONTCHDIR, align 4
  %421 = and i32 %419, %420
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %433, label %423

423:                                              ; preds = %416
  %424 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %425 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %425, i32 0, i32 8
  %427 = load %struct.TYPE_17__*, %struct.TYPE_17__** %426, align 8
  %428 = call i64 @fts_safe_changedir(%struct.TYPE_18__* %424, %struct.TYPE_17__* %427, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %423
  %431 = load i32, i32* @FTS_STOP, align 4
  %432 = call i32 @SET(i32 %431)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %454

433:                                              ; preds = %423, %416
  br label %434

434:                                              ; preds = %433, %411
  br label %435

435:                                              ; preds = %434, %387
  %436 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %437 = call i32 @free(%struct.TYPE_17__* %436)
  %438 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %439 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %444

442:                                              ; preds = %435
  %443 = load i8*, i8** @FTS_ERR, align 8
  br label %446

444:                                              ; preds = %435
  %445 = load i8*, i8** @FTS_DP, align 8
  br label %446

446:                                              ; preds = %444, %442
  %447 = phi i8* [ %443, %442 ], [ %445, %444 ]
  %448 = ptrtoint i8* %447 to i64
  %449 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %449, i32 0, i32 1
  store i64 %448, i64* %450, align 8
  %451 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %452 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %452, i32 0, i32 2
  store %struct.TYPE_17__* %451, %struct.TYPE_17__** %453, align 8
  store %struct.TYPE_17__* %451, %struct.TYPE_17__** %2, align 8
  br label %454

454:                                              ; preds = %446, %430, %402, %384, %357, %324, %253, %250, %221, %220, %143, %95, %32, %17
  %455 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  ret %struct.TYPE_17__* %455
}

declare dso_local i64 @ISSET(i32) #1

declare dso_local i8* @fts_stat(%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i8* @_open(i8*, i32, i32) #1

declare dso_local i32 @_close(i8*) #1

declare dso_local i32 @fts_lfree(%struct.TYPE_17__*) #1

declare dso_local i32 @CLR(i32) #1

declare dso_local i64 @fts_safe_changedir(%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i8*) #1

declare dso_local %struct.TYPE_17__* @fts_build(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @FCHDIR(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @SET(i32) #1

declare dso_local i32 @free(%struct.TYPE_17__*) #1

declare dso_local i32 @fts_load(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @NAPPEND(%struct.TYPE_17__*) #1

declare dso_local i32 @memmove(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
