; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_parseconf.c_GetBootFiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_parseconf.c_GetBootFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.dirent = type { i32 }

@C_MAXFILE = common dso_local global i32 0, align 4
@BootFiles = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"GetBootFiles: can't open directory (%s)\0A\00", align 1
@BootDir = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"GetBootFiles: too many boot files (%s ignored)\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"GetBootFiles: no boot files (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetBootFiles() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %30, %0
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @C_MAXFILE, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load i32**, i32*** @BootFiles, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br label %17

17:                                               ; preds = %10, %6
  %18 = phi i1 [ false, %6 ], [ %16, %10 ]
  br i1 %18, label %19, label %33

19:                                               ; preds = %17
  %20 = load i32**, i32*** @BootFiles, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @FreeStr(i32* %24)
  %26 = load i32**, i32*** @BootFiles, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %6

33:                                               ; preds = %17
  %34 = call i32* @opendir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %34, i32** %2, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @LOG_ERR, align 4
  %38 = load i32, i32* @BootDir, align 4
  %39 = call i32 @syslog(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i32 0, i32* %1, align 4
  br label %99

40:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = call %struct.dirent* @readdir(i32* %41)
  store %struct.dirent* %42, %struct.dirent** %4, align 8
  br label %43

43:                                               ; preds = %85, %40
  %44 = load %struct.dirent*, %struct.dirent** %4, align 8
  %45 = icmp ne %struct.dirent* %44, null
  br i1 %45, label %46, label %88

46:                                               ; preds = %43
  %47 = load %struct.dirent*, %struct.dirent** %4, align 8
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @stat(i32 %49, %struct.stat* %3)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @S_IFMT, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @S_IFREG, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52, %46
  br label %85

60:                                               ; preds = %52
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @C_MAXFILE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* @LOG_ERR, align 4
  %66 = load %struct.dirent*, %struct.dirent** %4, align 8
  %67 = getelementptr inbounds %struct.dirent, %struct.dirent* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @syslog(i32 %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %84

70:                                               ; preds = %60
  %71 = load %struct.dirent*, %struct.dirent** %4, align 8
  %72 = getelementptr inbounds %struct.dirent, %struct.dirent* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32* @NewStr(i32 %73)
  %75 = load i32**, i32*** @BootFiles, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  store i32* %74, i32** %78, align 8
  %79 = icmp ne i32* %74, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %70
  br label %84

84:                                               ; preds = %83, %64
  br label %85

85:                                               ; preds = %84, %59
  %86 = load i32*, i32** %2, align 8
  %87 = call %struct.dirent* @readdir(i32* %86)
  store %struct.dirent* %87, %struct.dirent** %4, align 8
  br label %43

88:                                               ; preds = %43
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @closedir(i32* %89)
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @LOG_ERR, align 4
  %95 = load i32, i32* @BootDir, align 4
  %96 = call i32 @syslog(i32 %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %1, align 4
  br label %99

99:                                               ; preds = %97, %36
  %100 = load i32, i32* %1, align 4
  ret i32 %100
}

declare dso_local i32 @FreeStr(i32*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32* @NewStr(i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
