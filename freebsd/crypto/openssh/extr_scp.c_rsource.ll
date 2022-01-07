; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_scp.c_rsource.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_scp.c_rsource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.dirent = type { i64, i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@pflag = common dso_local global i64 0, align 8
@remout = common dso_local global i32 0, align 4
@verbose_mode = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"D%04o %d %.1024s\0A\00", align 1
@FILEMODEMASK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Entering directory: %s\00", align 1
@vwrite = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%s/%s: name too long\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"E\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rsource(i8* %0, %struct.stat* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [1 x i8*], align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32* @opendir(i8* %16)
  store i32* %17, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* @errno, align 4
  %22 = call i8* @strerror(i32 %21)
  %23 = call i32 @run_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %22)
  store i32 1, i32* %11, align 4
  br label %130

24:                                               ; preds = %2
  %25 = load i8*, i8** %3, align 8
  %26 = call i8* @strrchr(i8* %25, i8 signext 47)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  store i8* %30, i8** %7, align 8
  br label %34

31:                                               ; preds = %24
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %31, %29
  %35 = load i64, i64* @pflag, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* @remout, align 4
  %39 = load i64, i64* @verbose_mode, align 8
  %40 = load %struct.stat*, %struct.stat** %4, align 8
  %41 = call i64 @do_times(i32 %38, i64 %39, %struct.stat* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @closedir(i32* %44)
  store i32 1, i32* %11, align 4
  br label %130

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %34
  %48 = trunc i64 %13 to i32
  %49 = load %struct.stat*, %struct.stat** %4, align 8
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @FILEMODEMASK, align 4
  %53 = and i32 %51, %52
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %15, i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 0, i8* %54)
  %56 = load i64, i64* @verbose_mode, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 @fmprintf(i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  br label %61

61:                                               ; preds = %58, %47
  %62 = load i32, i32* @vwrite, align 4
  %63 = load i32, i32* @remout, align 4
  %64 = call i32 @strlen(i8* %15)
  %65 = call i32 @atomicio(i32 %62, i32 %63, i8* %15, i32 %64)
  %66 = call i64 (...) @response()
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @closedir(i32* %69)
  store i32 1, i32* %11, align 4
  br label %130

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %113, %107, %94, %81, %71
  %73 = load i32*, i32** %5, align 8
  %74 = call %struct.dirent* @readdir(i32* %73)
  store %struct.dirent* %74, %struct.dirent** %6, align 8
  %75 = icmp ne %struct.dirent* %74, null
  br i1 %75, label %76, label %123

76:                                               ; preds = %72
  %77 = load %struct.dirent*, %struct.dirent** %6, align 8
  %78 = getelementptr inbounds %struct.dirent, %struct.dirent* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %72

82:                                               ; preds = %76
  %83 = load %struct.dirent*, %struct.dirent** %6, align 8
  %84 = getelementptr inbounds %struct.dirent, %struct.dirent* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.dirent*, %struct.dirent** %6, align 8
  %90 = getelementptr inbounds %struct.dirent, %struct.dirent* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88, %82
  br label %72

95:                                               ; preds = %88
  %96 = load i8*, i8** %3, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = add nsw i32 %97, 1
  %99 = load %struct.dirent*, %struct.dirent** %6, align 8
  %100 = getelementptr inbounds %struct.dirent, %struct.dirent* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strlen(i8* %101)
  %103 = add nsw i32 %98, %102
  %104 = sext i32 %103 to i64
  %105 = sub i64 %13, 1
  %106 = icmp uge i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %95
  %108 = load i8*, i8** %3, align 8
  %109 = load %struct.dirent*, %struct.dirent** %6, align 8
  %110 = getelementptr inbounds %struct.dirent, %struct.dirent* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @run_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %108, i8* %111)
  br label %72

113:                                              ; preds = %95
  %114 = trunc i64 %13 to i32
  %115 = load i8*, i8** %3, align 8
  %116 = load %struct.dirent*, %struct.dirent** %6, align 8
  %117 = getelementptr inbounds %struct.dirent, %struct.dirent* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %15, i32 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %115, i8* %118)
  %120 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  store i8* %15, i8** %120, align 8
  %121 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  %122 = call i32 @source(i32 1, i8** %121)
  br label %72

123:                                              ; preds = %72
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @closedir(i32* %124)
  %126 = load i32, i32* @vwrite, align 4
  %127 = load i32, i32* @remout, align 4
  %128 = call i32 @atomicio(i32 %126, i32 %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2)
  %129 = call i64 (...) @response()
  store i32 0, i32* %11, align 4
  br label %130

130:                                              ; preds = %123, %68, %43, %19
  %131 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %11, align 4
  switch i32 %132, label %134 [
    i32 0, label %133
    i32 1, label %133
  ]

133:                                              ; preds = %130, %130
  ret void

134:                                              ; preds = %130
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @run_err(i8*, i8*, i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @do_times(i32, i64, %struct.stat*) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @fmprintf(i32, i8*, i8*) #2

declare dso_local i32 @atomicio(i32, i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @response(...) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @source(i32, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
