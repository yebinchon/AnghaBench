; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rcp/extr_rcp.c_rsource.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rcp/extr_rcp.c_rsource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64, i64 }
%struct.dirent = type { i64, i8* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@pflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"T%ld 0 %ld 0\0A\00", align 1
@remout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"D%04o %d %s\0A\00", align 1
@MODEMASK = common dso_local global i32 0, align 4
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
  %12 = load i32, i32* @MAXPATHLEN, align 4
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
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = trunc i64 %13 to i32
  %39 = load %struct.stat*, %struct.stat** %4, align 8
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.stat*, %struct.stat** %4, align 8
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %15, i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %41, i64 %44)
  %46 = load i32, i32* @remout, align 4
  %47 = call i32 @strlen(i8* %15)
  %48 = call i32 @write(i32 %46, i8* %15, i32 %47)
  %49 = call i64 (...) @response()
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @closedir(i32* %52)
  store i32 1, i32* %11, align 4
  br label %130

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54, %34
  %56 = trunc i64 %13 to i32
  %57 = load %struct.stat*, %struct.stat** %4, align 8
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MODEMASK, align 4
  %61 = and i32 %59, %60
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %15, i32 %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 0, i8* %62)
  %64 = load i32, i32* @remout, align 4
  %65 = call i32 @strlen(i8* %15)
  %66 = call i32 @write(i32 %64, i8* %15, i32 %65)
  %67 = call i64 (...) @response()
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @closedir(i32* %70)
  store i32 1, i32* %11, align 4
  br label %130

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %114, %108, %95, %82, %72
  %74 = load i32*, i32** %5, align 8
  %75 = call %struct.dirent* @readdir(i32* %74)
  store %struct.dirent* %75, %struct.dirent** %6, align 8
  %76 = icmp ne %struct.dirent* %75, null
  br i1 %76, label %77, label %124

77:                                               ; preds = %73
  %78 = load %struct.dirent*, %struct.dirent** %6, align 8
  %79 = getelementptr inbounds %struct.dirent, %struct.dirent* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %73

83:                                               ; preds = %77
  %84 = load %struct.dirent*, %struct.dirent** %6, align 8
  %85 = getelementptr inbounds %struct.dirent, %struct.dirent* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.dirent*, %struct.dirent** %6, align 8
  %91 = getelementptr inbounds %struct.dirent, %struct.dirent* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %89, %83
  br label %73

96:                                               ; preds = %89
  %97 = load i8*, i8** %3, align 8
  %98 = call i32 @strlen(i8* %97)
  %99 = add nsw i32 %98, 1
  %100 = load %struct.dirent*, %struct.dirent** %6, align 8
  %101 = getelementptr inbounds %struct.dirent, %struct.dirent* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strlen(i8* %102)
  %104 = add nsw i32 %99, %103
  %105 = load i32, i32* @MAXPATHLEN, align 4
  %106 = sub nsw i32 %105, 1
  %107 = icmp sge i32 %104, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %96
  %109 = load i8*, i8** %3, align 8
  %110 = load %struct.dirent*, %struct.dirent** %6, align 8
  %111 = getelementptr inbounds %struct.dirent, %struct.dirent* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @run_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %109, i8* %112)
  br label %73

114:                                              ; preds = %96
  %115 = trunc i64 %13 to i32
  %116 = load i8*, i8** %3, align 8
  %117 = load %struct.dirent*, %struct.dirent** %6, align 8
  %118 = getelementptr inbounds %struct.dirent, %struct.dirent* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %15, i32 %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %116, i8* %119)
  %121 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  store i8* %15, i8** %121, align 8
  %122 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  %123 = call i32 @source(i32 1, i8** %122)
  br label %73

124:                                              ; preds = %73
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 @closedir(i32* %125)
  %127 = load i32, i32* @remout, align 4
  %128 = call i32 @write(i32 %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2)
  %129 = call i64 (...) @response()
  store i32 0, i32* %11, align 4
  br label %130

130:                                              ; preds = %124, %69, %51, %19
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

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @response(...) #2

declare dso_local i32 @closedir(i32*) #2

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
