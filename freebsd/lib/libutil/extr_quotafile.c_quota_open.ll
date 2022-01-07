; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_quota_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_quota_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotafile = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fstab = type { i32, i32 }
%struct.dqhdr64 = type { i8*, i8*, i8*, i32 }
%struct.group = type { i32 }
%struct.stat = type { i32 }

@Q_GETQUOTASIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ufs\00", align 1
@errno = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@Q_DQHDR64_MAGIC = common dso_local global i8* null, align 8
@Q_DQHDR64_VERSION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@QUOTAGROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.quotafile* @quota_open(%struct.fstab* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.quotafile*, align 8
  %5 = alloca %struct.fstab*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.quotafile*, align 8
  %9 = alloca %struct.dqhdr64, align 8
  %10 = alloca %struct.group*, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fstab* %0, %struct.fstab** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %15 = call %struct.quotafile* @calloc(i32 1, i32 28)
  store %struct.quotafile* %15, %struct.quotafile** %8, align 8
  %16 = icmp eq %struct.quotafile* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.quotafile* null, %struct.quotafile** %4, align 8
  br label %237

18:                                               ; preds = %3
  %19 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %20 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %23 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %25 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fstab*, %struct.fstab** %5, align 8
  %28 = getelementptr inbounds %struct.fstab, %struct.fstab* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strlcpy(i32 %26, i32 %29, i32 4)
  %31 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %32 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @stat(i32 %33, %struct.stat* %11)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  br label %222

37:                                               ; preds = %18
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %41 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @Q_GETQUOTASIZE, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @QCMD(i32 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load %struct.fstab*, %struct.fstab** %5, align 8
  %46 = getelementptr inbounds %struct.fstab, %struct.fstab* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @strcmp(i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %37
  %54 = load %struct.fstab*, %struct.fstab** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %57 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @hasquota(%struct.fstab* %54, i32 %55, i32 %58, i32 4)
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %53, %37
  %61 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %62 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %66 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %65, i32 0, i32 2
  %67 = call i64 @quotactl(i32 %63, i32 %64, i32 0, i32* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  store %struct.quotafile* %70, %struct.quotafile** %4, align 8
  br label %237

71:                                               ; preds = %60
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  store i32 0, i32* @errno, align 4
  br label %222

75:                                               ; preds = %71
  %76 = load i32, i32* %13, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %79, i32* @errno, align 4
  br label %222

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @O_ACCMODE, align 4
  %84 = and i32 %82, %83
  %85 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %86 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %88 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %91 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @O_CLOEXEC, align 4
  %94 = or i32 %92, %93
  %95 = call i8* (i32, i32, ...) @open(i32 %89, i32 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %98 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = icmp slt i32 %96, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %81
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @O_CREAT, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @O_CREAT, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %222

107:                                              ; preds = %100, %81
  %108 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %109 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %112, label %158

112:                                              ; preds = %107
  %113 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %114 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %113, i32 0, i32 2
  store i32 32, i32* %114, align 4
  %115 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %116 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @read(i32 %117, %struct.dqhdr64* %9, i32 32)
  switch i32 %118, label %154 [
    i32 -1, label %119
    i32 32, label %120
  ]

119:                                              ; preds = %112
  br label %222

120:                                              ; preds = %112
  %121 = getelementptr inbounds %struct.dqhdr64, %struct.dqhdr64* %9, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load i8*, i8** @Q_DQHDR64_MAGIC, align 8
  %124 = call i64 @strcmp(i32 %122, i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %128 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %127, i32 0, i32 2
  store i32 32, i32* %128, align 4
  %129 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  store %struct.quotafile* %129, %struct.quotafile** %4, align 8
  br label %237

130:                                              ; preds = %120
  %131 = getelementptr inbounds %struct.dqhdr64, %struct.dqhdr64* %9, i32 0, i32 2
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @be32toh(i8* %132)
  %134 = load i32, i32* @Q_DQHDR64_VERSION, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %148, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.dqhdr64, %struct.dqhdr64* %9, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @be32toh(i8* %138)
  %140 = sext i32 %139 to i64
  %141 = icmp ne i64 %140, 32
  br i1 %141, label %148, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.dqhdr64, %struct.dqhdr64* %9, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @be32toh(i8* %144)
  %146 = sext i32 %145 to i64
  %147 = icmp ne i64 %146, 4
  br i1 %147, label %148, label %150

148:                                              ; preds = %142, %136, %130
  %149 = load i32, i32* @EINVAL, align 4
  store i32 %149, i32* @errno, align 4
  br label %222

150:                                              ; preds = %142
  %151 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %152 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %151, i32 0, i32 2
  store i32 64, i32* %152, align 4
  %153 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  store %struct.quotafile* %153, %struct.quotafile** %4, align 8
  br label %237

154:                                              ; preds = %112
  %155 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %156 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %155, i32 0, i32 2
  store i32 32, i32* %156, align 4
  %157 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  store %struct.quotafile* %157, %struct.quotafile** %4, align 8
  br label %237

158:                                              ; preds = %107
  %159 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %160 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @O_RDWR, align 4
  %163 = load i32, i32* @O_CREAT, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @O_TRUNC, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @O_CLOEXEC, align 4
  %168 = or i32 %166, %167
  %169 = call i8* (i32, i32, ...) @open(i32 %161, i32 %168, i32 0)
  %170 = ptrtoint i8* %169 to i32
  %171 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %172 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  %173 = icmp slt i32 %170, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %158
  br label %222

175:                                              ; preds = %158
  %176 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %177 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %176, i32 0, i32 2
  store i32 64, i32* %177, align 4
  %178 = call i32 @memset(%struct.dqhdr64* %9, i32 0, i32 32)
  %179 = getelementptr inbounds %struct.dqhdr64, %struct.dqhdr64* %9, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load i8*, i8** @Q_DQHDR64_MAGIC, align 8
  %182 = call i32 @memcpy(i32 %180, i8* %181, i32 4)
  %183 = load i32, i32* @Q_DQHDR64_VERSION, align 4
  %184 = call i8* @htobe32(i32 %183)
  %185 = getelementptr inbounds %struct.dqhdr64, %struct.dqhdr64* %9, i32 0, i32 2
  store i8* %184, i8** %185, align 8
  %186 = call i8* @htobe32(i32 32)
  %187 = getelementptr inbounds %struct.dqhdr64, %struct.dqhdr64* %9, i32 0, i32 1
  store i8* %186, i8** %187, align 8
  %188 = call i8* @htobe32(i32 4)
  %189 = getelementptr inbounds %struct.dqhdr64, %struct.dqhdr64* %9, i32 0, i32 0
  store i8* %188, i8** %189, align 8
  %190 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %191 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @write(i32 %192, %struct.dqhdr64* %9, i32 32)
  %194 = sext i32 %193 to i64
  %195 = icmp ne i64 %194, 32
  br i1 %195, label %196, label %201

196:                                              ; preds = %175
  %197 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %198 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @unlink(i32 %199)
  br label %222

201:                                              ; preds = %175
  %202 = load i32, i32* @QUOTAGROUP, align 4
  %203 = call %struct.group* @getgrnam(i32 %202)
  store %struct.group* %203, %struct.group** %10, align 8
  %204 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %205 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.group*, %struct.group** %10, align 8
  %208 = icmp ne %struct.group* %207, null
  br i1 %208, label %209, label %213

209:                                              ; preds = %201
  %210 = load %struct.group*, %struct.group** %10, align 8
  %211 = getelementptr inbounds %struct.group, %struct.group* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  br label %214

213:                                              ; preds = %201
  br label %214

214:                                              ; preds = %213, %209
  %215 = phi i32 [ %212, %209 ], [ 0, %213 ]
  %216 = call i32 @fchown(i32 %206, i32 0, i32 %215)
  %217 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %218 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @fchmod(i32 %219, i32 416)
  %221 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  store %struct.quotafile* %221, %struct.quotafile** %4, align 8
  br label %237

222:                                              ; preds = %196, %174, %148, %119, %106, %78, %74, %36
  %223 = load i32, i32* @errno, align 4
  store i32 %223, i32* %13, align 4
  %224 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %225 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, -1
  br i1 %227, label %228, label %233

228:                                              ; preds = %222
  %229 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %230 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @close(i32 %231)
  br label %233

233:                                              ; preds = %228, %222
  %234 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %235 = call i32 @free(%struct.quotafile* %234)
  %236 = load i32, i32* %13, align 4
  store i32 %236, i32* @errno, align 4
  store %struct.quotafile* null, %struct.quotafile** %4, align 8
  br label %237

237:                                              ; preds = %233, %214, %154, %150, %126, %69, %17
  %238 = load %struct.quotafile*, %struct.quotafile** %4, align 8
  ret %struct.quotafile* %238
}

declare dso_local %struct.quotafile* @calloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @QCMD(i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @hasquota(%struct.fstab*, i32, i32, i32) #1

declare dso_local i64 @quotactl(i32, i32, i32, i32*) #1

declare dso_local i8* @open(i32, i32, ...) #1

declare dso_local i32 @read(i32, %struct.dqhdr64*, i32) #1

declare dso_local i32 @be32toh(i8*) #1

declare dso_local i32 @memset(%struct.dqhdr64*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @write(i32, %struct.dqhdr64*, i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local %struct.group* @getgrnam(i32) #1

declare dso_local i32 @fchown(i32, i32, i32) #1

declare dso_local i32 @fchmod(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.quotafile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
