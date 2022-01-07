; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts-compat.c___fts_read_44bsd.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts-compat.c___fts_read_44bsd.c"
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
define dso_local %struct.TYPE_17__* @__fts_read_44bsd(%struct.TYPE_18__* %0) #0 {
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
  br label %448

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
  %35 = call i8* @fts_stat(%struct.TYPE_18__* %33, %struct.TYPE_17__* %34, i32 0)
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %2, align 8
  br label %448

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
  %59 = call i8* @fts_stat(%struct.TYPE_18__* %57, %struct.TYPE_17__* %58, i32 1)
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
  br label %448

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
  br label %448

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
  br label %448

221:                                              ; preds = %216
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %222, %struct.TYPE_17__** %2, align 8
  br label %448

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
  br label %320

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
  br i1 %236, label %237, label %344

237:                                              ; preds = %231
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %239 = call i32 @free(%struct.TYPE_17__* %238)
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 6
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @FTS_ROOTLEVEL, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %262

245:                                              ; preds = %237
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 3
  %249 = load i8*, i8** %248, align 8
  %250 = call i64 @FCHDIR(%struct.TYPE_18__* %246, i8* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %245
  %253 = load i32, i32* @FTS_STOP, align 4
  %254 = call i32 @SET(i32 %253)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %448

255:                                              ; preds = %245
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %258 = call i32 @fts_load(%struct.TYPE_18__* %256, %struct.TYPE_17__* %257)
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 2
  store %struct.TYPE_17__* %259, %struct.TYPE_17__** %261, align 8
  store %struct.TYPE_17__* %259, %struct.TYPE_17__** %2, align 8
  br label %448

262:                                              ; preds = %237
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @FTS_SKIP, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %262
  br label %231

269:                                              ; preds = %262
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @FTS_FOLLOW, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %319

275:                                              ; preds = %269
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %278 = call i8* @fts_stat(%struct.TYPE_18__* %276, %struct.TYPE_17__* %277, i32 1)
  %279 = ptrtoint i8* %278 to i64
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 1
  store i64 %279, i64* %281, align 8
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @FTS_D, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %314

287:                                              ; preds = %275
  %288 = load i32, i32* @FTS_NOCHDIR, align 4
  %289 = call i64 @ISSET(i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %314, label %291

291:                                              ; preds = %287
  %292 = load i32, i32* @O_RDONLY, align 4
  %293 = load i32, i32* @O_CLOEXEC, align 4
  %294 = or i32 %292, %293
  %295 = call i8* @_open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %294, i32 0)
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 9
  store i8* %295, i8** %297, align 8
  %298 = icmp ult i8* %295, null
  br i1 %298, label %299, label %307

299:                                              ; preds = %291
  %300 = load i32, i32* @errno, align 4
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 2
  store i32 %300, i32* %302, align 8
  %303 = load i8*, i8** @FTS_ERR, align 8
  %304 = ptrtoint i8* %303 to i64
  %305 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 1
  store i64 %304, i64* %306, align 8
  br label %313

307:                                              ; preds = %291
  %308 = load i32, i32* @FTS_SYMFOLLOW, align 4
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = or i32 %311, %308
  store i32 %312, i32* %310, align 4
  br label %313

313:                                              ; preds = %307, %299
  br label %314

314:                                              ; preds = %313, %287, %275
  %315 = load i8*, i8** @FTS_NOINSTR, align 8
  %316 = ptrtoint i8* %315 to i32
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 0
  store i32 %316, i32* %318, align 8
  br label %319

319:                                              ; preds = %314, %269
  br label %320

320:                                              ; preds = %319, %224
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 1
  %323 = load i8*, i8** %322, align 8
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %324, i32 0, i32 8
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %325, align 8
  %327 = call i32 @NAPPEND(%struct.TYPE_17__* %326)
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8, i8* %323, i64 %328
  store i8* %329, i8** %7, align 8
  %330 = load i8*, i8** %7, align 8
  %331 = getelementptr inbounds i8, i8* %330, i32 1
  store i8* %331, i8** %7, align 8
  store i8 47, i8* %330, align 1
  %332 = load i8*, i8** %7, align 8
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i32 0, i32 11
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %336, i32 0, i32 10
  %338 = load i64, i64* %337, align 8
  %339 = add nsw i64 %338, 1
  %340 = call i32 @memmove(i8* %332, i32 %335, i64 %339)
  %341 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 2
  store %struct.TYPE_17__* %341, %struct.TYPE_17__** %343, align 8
  store %struct.TYPE_17__* %341, %struct.TYPE_17__** %2, align 8
  br label %448

344:                                              ; preds = %231
  %345 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i32 0, i32 8
  %347 = load %struct.TYPE_17__*, %struct.TYPE_17__** %346, align 8
  store %struct.TYPE_17__* %347, %struct.TYPE_17__** %4, align 8
  %348 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %349 = call i32 @free(%struct.TYPE_17__* %348)
  %350 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %350, i32 0, i32 6
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @FTS_ROOTPARENTLEVEL, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %360

355:                                              ; preds = %344
  %356 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %357 = call i32 @free(%struct.TYPE_17__* %356)
  store i32 0, i32* @errno, align 4
  %358 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %358, i32 0, i32 2
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %359, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %448

360:                                              ; preds = %344
  %361 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %361, i32 0, i32 1
  %363 = load i8*, i8** %362, align 8
  %364 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %364, i32 0, i32 7
  %366 = load i64, i64* %365, align 8
  %367 = getelementptr inbounds i8, i8* %363, i64 %366
  store i8 0, i8* %367, align 1
  %368 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %368, i32 0, i32 6
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @FTS_ROOTLEVEL, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %384

373:                                              ; preds = %360
  %374 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %375, i32 0, i32 3
  %377 = load i8*, i8** %376, align 8
  %378 = call i64 @FCHDIR(%struct.TYPE_18__* %374, i8* %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %373
  %381 = load i32, i32* @FTS_STOP, align 4
  %382 = call i32 @SET(i32 %381)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %448

383:                                              ; preds = %373
  br label %431

384:                                              ; preds = %360
  %385 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* @FTS_SYMFOLLOW, align 4
  %389 = and i32 %387, %388
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %412

391:                                              ; preds = %384
  %392 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %393 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %393, i32 0, i32 9
  %395 = load i8*, i8** %394, align 8
  %396 = call i64 @FCHDIR(%struct.TYPE_18__* %392, i8* %395)
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %407

398:                                              ; preds = %391
  %399 = load i32, i32* @errno, align 4
  store i32 %399, i32* %8, align 4
  %400 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %400, i32 0, i32 9
  %402 = load i8*, i8** %401, align 8
  %403 = call i32 @_close(i8* %402)
  %404 = load i32, i32* %8, align 4
  store i32 %404, i32* @errno, align 4
  %405 = load i32, i32* @FTS_STOP, align 4
  %406 = call i32 @SET(i32 %405)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %448

407:                                              ; preds = %391
  %408 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %409 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %408, i32 0, i32 9
  %410 = load i8*, i8** %409, align 8
  %411 = call i32 @_close(i8* %410)
  br label %430

412:                                              ; preds = %384
  %413 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @FTS_DONTCHDIR, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %429, label %419

419:                                              ; preds = %412
  %420 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %421 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %422 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %421, i32 0, i32 8
  %423 = load %struct.TYPE_17__*, %struct.TYPE_17__** %422, align 8
  %424 = call i64 @fts_safe_changedir(%struct.TYPE_18__* %420, %struct.TYPE_17__* %423, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %419
  %427 = load i32, i32* @FTS_STOP, align 4
  %428 = call i32 @SET(i32 %427)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %448

429:                                              ; preds = %419, %412
  br label %430

430:                                              ; preds = %429, %407
  br label %431

431:                                              ; preds = %430, %383
  %432 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %433 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 8
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %438

436:                                              ; preds = %431
  %437 = load i8*, i8** @FTS_ERR, align 8
  br label %440

438:                                              ; preds = %431
  %439 = load i8*, i8** @FTS_DP, align 8
  br label %440

440:                                              ; preds = %438, %436
  %441 = phi i8* [ %437, %436 ], [ %439, %438 ]
  %442 = ptrtoint i8* %441 to i64
  %443 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %444 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %443, i32 0, i32 1
  store i64 %442, i64* %444, align 8
  %445 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %446 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %446, i32 0, i32 2
  store %struct.TYPE_17__* %445, %struct.TYPE_17__** %447, align 8
  store %struct.TYPE_17__* %445, %struct.TYPE_17__** %2, align 8
  br label %448

448:                                              ; preds = %440, %426, %398, %380, %355, %320, %255, %252, %221, %220, %143, %95, %32, %17
  %449 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  ret %struct.TYPE_17__* %449
}

declare dso_local i64 @ISSET(i32) #1

declare dso_local i8* @fts_stat(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i8* @_open(i8*, i32, i32) #1

declare dso_local i32 @_close(i8*) #1

declare dso_local i32 @fts_lfree(%struct.TYPE_17__*) #1

declare dso_local i32 @CLR(i32) #1

declare dso_local i64 @fts_safe_changedir(%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i8*) #1

declare dso_local %struct.TYPE_17__* @fts_build(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_17__*) #1

declare dso_local i64 @FCHDIR(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @SET(i32) #1

declare dso_local i32 @fts_load(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @NAPPEND(%struct.TYPE_17__*) #1

declare dso_local i32 @memmove(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
