; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_savedir.c_savedir.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_savedir.c_savedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exclude = type { i32 }
%struct.dirent = type { i8* }

@path = common dso_local global i8* null, align 8
@pathlen = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @savedir(i8* %0, i32 %1, %struct.exclude* %2, %struct.exclude* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.exclude*, align 8
  %9 = alloca %struct.exclude*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dirent*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.exclude* %2, %struct.exclude** %8, align 8
  store %struct.exclude* %3, %struct.exclude** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32* @opendir(i8* %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %169

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @malloc(i32 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @closedir(i32* %32)
  store i8* null, i8** %5, align 8
  br label %169

34:                                               ; preds = %25
  %35 = load i8*, i8** %12, align 8
  store i8* %35, i8** %13, align 8
  br label %36

36:                                               ; preds = %152, %113, %104, %34
  %37 = load i32*, i32** %10, align 8
  %38 = call %struct.dirent* @readdir(i32* %37)
  store %struct.dirent* %38, %struct.dirent** %11, align 8
  %39 = icmp ne %struct.dirent* %38, null
  br i1 %39, label %40, label %153

40:                                               ; preds = %36
  %41 = load %struct.dirent*, %struct.dirent** %11, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 46
  br i1 %47, label %72, label %48

48:                                               ; preds = %40
  %49 = load %struct.dirent*, %struct.dirent** %11, align 8
  %50 = getelementptr inbounds %struct.dirent, %struct.dirent* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %152

56:                                               ; preds = %48
  %57 = load %struct.dirent*, %struct.dirent** %11, align 8
  %58 = getelementptr inbounds %struct.dirent, %struct.dirent* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 46
  br i1 %63, label %72, label %64

64:                                               ; preds = %56
  %65 = load %struct.dirent*, %struct.dirent** %11, align 8
  %66 = getelementptr inbounds %struct.dirent, %struct.dirent* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %152

72:                                               ; preds = %64, %56, %40
  %73 = load i8*, i8** %13, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = load %struct.dirent*, %struct.dirent** %11, align 8
  %79 = call i32 @NAMLEN(%struct.dirent* %78)
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %77, %80
  %82 = add nsw i64 %81, 2
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %14, align 4
  %84 = load %struct.exclude*, %struct.exclude** %8, align 8
  %85 = icmp ne %struct.exclude* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %72
  %87 = load %struct.exclude*, %struct.exclude** %9, align 8
  %88 = icmp ne %struct.exclude* %87, null
  br i1 %88, label %89, label %115

89:                                               ; preds = %86, %72
  %90 = load i8*, i8** %6, align 8
  %91 = load %struct.dirent*, %struct.dirent** %11, align 8
  %92 = getelementptr inbounds %struct.dirent, %struct.dirent* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @isdir1(i8* %90, i8* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %115, label %96

96:                                               ; preds = %89
  %97 = load %struct.exclude*, %struct.exclude** %8, align 8
  %98 = icmp ne %struct.exclude* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load %struct.exclude*, %struct.exclude** %8, align 8
  %101 = load i8*, i8** @path, align 8
  %102 = call i64 @excluded_filename(%struct.exclude* %100, i8* %101, i32 0)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  br label %36

105:                                              ; preds = %99, %96
  %106 = load %struct.exclude*, %struct.exclude** %9, align 8
  %107 = icmp ne %struct.exclude* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load %struct.exclude*, %struct.exclude** %9, align 8
  %110 = load i8*, i8** @path, align 8
  %111 = call i64 @excluded_filename(%struct.exclude* %109, i8* %110, i32 0)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %36

114:                                              ; preds = %108, %105
  br label %115

115:                                              ; preds = %114, %89, %86
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %145

119:                                              ; preds = %115
  br label %120

120:                                              ; preds = %124, %119
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1024
  store i32 %126, i32* %7, align 4
  br label %120

127:                                              ; preds = %120
  %128 = load i8*, i8** %12, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i8* @realloc(i8* %128, i32 %129)
  store i8* %130, i8** %15, align 8
  %131 = load i8*, i8** %15, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i32*, i32** %10, align 8
  %135 = call i32 @closedir(i32* %134)
  store i8* null, i8** %5, align 8
  br label %169

136:                                              ; preds = %127
  %137 = load i8*, i8** %15, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = ptrtoint i8* %137 to i64
  %140 = ptrtoint i8* %138 to i64
  %141 = sub i64 %139, %140
  %142 = load i8*, i8** %13, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 %141
  store i8* %143, i8** %13, align 8
  %144 = load i8*, i8** %15, align 8
  store i8* %144, i8** %12, align 8
  br label %145

145:                                              ; preds = %136, %115
  %146 = load i8*, i8** %13, align 8
  %147 = load %struct.dirent*, %struct.dirent** %11, align 8
  %148 = getelementptr inbounds %struct.dirent, %struct.dirent* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i8* @stpcpy(i8* %146, i8* %149)
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  store i8* %151, i8** %13, align 8
  br label %152

152:                                              ; preds = %145, %64, %48
  br label %36

153:                                              ; preds = %36
  %154 = load i8*, i8** %13, align 8
  store i8 0, i8* %154, align 1
  %155 = load i32*, i32** %10, align 8
  %156 = call i64 @CLOSEDIR(i32* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i8*, i8** %12, align 8
  %160 = call i32 @free(i8* %159)
  store i8* null, i8** %5, align 8
  br label %169

161:                                              ; preds = %153
  %162 = load i8*, i8** @path, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i8*, i8** @path, align 8
  %166 = call i32 @free(i8* %165)
  store i8* null, i8** @path, align 8
  store i64 0, i64* @pathlen, align 8
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i8*, i8** %12, align 8
  store i8* %168, i8** %5, align 8
  br label %169

169:                                              ; preds = %167, %158, %133, %31, %20
  %170 = load i8*, i8** %5, align 8
  ret i8* %170
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @NAMLEN(%struct.dirent*) #1

declare dso_local i32 @isdir1(i8*, i8*) #1

declare dso_local i64 @excluded_filename(%struct.exclude*, i8*, i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i8* @stpcpy(i8*, i8*) #1

declare dso_local i64 @CLOSEDIR(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
