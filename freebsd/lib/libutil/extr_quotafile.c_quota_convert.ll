; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_quota_convert.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_quota_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotafile = type { i32, i32, i32, i8* }
%struct.dqhdr64 = type { i8*, i8*, i8*, i32 }
%struct.dqblk = type { i32 }
%struct.group = type { i32 }

@O_RDWR = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"%s_%d.orig\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@Q_DQHDR64_MAGIC = common dso_local global i32 0, align 4
@Q_DQHDR64_VERSION = common dso_local global i32 0, align 4
@QUOTAGROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quota_convert(%struct.quotafile* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.quotafile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.quotafile*, align 8
  %7 = alloca %struct.dqhdr64, align 8
  %8 = alloca %struct.dqblk, align 4
  %9 = alloca %struct.group*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.quotafile* %0, %struct.quotafile** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.quotafile*, %struct.quotafile** %4, align 8
  %15 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @O_RDWR, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @O_RDWR, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.quotafile*, %struct.quotafile** %4, align 8
  %23 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %2
  %27 = load i32, i32* @EBADF, align 4
  store i32 %27, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %212

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 32
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 64
  br i1 %33, label %40, label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.quotafile*, %struct.quotafile** %4, align 8
  %37 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %31
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %212

42:                                               ; preds = %34
  %43 = load %struct.quotafile*, %struct.quotafile** %4, align 8
  %44 = call i32 @quota_maxid(%struct.quotafile* %43)
  store i32 %44, i32* %11, align 4
  %45 = call %struct.quotafile* @calloc(i32 1, i32 24)
  store %struct.quotafile* %45, %struct.quotafile** %6, align 8
  %46 = icmp eq %struct.quotafile* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %212

49:                                               ; preds = %42
  %50 = load %struct.quotafile*, %struct.quotafile** %6, align 8
  %51 = load %struct.quotafile*, %struct.quotafile** %4, align 8
  %52 = bitcast %struct.quotafile* %50 to i8*
  %53 = bitcast %struct.quotafile* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 24, i1 false)
  %54 = load %struct.quotafile*, %struct.quotafile** %6, align 8
  %55 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* @MAXPATHLEN, align 8
  %58 = add nsw i64 %57, 1
  %59 = load %struct.quotafile*, %struct.quotafile** %4, align 8
  %60 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.quotafile*, %struct.quotafile** %4, align 8
  %63 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @snprintf(i8* %56, i64 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %61, i32 %64)
  %66 = load %struct.quotafile*, %struct.quotafile** %4, align 8
  %67 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.quotafile*, %struct.quotafile** %6, align 8
  %70 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @rename(i8* %68, i8* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %49
  %75 = load %struct.quotafile*, %struct.quotafile** %6, align 8
  %76 = call i32 @free(%struct.quotafile* %75)
  store i32 -1, i32* %3, align 4
  br label %212

77:                                               ; preds = %49
  %78 = load %struct.quotafile*, %struct.quotafile** %4, align 8
  %79 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* @O_RDWR, align 4
  %82 = load i32, i32* @O_CREAT, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @O_TRUNC, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @O_CLOEXEC, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @open(i8* %80, i32 %87, i32 0)
  %89 = load %struct.quotafile*, %struct.quotafile** %6, align 8
  %90 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = icmp slt i32 %88, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %77
  %93 = load i32, i32* @errno, align 4
  store i32 %93, i32* %10, align 4
  br label %201

94:                                               ; preds = %77
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.quotafile*, %struct.quotafile** %6, align 8
  %97 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %5, align 4
  %99 = icmp eq i32 %98, 64
  br i1 %99, label %100, label %122

100:                                              ; preds = %94
  %101 = call i32 @memset(%struct.dqhdr64* %7, i32 0, i32 32)
  %102 = getelementptr inbounds %struct.dqhdr64, %struct.dqhdr64* %7, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @Q_DQHDR64_MAGIC, align 4
  %105 = call i32 @memcpy(i32 %103, i32 %104, i32 4)
  %106 = load i32, i32* @Q_DQHDR64_VERSION, align 4
  %107 = call i8* @htobe32(i32 %106)
  %108 = getelementptr inbounds %struct.dqhdr64, %struct.dqhdr64* %7, i32 0, i32 2
  store i8* %107, i8** %108, align 8
  %109 = call i8* @htobe32(i32 32)
  %110 = getelementptr inbounds %struct.dqhdr64, %struct.dqhdr64* %7, i32 0, i32 1
  store i8* %109, i8** %110, align 8
  %111 = call i8* @htobe32(i32 4)
  %112 = getelementptr inbounds %struct.dqhdr64, %struct.dqhdr64* %7, i32 0, i32 0
  store i8* %111, i8** %112, align 8
  %113 = load %struct.quotafile*, %struct.quotafile** %6, align 8
  %114 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @write(i32 %115, %struct.dqhdr64* %7, i32 32)
  %117 = sext i32 %116 to i64
  %118 = icmp ne i64 %117, 32
  br i1 %118, label %119, label %121

119:                                              ; preds = %100
  %120 = load i32, i32* @errno, align 4
  store i32 %120, i32* %10, align 4
  br label %201

121:                                              ; preds = %100
  br label %122

122:                                              ; preds = %121, %94
  %123 = load i32, i32* @QUOTAGROUP, align 4
  %124 = call %struct.group* @getgrnam(i32 %123)
  store %struct.group* %124, %struct.group** %9, align 8
  %125 = load %struct.quotafile*, %struct.quotafile** %6, align 8
  %126 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.group*, %struct.group** %9, align 8
  %129 = icmp ne %struct.group* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load %struct.group*, %struct.group** %9, align 8
  %132 = getelementptr inbounds %struct.group, %struct.group* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  br label %135

134:                                              ; preds = %122
  br label %135

135:                                              ; preds = %134, %130
  %136 = phi i32 [ %133, %130 ], [ 0, %134 ]
  %137 = call i32 @fchown(i32 %127, i32 0, i32 %136)
  %138 = load %struct.quotafile*, %struct.quotafile** %6, align 8
  %139 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @fchmod(i32 %140, i32 416)
  store i32 0, i32* %12, align 4
  br label %142

142:                                              ; preds = %173, %135
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %176

146:                                              ; preds = %142
  %147 = load %struct.quotafile*, %struct.quotafile** %4, align 8
  %148 = load i32, i32* %12, align 4
  %149 = call i64 @quota_read(%struct.quotafile* %147, %struct.dqblk* %8, i32 %148)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %176

152:                                              ; preds = %146
  %153 = load %struct.quotafile*, %struct.quotafile** %6, align 8
  %154 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  switch i32 %155, label %170 [
    i32 32, label %156
    i32 64, label %163
  ]

156:                                              ; preds = %152
  %157 = load %struct.quotafile*, %struct.quotafile** %6, align 8
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @quota_write32(%struct.quotafile* %157, %struct.dqblk* %8, i32 %158)
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %172

162:                                              ; preds = %156
  br label %173

163:                                              ; preds = %152
  %164 = load %struct.quotafile*, %struct.quotafile** %6, align 8
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @quota_write64(%struct.quotafile* %164, %struct.dqblk* %8, i32 %165)
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %172

169:                                              ; preds = %163
  br label %173

170:                                              ; preds = %152
  %171 = load i32, i32* @EINVAL, align 4
  store i32 %171, i32* @errno, align 4
  br label %172

172:                                              ; preds = %170, %168, %161
  br label %173

173:                                              ; preds = %172, %169, %162
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %12, align 4
  br label %142

176:                                              ; preds = %151, %142
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %11, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i32, i32* @errno, align 4
  store i32 %181, i32* %10, align 4
  br label %201

182:                                              ; preds = %176
  %183 = load %struct.quotafile*, %struct.quotafile** %4, align 8
  %184 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %13, align 4
  %186 = load %struct.quotafile*, %struct.quotafile** %6, align 8
  %187 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.quotafile*, %struct.quotafile** %4, align 8
  %190 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* %13, align 4
  %192 = load %struct.quotafile*, %struct.quotafile** %6, align 8
  %193 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load %struct.quotafile*, %struct.quotafile** %6, align 8
  %195 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.quotafile*, %struct.quotafile** %4, align 8
  %198 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 8
  %199 = load %struct.quotafile*, %struct.quotafile** %6, align 8
  %200 = call i32 @quota_close(%struct.quotafile* %199)
  store i32 0, i32* %3, align 4
  br label %212

201:                                              ; preds = %180, %119, %92
  %202 = load %struct.quotafile*, %struct.quotafile** %6, align 8
  %203 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %202, i32 0, i32 3
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.quotafile*, %struct.quotafile** %4, align 8
  %206 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %205, i32 0, i32 3
  %207 = load i8*, i8** %206, align 8
  %208 = call i64 @rename(i8* %204, i8* %207)
  %209 = load %struct.quotafile*, %struct.quotafile** %6, align 8
  %210 = call i32 @quota_close(%struct.quotafile* %209)
  %211 = load i32, i32* %10, align 4
  store i32 %211, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %212

212:                                              ; preds = %201, %182, %74, %47, %40, %26
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i32 @quota_maxid(%struct.quotafile*) #1

declare dso_local %struct.quotafile* @calloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @free(%struct.quotafile*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.dqhdr64*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @write(i32, %struct.dqhdr64*, i32) #1

declare dso_local %struct.group* @getgrnam(i32) #1

declare dso_local i32 @fchown(i32, i32, i32) #1

declare dso_local i32 @fchmod(i32, i32) #1

declare dso_local i64 @quota_read(%struct.quotafile*, %struct.dqblk*, i32) #1

declare dso_local i32 @quota_write32(%struct.quotafile*, %struct.dqblk*, i32) #1

declare dso_local i32 @quota_write64(%struct.quotafile*, %struct.dqblk*, i32) #1

declare dso_local i32 @quota_close(%struct.quotafile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
