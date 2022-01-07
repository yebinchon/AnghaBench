; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_dirs.c_treescan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_dirs.c_treescan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotab = type { i64 }
%struct.direct = type { i8*, i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@LEAF = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@dirp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Warning: `.' missing from directory %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Warning: `..' missing from directory %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%s%s: name exceeds %zu char\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @treescan(i8* %0, i32 %1, i64 (i8*, i32, i32)* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64 (i8*, i32, i32)*, align 8
  %7 = alloca %struct.inotab*, align 8
  %8 = alloca %struct.direct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 (i8*, i32, i32)* %2, i64 (i8*, i32, i32)** %6, align 8
  %14 = load i32, i32* @MAXPATHLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.inotab* @inotablookup(i32 %18)
  store %struct.inotab* %19, %struct.inotab** %7, align 8
  %20 = load %struct.inotab*, %struct.inotab** %7, align 8
  %21 = icmp eq %struct.inotab* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i64 (i8*, i32, i32)*, i64 (i8*, i32, i32)** %6, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @LEAF, align 4
  %27 = call i64 %23(i8* %24, i32 %25, i32 %26)
  store i32 1, i32* %13, align 4
  br label %131

28:                                               ; preds = %3
  %29 = load i64 (i8*, i32, i32)*, i64 (i8*, i32, i32)** %6, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @NODE, align 4
  %33 = call i64 %29(i8* %30, i32 %31, i32 %32)
  %34 = load i64, i64* @FAIL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 1, i32* %13, align 4
  br label %131

37:                                               ; preds = %28
  %38 = load i8*, i8** %4, align 8
  %39 = trunc i64 %15 to i32
  %40 = call i32 @strlcpy(i8* %17, i8* %38, i32 %39)
  %41 = trunc i64 %15 to i32
  %42 = call i32 @strlcat(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = call i32 @strlen(i8* %17)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @dirp, align 4
  %45 = load %struct.inotab*, %struct.inotab** %7, align 8
  %46 = getelementptr inbounds %struct.inotab, %struct.inotab* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.inotab*, %struct.inotab** %7, align 8
  %49 = getelementptr inbounds %struct.inotab, %struct.inotab* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @rst_seekdir(i32 %44, i64 %47, i64 %50)
  %52 = load i32, i32* @dirp, align 4
  %53 = call %struct.direct* @rst_readdir(i32 %52)
  store %struct.direct* %53, %struct.direct** %8, align 8
  %54 = load %struct.direct*, %struct.direct** %8, align 8
  %55 = icmp ne %struct.direct* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %37
  %57 = load %struct.direct*, %struct.direct** %8, align 8
  %58 = getelementptr inbounds %struct.direct, %struct.direct* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @dirp, align 4
  %64 = call %struct.direct* @rst_readdir(i32 %63)
  store %struct.direct* %64, %struct.direct** %8, align 8
  br label %69

65:                                               ; preds = %56, %37
  %66 = load i32, i32* @stderr, align 4
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load %struct.direct*, %struct.direct** %8, align 8
  %71 = icmp ne %struct.direct* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.direct*, %struct.direct** %8, align 8
  %74 = getelementptr inbounds %struct.direct, %struct.direct* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @dirp, align 4
  %80 = call %struct.direct* @rst_readdir(i32 %79)
  store %struct.direct* %80, %struct.direct** %8, align 8
  br label %85

81:                                               ; preds = %72, %69
  %82 = load i32, i32* @stderr, align 4
  %83 = load i8*, i8** %4, align 8
  %84 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32, i32* @dirp, align 4
  %87 = call i64 @rst_telldir(i32 %86)
  store i64 %87, i64* %10, align 8
  br label %88

88:                                               ; preds = %125, %85
  %89 = load %struct.direct*, %struct.direct** %8, align 8
  %90 = icmp ne %struct.direct* %89, null
  br i1 %90, label %91, label %130

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %17, i64 %93
  store i8 0, i8* %94, align 1
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.direct*, %struct.direct** %8, align 8
  %97 = getelementptr inbounds %struct.direct, %struct.direct* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %95, %98
  %100 = sext i32 %99 to i64
  %101 = icmp uge i64 %100, %15
  br i1 %101, label %102, label %109

102:                                              ; preds = %91
  %103 = load i32, i32* @stderr, align 4
  %104 = load %struct.direct*, %struct.direct** %8, align 8
  %105 = getelementptr inbounds %struct.direct, %struct.direct* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = sub i64 %15, 1
  %108 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %17, i8* %106, i64 %107)
  br label %125

109:                                              ; preds = %91
  %110 = load %struct.direct*, %struct.direct** %8, align 8
  %111 = getelementptr inbounds %struct.direct, %struct.direct* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = trunc i64 %15 to i32
  %114 = call i32 @strlcat(i8* %17, i8* %112, i32 %113)
  %115 = load %struct.direct*, %struct.direct** %8, align 8
  %116 = getelementptr inbounds %struct.direct, %struct.direct* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i64 (i8*, i32, i32)*, i64 (i8*, i32, i32)** %6, align 8
  call void @treescan(i8* %17, i32 %117, i64 (i8*, i32, i32)* %118)
  %119 = load i32, i32* @dirp, align 4
  %120 = load i64, i64* %10, align 8
  %121 = load %struct.inotab*, %struct.inotab** %7, align 8
  %122 = getelementptr inbounds %struct.inotab, %struct.inotab* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @rst_seekdir(i32 %119, i64 %120, i64 %123)
  br label %125

125:                                              ; preds = %109, %102
  %126 = load i32, i32* @dirp, align 4
  %127 = call %struct.direct* @rst_readdir(i32 %126)
  store %struct.direct* %127, %struct.direct** %8, align 8
  %128 = load i32, i32* @dirp, align 4
  %129 = call i64 @rst_telldir(i32 %128)
  store i64 %129, i64* %10, align 8
  br label %88

130:                                              ; preds = %88
  store i32 0, i32* %13, align 4
  br label %131

131:                                              ; preds = %130, %36, %22
  %132 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %13, align 4
  switch i32 %133, label %135 [
    i32 0, label %134
    i32 1, label %134
  ]

134:                                              ; preds = %131, %131
  ret void

135:                                              ; preds = %131
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.inotab* @inotablookup(i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @rst_seekdir(i32, i64, i64) #2

declare dso_local %struct.direct* @rst_readdir(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i64 @rst_telldir(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
