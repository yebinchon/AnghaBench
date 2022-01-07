; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_util.c_UTIL_prepareFileList.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_util.c_UTIL_prepareFileList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@.str = private unnamed_addr constant [32 x i8] c"Cannot open directory '%s': %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Warning : %s is a symbolic link, ignoring\0A\00", align 1
@LIST_SIZE_INCREASE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"readdir(%s) error: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UTIL_prepareFileList(i8* %0, i8** %1, i64* %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dirent*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %18, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32* @opendir(i8* %20)
  store i32* %21, i32** %12, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %5
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* @errno, align 8
  %26 = call i32 @strerror(i64 %25)
  %27 = call i32 (i32, i8*, i8*, ...) @UTIL_DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %26)
  store i32 0, i32* %6, align 4
  br label %218

28:                                               ; preds = %5
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %15, align 8
  store i64 0, i64* @errno, align 8
  br label %31

31:                                               ; preds = %199, %94, %47, %28
  %32 = load i32*, i32** %12, align 8
  %33 = call %struct.dirent* @readdir(i32* %32)
  store %struct.dirent* %33, %struct.dirent** %13, align 8
  %34 = icmp ne %struct.dirent* %33, null
  br i1 %34, label %35, label %202

35:                                               ; preds = %31
  %36 = load %struct.dirent*, %struct.dirent** %13, align 8
  %37 = getelementptr inbounds %struct.dirent, %struct.dirent* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.dirent*, %struct.dirent** %13, align 8
  %43 = getelementptr inbounds %struct.dirent, %struct.dirent* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %35
  br label %31

48:                                               ; preds = %41
  %49 = load %struct.dirent*, %struct.dirent** %13, align 8
  %50 = getelementptr inbounds %struct.dirent, %struct.dirent* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strlen(i8* %51)
  store i64 %52, i64* %16, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %16, align 8
  %55 = add i64 %53, %54
  %56 = add i64 %55, 2
  %57 = call i64 @malloc(i64 %56)
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %48
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @closedir(i32* %62)
  store i32 0, i32* %6, align 4
  br label %218

64:                                               ; preds = %48
  %65 = load i8*, i8** %14, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i64, i64* %15, align 8
  %68 = call i32 @memcpy(i8* %65, i8* %66, i64 %67)
  %69 = load i8*, i8** %14, align 8
  %70 = load i64, i64* %15, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 47, i8* %71, align 1
  %72 = load i8*, i8** %14, align 8
  %73 = load i64, i64* %15, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load %struct.dirent*, %struct.dirent** %13, align 8
  %77 = getelementptr inbounds %struct.dirent, %struct.dirent* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i64, i64* %16, align 8
  %80 = call i32 @memcpy(i8* %75, i8* %78, i64 %79)
  %81 = load i64, i64* %15, align 8
  %82 = add i64 %81, 1
  %83 = load i64, i64* %16, align 8
  %84 = add i64 %82, %83
  store i64 %84, i64* %17, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = load i64, i64* %17, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8 0, i8* %87, align 1
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %64
  %91 = load i8*, i8** %14, align 8
  %92 = call i64 @UTIL_isLink(i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i8*, i8** %14, align 8
  %96 = call i32 (i32, i8*, i8*, ...) @UTIL_DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %95)
  %97 = load i8*, i8** %14, align 8
  %98 = call i32 @free(i8* %97)
  br label %31

99:                                               ; preds = %90, %64
  %100 = load i8*, i8** %14, align 8
  %101 = call i64 @UTIL_isDirectory(i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %99
  %104 = load i8*, i8** %14, align 8
  %105 = load i8**, i8*** %8, align 8
  %106 = load i64*, i64** %9, align 8
  %107 = load i8**, i8*** %10, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @UTIL_prepareFileList(i8* %104, i8** %105, i64* %106, i8** %107, i32 %108)
  %110 = load i32, i32* %18, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %18, align 4
  %112 = load i8**, i8*** %8, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %103
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 @free(i8* %116)
  %118 = load i32*, i32** %12, align 8
  %119 = call i32 @closedir(i32* %118)
  store i32 0, i32* %6, align 4
  br label %218

120:                                              ; preds = %103
  br label %199

121:                                              ; preds = %99
  %122 = load i8**, i8*** %8, align 8
  %123 = load i8*, i8** %122, align 8
  %124 = load i64*, i64** %9, align 8
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i64, i64* %17, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i8**, i8*** %10, align 8
  %130 = load i8*, i8** %129, align 8
  %131 = icmp uge i8* %128, %130
  br i1 %131, label %132, label %170

132:                                              ; preds = %121
  %133 = load i8**, i8*** %10, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = load i8**, i8*** %8, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = ptrtoint i8* %134 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  %140 = load i32, i32* @LIST_SIZE_INCREASE, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %139, %141
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %19, align 4
  %144 = load i32, i32* %19, align 4
  %145 = icmp sge i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load i8**, i8*** %8, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %19, align 4
  %151 = sext i32 %150 to i64
  %152 = call i64 @UTIL_realloc(i8* %149, i64 %151)
  %153 = inttoptr i64 %152 to i8*
  %154 = load i8**, i8*** %8, align 8
  store i8* %153, i8** %154, align 8
  %155 = load i8**, i8*** %8, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* %19, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8**, i8*** %10, align 8
  store i8* %159, i8** %160, align 8
  %161 = load i8**, i8*** %8, align 8
  %162 = load i8*, i8** %161, align 8
  %163 = icmp eq i8* %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %132
  %165 = load i8*, i8** %14, align 8
  %166 = call i32 @free(i8* %165)
  %167 = load i32*, i32** %12, align 8
  %168 = call i32 @closedir(i32* %167)
  store i32 0, i32* %6, align 4
  br label %218

169:                                              ; preds = %132
  br label %170

170:                                              ; preds = %169, %121
  %171 = load i8**, i8*** %8, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = load i64*, i64** %9, align 8
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i64, i64* %17, align 8
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  %178 = load i8**, i8*** %10, align 8
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ult i8* %177, %179
  br i1 %180, label %181, label %198

181:                                              ; preds = %170
  %182 = load i8**, i8*** %8, align 8
  %183 = load i8*, i8** %182, align 8
  %184 = load i64*, i64** %9, align 8
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i8*, i8** %14, align 8
  %188 = load i64, i64* %17, align 8
  %189 = add i64 %188, 1
  %190 = call i32 @memcpy(i8* %186, i8* %187, i64 %189)
  %191 = load i64, i64* %17, align 8
  %192 = add i64 %191, 1
  %193 = load i64*, i64** %9, align 8
  %194 = load i64, i64* %193, align 8
  %195 = add i64 %194, %192
  store i64 %195, i64* %193, align 8
  %196 = load i32, i32* %18, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %18, align 4
  br label %198

198:                                              ; preds = %181, %170
  br label %199

199:                                              ; preds = %198, %120
  %200 = load i8*, i8** %14, align 8
  %201 = call i32 @free(i8* %200)
  store i64 0, i64* @errno, align 8
  br label %31

202:                                              ; preds = %31
  %203 = load i64, i64* @errno, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %202
  %206 = load i8*, i8** %7, align 8
  %207 = load i64, i64* @errno, align 8
  %208 = call i32 @strerror(i64 %207)
  %209 = call i32 (i32, i8*, i8*, ...) @UTIL_DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %206, i32 %208)
  %210 = load i8**, i8*** %8, align 8
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @free(i8* %211)
  %213 = load i8**, i8*** %8, align 8
  store i8* null, i8** %213, align 8
  br label %214

214:                                              ; preds = %205, %202
  %215 = load i32*, i32** %12, align 8
  %216 = call i32 @closedir(i32* %215)
  %217 = load i32, i32* %18, align 4
  store i32 %217, i32* %6, align 4
  br label %218

218:                                              ; preds = %214, %164, %115, %61, %23
  %219 = load i32, i32* %6, align 4
  ret i32 %219
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @UTIL_DISPLAYLEVEL(i32, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @UTIL_isLink(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @UTIL_isDirectory(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @UTIL_realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
