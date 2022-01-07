; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dialog_util.c_x11_maxsize_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dialog_util.c_x11_maxsize_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16, i16 }

@LINE_MAX = common dso_local global i32 0, align 4
@maxsize = common dso_local global %struct.TYPE_3__* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Out of memory?!\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s --print-maxsize 2>&1\00", align 1
@dialog = common dso_local global i8* null, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@debug = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"WARNING! Command `%s' failed\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Xdialog: Error\00", align 1
@USHRT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @x11_maxsize_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x11_maxsize_update() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %9 = load i32, i32* @LINE_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @LINE_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @maxsize, align 8
  %17 = icmp eq %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %0
  %19 = call %struct.TYPE_3__* @malloc(i32 4)
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** @maxsize, align 8
  %20 = icmp eq %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = call i32 @errx(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @maxsize, align 8
  %26 = bitcast %struct.TYPE_3__* %25 to i8*
  %27 = call i32 @memset(i8* %26, i8 signext 0, i32 4)
  br label %28

28:                                               ; preds = %24, %0
  %29 = load i32, i32* @LINE_MAX, align 4
  %30 = load i8*, i8** @dialog, align 8
  %31 = call i32 @snprintf(i8* %12, i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @STDIN_FILENO, align 4
  %33 = call i32 @fflush(i32 %32)
  %34 = call i32* @popen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %34, i32** %1, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i64, i64* @debug, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %12)
  br label %41

41:                                               ; preds = %39, %36
  store i32 1, i32* %8, align 4
  br label %86

42:                                               ; preds = %28
  %43 = load i32, i32* @LINE_MAX, align 4
  %44 = load i32*, i32** %1, align 8
  %45 = call i32* @fgets(i8* %15, i32 %43, i32* %44)
  %46 = icmp eq i32* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32*, i32** %1, align 8
  %49 = call i64 @pclose(i32* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %42
  store i32 1, i32* %8, align 4
  br label %86

52:                                               ; preds = %47
  %53 = call i64 @strncmp(i8* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 14)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  br label %86

56:                                               ; preds = %52
  %57 = call i8* @strchr(i8* %15, i8 signext 32)
  store i8* %57, i8** %4, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 1, i32* %8, align 4
  br label %86

60:                                               ; preds = %56
  %61 = load i8*, i8** %4, align 8
  %62 = call i8* @strchr(i8* %61, i8 signext 44)
  store i8* %62, i8** %2, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i8*, i8** %2, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %2, align 8
  store i8 0, i8* %65, align 1
  %67 = load i8*, i8** %2, align 8
  %68 = call i8* @strchr(i8* %67, i8 signext 10)
  store i8* %68, i8** %3, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i8*, i8** %3, align 8
  store i8 0, i8* %71, align 1
  br label %72

72:                                               ; preds = %70, %64
  br label %73

73:                                               ; preds = %72, %60
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* @USHRT_MAX, align 4
  %76 = call i64 @strtonum(i8* %74, i32 0, i32 %75, i8** null)
  %77 = trunc i64 %76 to i16
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @maxsize, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i16 %77, i16* %79, align 2
  %80 = load i8*, i8** %2, align 8
  %81 = load i32, i32* @USHRT_MAX, align 4
  %82 = call i64 @strtonum(i8* %80, i32 0, i32 %81, i8** null)
  %83 = trunc i64 %82 to i16
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** @maxsize, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i16 %83, i16* %85, align 2
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %73, %59, %55, %51, %41
  %87 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %8, align 4
  switch i32 %88, label %90 [
    i32 0, label %89
    i32 1, label %89
  ]

89:                                               ; preds = %86, %86
  ret void

90:                                               ; preds = %86
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_3__* @malloc(i32) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32* @popen(i8*, i8*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @pclose(i32*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strtonum(i8*, i32, i32, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
