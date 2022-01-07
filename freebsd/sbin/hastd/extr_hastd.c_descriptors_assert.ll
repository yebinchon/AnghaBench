; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hastd.c_descriptors_assert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hastd.c_descriptors_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i64, i32, i32*, i32*, i32*, i32*, i32* }
%struct.stat = type { i64 }

@_SC_OPEN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"[%s] (%s) \00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"sysconf(_SC_OPEN_MAX) failed\00", align 1
@errno = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Unable to fstat descriptor %d: %s\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Descriptor %d (%s) is closed, but should be open.\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Descriptor %d (event) is closed, but should be open.\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Descriptor %d (event) is %s, but should be %s.\00", align 1
@S_IFSOCK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [52 x i8] c"Descriptor %d (ctrl) is closed, but should be open.\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Descriptor %d (ctrl) is %s, but should be %s.\00", align 1
@HAST_ROLE_PRIMARY = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [52 x i8] c"Descriptor %d (conn) is closed, but should be open.\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Descriptor %d (conn) is %s, but should be %s.\00", align 1
@HAST_ROLE_SECONDARY = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [52 x i8] c"Descriptor %d (conn) is open, but should be closed.\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"Descriptor %d (remote in) is closed, but should be open.\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"Descriptor %d (remote in) is %s, but should be %s.\00", align 1
@.str.16 = private unnamed_addr constant [58 x i8] c"Descriptor %d (remote out) is closed, but should be open.\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"Descriptor %d (remote out) is %s, but should be %s.\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"Descriptor %d is open (%s), but should be closed.\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @descriptors_assert(%struct.hast_resource* %0, i32 %1) #0 {
  %3 = alloca %struct.hast_resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca %struct.stat, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.hast_resource* %0, %struct.hast_resource** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %11, align 16
  %12 = load i32, i32* @_SC_OPEN_MAX, align 4
  %13 = call i64 @sysconf(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @pjdlog_init(i32 %17)
  %19 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %20 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %23 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @role2str(i64 %24)
  %26 = call i32 @pjdlog_prefix_set(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25)
  %27 = load i32, i32* @LOG_WARNING, align 4
  %28 = call i32 @pjdlog_errno(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 (...) @pjdlog_fini()
  store i64 16384, i64* %7, align 8
  br label %30

30:                                               ; preds = %16, %2
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %283, %30
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %7, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %286

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @fstat(i32 %37, %struct.stat* %6)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  store i32 1, i32* %8, align 4
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %9, align 8
  br label %55

43:                                               ; preds = %36
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @EBADF, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %54

48:                                               ; preds = %43
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %50 = load i32, i32* %10, align 4
  %51 = load i64, i64* @errno, align 8
  %52 = call i8* @strerror(i64 %51)
  %53 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %49, i32 256, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %50, i8* %52)
  br label %286

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %40
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @STDIN_FILENO, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @STDOUT_FILENO, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @STDERR_FILENO, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %63, %59, %55
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @STDIN_FILENO, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %83

77:                                               ; preds = %70
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @STDOUT_FILENO, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  br label %83

83:                                               ; preds = %77, %76
  %84 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %76 ], [ %82, %77 ]
  %85 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %71, i32 256, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %72, i8* %84)
  br label %286

86:                                               ; preds = %67
  br label %282

87:                                               ; preds = %63
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %90 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %89, i32 0, i32 6
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @proto_descriptor(i32* %91)
  %93 = icmp eq i32 %88, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %87
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %99 = load i32, i32* %10, align 4
  %100 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %98, i32 256, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  br label %286

101:                                              ; preds = %94
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @S_ISSOCK(i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %107 = load i32, i32* %10, align 4
  %108 = load i64, i64* %9, align 8
  %109 = call i8* @dtype2str(i64 %108)
  %110 = load i64, i64* @S_IFSOCK, align 8
  %111 = call i8* @dtype2str(i64 %110)
  %112 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %106, i32 256, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %107, i8* %109, i8* %111)
  br label %286

113:                                              ; preds = %101
  br label %281

114:                                              ; preds = %87
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %117 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %116, i32 0, i32 5
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @proto_descriptor(i32* %118)
  %120 = icmp eq i32 %115, %119
  br i1 %120, label %121, label %141

121:                                              ; preds = %114
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %126 = load i32, i32* %10, align 4
  %127 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %125, i32 256, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i32 %126)
  br label %286

128:                                              ; preds = %121
  %129 = load i64, i64* %9, align 8
  %130 = call i32 @S_ISSOCK(i64 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %134 = load i32, i32* %10, align 4
  %135 = load i64, i64* %9, align 8
  %136 = call i8* @dtype2str(i64 %135)
  %137 = load i64, i64* @S_IFSOCK, align 8
  %138 = call i8* @dtype2str(i64 %137)
  %139 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %133, i32 256, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %134, i8* %136, i8* %138)
  br label %286

140:                                              ; preds = %128
  br label %280

141:                                              ; preds = %114
  %142 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %143 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @HAST_ROLE_PRIMARY, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %174

147:                                              ; preds = %141
  %148 = load i32, i32* %10, align 4
  %149 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %150 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @proto_descriptor(i32* %151)
  %153 = icmp eq i32 %148, %152
  br i1 %153, label %154, label %174

154:                                              ; preds = %147
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %159 = load i32, i32* %10, align 4
  %160 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %158, i32 256, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i32 %159)
  br label %286

161:                                              ; preds = %154
  %162 = load i64, i64* %9, align 8
  %163 = call i32 @S_ISSOCK(i64 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %167 = load i32, i32* %10, align 4
  %168 = load i64, i64* %9, align 8
  %169 = call i8* @dtype2str(i64 %168)
  %170 = load i64, i64* @S_IFSOCK, align 8
  %171 = call i8* @dtype2str(i64 %170)
  %172 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %166, i32 256, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i32 %167, i8* %169, i8* %171)
  br label %286

173:                                              ; preds = %161
  br label %279

174:                                              ; preds = %147, %141
  %175 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %176 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @HAST_ROLE_SECONDARY, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %200

180:                                              ; preds = %174
  %181 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %182 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %200

185:                                              ; preds = %180
  %186 = load i32, i32* %10, align 4
  %187 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %188 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %187, i32 0, i32 4
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @proto_descriptor(i32* %189)
  %191 = icmp eq i32 %186, %190
  br i1 %191, label %192, label %200

192:                                              ; preds = %185
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %197 = load i32, i32* %10, align 4
  %198 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %196, i32 256, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i32 %197)
  br label %286

199:                                              ; preds = %192
  br label %278

200:                                              ; preds = %185, %180, %174
  %201 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %202 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @HAST_ROLE_SECONDARY, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %233

206:                                              ; preds = %200
  %207 = load i32, i32* %10, align 4
  %208 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %209 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %208, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = call i32 @proto_descriptor(i32* %210)
  %212 = icmp eq i32 %207, %211
  br i1 %212, label %213, label %233

213:                                              ; preds = %206
  %214 = load i32, i32* %8, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %218 = load i32, i32* %10, align 4
  %219 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %217, i32 256, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0), i32 %218)
  br label %286

220:                                              ; preds = %213
  %221 = load i64, i64* %9, align 8
  %222 = call i32 @S_ISSOCK(i64 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %232, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %226 = load i32, i32* %10, align 4
  %227 = load i64, i64* %9, align 8
  %228 = call i8* @dtype2str(i64 %227)
  %229 = load i64, i64* @S_IFSOCK, align 8
  %230 = call i8* @dtype2str(i64 %229)
  %231 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %225, i32 256, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0), i32 %226, i8* %228, i8* %230)
  br label %286

232:                                              ; preds = %220
  br label %277

233:                                              ; preds = %206, %200
  %234 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %235 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @HAST_ROLE_SECONDARY, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %266

239:                                              ; preds = %233
  %240 = load i32, i32* %10, align 4
  %241 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %242 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @proto_descriptor(i32* %243)
  %245 = icmp eq i32 %240, %244
  br i1 %245, label %246, label %266

246:                                              ; preds = %239
  %247 = load i32, i32* %8, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %246
  %250 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %251 = load i32, i32* %10, align 4
  %252 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %250, i32 256, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.16, i64 0, i64 0), i32 %251)
  br label %286

253:                                              ; preds = %246
  %254 = load i64, i64* %9, align 8
  %255 = call i32 @S_ISSOCK(i64 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %265, label %257

257:                                              ; preds = %253
  %258 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %259 = load i32, i32* %10, align 4
  %260 = load i64, i64* %9, align 8
  %261 = call i8* @dtype2str(i64 %260)
  %262 = load i64, i64* @S_IFSOCK, align 8
  %263 = call i8* @dtype2str(i64 %262)
  %264 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %258, i32 256, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0), i32 %259, i8* %261, i8* %263)
  br label %286

265:                                              ; preds = %253
  br label %276

266:                                              ; preds = %239, %233
  %267 = load i32, i32* %8, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %266
  %270 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %271 = load i32, i32* %10, align 4
  %272 = load i64, i64* %9, align 8
  %273 = call i8* @dtype2str(i64 %272)
  %274 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %270, i32 256, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i64 0, i64 0), i32 %271, i8* %273)
  br label %286

275:                                              ; preds = %266
  br label %276

276:                                              ; preds = %275, %265
  br label %277

277:                                              ; preds = %276, %232
  br label %278

278:                                              ; preds = %277, %199
  br label %279

279:                                              ; preds = %278, %173
  br label %280

280:                                              ; preds = %279, %140
  br label %281

281:                                              ; preds = %280, %113
  br label %282

282:                                              ; preds = %281, %86
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %10, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %10, align 4
  br label %31

286:                                              ; preds = %269, %257, %249, %224, %216, %195, %165, %157, %132, %124, %105, %97, %83, %48, %31
  %287 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %288 = load i8, i8* %287, align 16
  %289 = sext i8 %288 to i32
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %304

291:                                              ; preds = %286
  %292 = load i32, i32* %4, align 4
  %293 = call i32 @pjdlog_init(i32 %292)
  %294 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %295 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %298 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = call i32 @role2str(i64 %299)
  %301 = call i32 @pjdlog_prefix_set(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %296, i32 %300)
  %302 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %303 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %302)
  br label %304

304:                                              ; preds = %291, %286
  ret void
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32 @pjdlog_init(i32) #1

declare dso_local i32 @pjdlog_prefix_set(i8*, i32, i32) #1

declare dso_local i32 @role2str(i64) #1

declare dso_local i32 @pjdlog_errno(i32, i8*) #1

declare dso_local i32 @pjdlog_fini(...) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @proto_descriptor(i32*) #1

declare dso_local i32 @S_ISSOCK(i64) #1

declare dso_local i8* @dtype2str(i64) #1

declare dso_local i32 @PJDLOG_ABORT(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
