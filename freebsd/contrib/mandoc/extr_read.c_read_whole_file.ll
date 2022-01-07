; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_read_whole_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_read_whole_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mparse = type { i64 }
%struct.buf = type { i64, i64 }
%struct.stat = type { i32, i32 }

@MANDOCERR_FSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errno = common dso_local global i32 0, align 4
@MANDOCERR_TOOLARGE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@MANDOCERR_DUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@MANDOCERR_GZDOPEN = common dso_local global i32 0, align 4
@MANDOCERR_READ = common dso_local global i32 0, align 4
@Z_ERRNO = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@MANDOCERR_GZCLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mparse*, i32, %struct.buf*, i32*)* @read_whole_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_whole_file(%struct.mparse* %0, i32 %1, %struct.buf* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mparse*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mparse* %0, %struct.mparse** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.buf* %2, %struct.buf** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @fstat(i32 %16, %struct.stat* %10)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i32, i32* @MANDOCERR_FSTAT, align 4
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %20, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 -1, i32* %5, align 4
  br label %231

24:                                               ; preds = %4
  %25 = load %struct.mparse*, %struct.mparse** %6, align 8
  %26 = getelementptr inbounds %struct.mparse, %struct.mparse* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @S_ISREG(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 2147483647
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @MANDOCERR_TOOLARGE, align 4
  %40 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %39, i32 0, i32 0, i8* null)
  store i32 -1, i32* %5, align 4
  br label %231

41:                                               ; preds = %34
  %42 = load i32*, i32** %9, align 8
  store i32 1, i32* %42, align 4
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.buf*, %struct.buf** %8, align 8
  %47 = getelementptr inbounds %struct.buf, %struct.buf* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.buf*, %struct.buf** %8, align 8
  %49 = getelementptr inbounds %struct.buf, %struct.buf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @PROT_READ, align 4
  %52 = load i32, i32* @MAP_SHARED, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @mmap(i32* null, i64 %50, i32 %51, i32 %52, i32 %53, i32 0)
  %55 = load %struct.buf*, %struct.buf** %8, align 8
  %56 = getelementptr inbounds %struct.buf, %struct.buf* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.buf*, %struct.buf** %8, align 8
  %58 = getelementptr inbounds %struct.buf, %struct.buf* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MAP_FAILED, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %231

63:                                               ; preds = %41
  br label %64

64:                                               ; preds = %63, %29, %24
  %65 = load %struct.mparse*, %struct.mparse** %6, align 8
  %66 = getelementptr inbounds %struct.mparse, %struct.mparse* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @dup(i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* @MANDOCERR_DUP, align 4
  %75 = load i32, i32* @errno, align 4
  %76 = call i32 @strerror(i32 %75)
  %77 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %74, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %76)
  store i32 -1, i32* %5, align 4
  br label %231

78:                                               ; preds = %69
  %79 = load i32, i32* %7, align 4
  %80 = call i32* @gzdopen(i32 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %80, i32** %11, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i32, i32* @MANDOCERR_GZDOPEN, align 4
  %84 = load i32, i32* @errno, align 4
  %85 = call i32 @strerror(i32 %84)
  %86 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %83, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @close(i32 %87)
  store i32 -1, i32* %5, align 4
  br label %231

89:                                               ; preds = %78
  br label %91

90:                                               ; preds = %64
  store i32* null, i32** %11, align 8
  br label %91

91:                                               ; preds = %90, %89
  %92 = load i32*, i32** %9, align 8
  store i32 0, i32* %92, align 4
  store i64 0, i64* %12, align 8
  store i32 -1, i32* %15, align 4
  %93 = load %struct.buf*, %struct.buf** %8, align 8
  %94 = getelementptr inbounds %struct.buf, %struct.buf* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load %struct.buf*, %struct.buf** %8, align 8
  %96 = getelementptr inbounds %struct.buf, %struct.buf* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %189, %91
  %98 = load i64, i64* %12, align 8
  %99 = load %struct.buf*, %struct.buf** %8, align 8
  %100 = getelementptr inbounds %struct.buf, %struct.buf* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %98, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  %104 = load %struct.buf*, %struct.buf** %8, align 8
  %105 = getelementptr inbounds %struct.buf, %struct.buf* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 2147483648
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* @MANDOCERR_TOOLARGE, align 4
  %110 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %109, i32 0, i32 0, i8* null)
  br label %194

111:                                              ; preds = %103
  %112 = load %struct.buf*, %struct.buf** %8, align 8
  %113 = call i32 @resize_buf(%struct.buf* %112, i32 65536)
  br label %114

114:                                              ; preds = %111, %97
  %115 = load %struct.mparse*, %struct.mparse** %6, align 8
  %116 = getelementptr inbounds %struct.mparse, %struct.mparse* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %114
  %120 = load i32*, i32** %11, align 8
  %121 = load %struct.buf*, %struct.buf** %8, align 8
  %122 = getelementptr inbounds %struct.buf, %struct.buf* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %12, align 8
  %125 = trunc i64 %124 to i32
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %123, %126
  %128 = inttoptr i64 %127 to i32*
  %129 = load %struct.buf*, %struct.buf** %8, align 8
  %130 = getelementptr inbounds %struct.buf, %struct.buf* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %12, align 8
  %133 = sub i64 %131, %132
  %134 = call i32 @gzread(i32* %120, i32* %128, i64 %133)
  br label %151

135:                                              ; preds = %114
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.buf*, %struct.buf** %8, align 8
  %138 = getelementptr inbounds %struct.buf, %struct.buf* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %12, align 8
  %141 = trunc i64 %140 to i32
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %139, %142
  %144 = inttoptr i64 %143 to i32*
  %145 = load %struct.buf*, %struct.buf** %8, align 8
  %146 = getelementptr inbounds %struct.buf, %struct.buf* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %12, align 8
  %149 = sub i64 %147, %148
  %150 = call i32 @read(i32 %136, i32* %144, i64 %149)
  br label %151

151:                                              ; preds = %135, %119
  %152 = phi i32 [ %134, %119 ], [ %150, %135 ]
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i64, i64* %12, align 8
  %157 = load %struct.buf*, %struct.buf** %8, align 8
  %158 = getelementptr inbounds %struct.buf, %struct.buf* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  store i32 0, i32* %15, align 4
  br label %194

159:                                              ; preds = %151
  %160 = load i32, i32* %13, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %189

162:                                              ; preds = %159
  %163 = load %struct.mparse*, %struct.mparse** %6, align 8
  %164 = getelementptr inbounds %struct.mparse, %struct.mparse* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load i32*, i32** %11, align 8
  %169 = call i32 @gzerror(i32* %168, i32* %14)
  br label %170

170:                                              ; preds = %167, %162
  %171 = load i32, i32* @MANDOCERR_READ, align 4
  %172 = load %struct.mparse*, %struct.mparse** %6, align 8
  %173 = getelementptr inbounds %struct.mparse, %struct.mparse* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %170
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* @Z_ERRNO, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @zError(i32 %181)
  br label %186

183:                                              ; preds = %176, %170
  %184 = load i32, i32* @errno, align 4
  %185 = call i32 @strerror(i32 %184)
  br label %186

186:                                              ; preds = %183, %180
  %187 = phi i32 [ %182, %180 ], [ %185, %183 ]
  %188 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %171, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %187)
  br label %194

189:                                              ; preds = %159
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = load i64, i64* %12, align 8
  %193 = add i64 %192, %191
  store i64 %193, i64* %12, align 8
  br label %97

194:                                              ; preds = %186, %155, %108
  %195 = load %struct.mparse*, %struct.mparse** %6, align 8
  %196 = getelementptr inbounds %struct.mparse, %struct.mparse* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %218

199:                                              ; preds = %194
  %200 = load i32*, i32** %11, align 8
  %201 = call i32 @gzclose(i32* %200)
  store i32 %201, i32* %14, align 4
  %202 = load i32, i32* @Z_OK, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %218

204:                                              ; preds = %199
  %205 = load i32, i32* @MANDOCERR_GZCLOSE, align 4
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* @Z_ERRNO, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load i32, i32* @errno, align 4
  %211 = call i32 @strerror(i32 %210)
  br label %215

212:                                              ; preds = %204
  %213 = load i32, i32* %14, align 4
  %214 = call i32 @zError(i32 %213)
  br label %215

215:                                              ; preds = %212, %209
  %216 = phi i32 [ %211, %209 ], [ %214, %212 ]
  %217 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %205, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %216)
  br label %218

218:                                              ; preds = %215, %199, %194
  %219 = load i32, i32* %15, align 4
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %221, label %229

221:                                              ; preds = %218
  %222 = load %struct.buf*, %struct.buf** %8, align 8
  %223 = getelementptr inbounds %struct.buf, %struct.buf* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = inttoptr i64 %224 to i32*
  %226 = call i32 @free(i32* %225)
  %227 = load %struct.buf*, %struct.buf** %8, align 8
  %228 = getelementptr inbounds %struct.buf, %struct.buf* %227, i32 0, i32 1
  store i64 0, i64* %228, align 8
  br label %229

229:                                              ; preds = %221, %218
  %230 = load i32, i32* %15, align 4
  store i32 %230, i32* %5, align 4
  br label %231

231:                                              ; preds = %229, %82, %73, %62, %38, %19
  %232 = load i32, i32* %5, align 4
  ret i32 %232
}

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32* @gzdopen(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @resize_buf(%struct.buf*, i32) #1

declare dso_local i32 @gzread(i32*, i32*, i64) #1

declare dso_local i32 @read(i32, i32*, i64) #1

declare dso_local i32 @gzerror(i32*, i32*) #1

declare dso_local i32 @zError(i32) #1

declare dso_local i32 @gzclose(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
