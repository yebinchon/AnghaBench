; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/TEST/extr_tc1.c_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/TEST/extr_tc1.c_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32* }
%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@CC_ERROR = common dso_local global i32 0, align 4
@CC_REFRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32*, i32)* @complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @complete(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call i32* @opendir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.TYPE_3__* @el_line(i32* %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %8, align 8
  %14 = load i32, i32* @CC_ERROR, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 -1
  store i8* %18, i8** %7, align 8
  br label %19

19:                                               ; preds = %33, %2
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @isspace(i8 zeroext %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ugt i8* %25, %28
  br label %30

30:                                               ; preds = %24, %19
  %31 = phi i1 [ false, %19 ], [ %29, %24 ]
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %32
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %35, i8** %7, align 8
  br label %19

36:                                               ; preds = %30
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  %42 = ptrtoint i8* %39 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = call %struct.dirent* @readdir(i32* %46)
  store %struct.dirent* %47, %struct.dirent** %6, align 8
  br label %48

48:                                               ; preds = %83, %36
  %49 = load %struct.dirent*, %struct.dirent** %6, align 8
  %50 = icmp ne %struct.dirent* %49, null
  br i1 %50, label %51, label %86

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.dirent*, %struct.dirent** %6, align 8
  %54 = getelementptr inbounds %struct.dirent, %struct.dirent* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @strlen(i32* %55)
  %57 = icmp sgt i32 %52, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %83

59:                                               ; preds = %51
  %60 = load %struct.dirent*, %struct.dirent** %6, align 8
  %61 = getelementptr inbounds %struct.dirent, %struct.dirent* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @strncmp(i32* %62, i8* %63, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %59
  %68 = load i32*, i32** %3, align 8
  %69 = load %struct.dirent*, %struct.dirent** %6, align 8
  %70 = getelementptr inbounds %struct.dirent, %struct.dirent* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 @el_insertstr(i32* %68, i32* %74)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i32, i32* @CC_ERROR, align 4
  store i32 %78, i32* %10, align 4
  br label %81

79:                                               ; preds = %67
  %80 = load i32, i32* @CC_REFRESH, align 4
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %79, %77
  br label %86

82:                                               ; preds = %59
  br label %83

83:                                               ; preds = %82, %58
  %84 = load i32*, i32** %5, align 8
  %85 = call %struct.dirent* @readdir(i32* %84)
  store %struct.dirent* %85, %struct.dirent** %6, align 8
  br label %48

86:                                               ; preds = %81, %48
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @closedir(i32* %87)
  %89 = load i32, i32* %10, align 4
  %90 = trunc i32 %89 to i8
  ret i8 %90
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.TYPE_3__* @el_line(i32*) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @el_insertstr(i32*, i32*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
