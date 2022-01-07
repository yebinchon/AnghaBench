; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_trail.c_trail_last.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_trail.c_trail_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8*, i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i64 0, align 8
@DT_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"No trail files.\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Found the most recent trail file: \22%s\22.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trail_last(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @PJDLOG_ASSERT(i32 %17)
  %19 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %19, align 16
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @rewinddir(i32* %20)
  br label %22

22:                                               ; preds = %76, %75, %63, %42, %3
  %23 = load i32*, i32** %4, align 8
  %24 = call %struct.dirent* @readdir(i32* %23)
  store %struct.dirent* %24, %struct.dirent** %9, align 8
  %25 = icmp ne %struct.dirent* %24, null
  br i1 %25, label %26, label %84

26:                                               ; preds = %22
  %27 = load %struct.dirent*, %struct.dirent** %9, align 8
  %28 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp slt i32 %32, 48
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load %struct.dirent*, %struct.dirent** %9, align 8
  %36 = getelementptr inbounds %struct.dirent, %struct.dirent* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sgt i32 %40, 57
  br i1 %41, label %42, label %43

42:                                               ; preds = %34, %26
  br label %22

43:                                               ; preds = %34
  %44 = load %struct.dirent*, %struct.dirent** %9, align 8
  %45 = getelementptr inbounds %struct.dirent, %struct.dirent* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DT_UNKNOWN, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.dirent*, %struct.dirent** %9, align 8
  %52 = getelementptr inbounds %struct.dirent, %struct.dirent* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @trail_type(i32* %50, i8* %53)
  %55 = load %struct.dirent*, %struct.dirent** %9, align 8
  %56 = getelementptr inbounds %struct.dirent, %struct.dirent* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %49, %43
  %58 = load %struct.dirent*, %struct.dirent** %9, align 8
  %59 = getelementptr inbounds %struct.dirent, %struct.dirent* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DT_REG, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %22

64:                                               ; preds = %57
  %65 = getelementptr inbounds i8, i8* %14, i64 0
  %66 = load i8, i8* %65, align 16
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.dirent*, %struct.dirent** %9, align 8
  %71 = getelementptr inbounds %struct.dirent, %struct.dirent* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strcmp(i8* %72, i8* %14)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %22

76:                                               ; preds = %69, %64
  %77 = load %struct.dirent*, %struct.dirent** %9, align 8
  %78 = getelementptr inbounds %struct.dirent, %struct.dirent* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strlcpy(i8* %14, i8* %79, i64 %12)
  %81 = icmp ult i64 %80, %12
  %82 = zext i1 %81 to i32
  %83 = call i32 @PJDLOG_VERIFY(i32 %82)
  br label %22

84:                                               ; preds = %22
  %85 = getelementptr inbounds i8, i8* %14, i64 0
  %86 = load i8, i8* %85, align 16
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %91 = load i8*, i8** %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @bzero(i8* %91, i64 %92)
  store i32 1, i32* %10, align 4
  br label %104

94:                                               ; preds = %84
  %95 = load i8*, i8** %5, align 8
  %96 = load i64, i64* %6, align 8
  %97 = call i64 @strlcpy(i8* %95, i8* %14, i64 %96)
  %98 = load i64, i64* %6, align 8
  %99 = icmp ult i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @PJDLOG_VERIFY(i32 %100)
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %102)
  store i32 0, i32* %10, align 4
  br label %104

104:                                              ; preds = %94, %89
  %105 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %10, align 4
  switch i32 %106, label %108 [
    i32 0, label %107
    i32 1, label %107
  ]

107:                                              ; preds = %104, %104
  ret void

108:                                              ; preds = %104
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #2

declare dso_local i32 @rewinddir(i32*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @trail_type(i32*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @PJDLOG_VERIFY(i32) #2

declare dso_local i64 @strlcpy(i8*, i8*, i64) #2

declare dso_local i32 @pjdlog_debug(i32, i8*, ...) #2

declare dso_local i32 @bzero(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
