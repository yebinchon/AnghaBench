; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_prutils.c_PrOpenIncludeFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_prutils.c_PrOpenIncludeFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, %struct.TYPE_3__* }

@AslGbl_CurrentLineOffset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AslGbl_DirectoryPath = common dso_local global i8* null, align 8
@AslGbl_IncludeDirList = common dso_local global %struct.TYPE_3__* null, align 8
@AslGbl_MainTokenBuffer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s, %s\00", align 1
@errno = common dso_local global i32 0, align 4
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_INCLUDE_FILE_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PrOpenIncludeFile(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i32, i32* @AslGbl_CurrentLineOffset, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @AslGbl_CurrentLineOffset, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 47
  br i1 %16, label %29, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 92
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 58
  br i1 %28, label %29, label %39

29:                                               ; preds = %23, %17, %3
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = call i32* @PrOpenIncludeWithPrefix(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31, i8** %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %71

37:                                               ; preds = %29
  %38 = load i32*, i32** %8, align 8
  store i32* %38, i32** %4, align 8
  br label %80

39:                                               ; preds = %23
  %40 = load i8*, i8** @AslGbl_DirectoryPath, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8**, i8*** %7, align 8
  %44 = call i32* @PrOpenIncludeWithPrefix(i8* %40, i8* %41, i8* %42, i8** %43)
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32*, i32** %8, align 8
  store i32* %48, i32** %4, align 8
  br label %80

49:                                               ; preds = %39
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AslGbl_IncludeDirList, align 8
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %9, align 8
  br label %51

51:                                               ; preds = %66, %49
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i8**, i8*** %7, align 8
  %61 = call i32* @PrOpenIncludeWithPrefix(i8* %57, i8* %58, i8* %59, i8** %60)
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32*, i32** %8, align 8
  store i32* %65, i32** %4, align 8
  br label %80

66:                                               ; preds = %54
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  store %struct.TYPE_3__* %69, %struct.TYPE_3__** %9, align 8
  br label %51

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70, %36
  %72 = load i32, i32* @AslGbl_MainTokenBuffer, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* @errno, align 4
  %75 = call i8* @strerror(i32 %74)
  %76 = call i32 @sprintf(i32 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %73, i8* %75)
  %77 = load i32, i32* @ASL_ERROR, align 4
  %78 = load i32, i32* @ASL_MSG_INCLUDE_FILE_OPEN, align 4
  %79 = call i32 @PrError(i32 %77, i32 %78, i32 0)
  store i32* null, i32** %4, align 8
  br label %80

80:                                               ; preds = %71, %64, %47, %37
  %81 = load i32*, i32** %4, align 8
  ret i32* %81
}

declare dso_local i32* @PrOpenIncludeWithPrefix(i8*, i8*, i8*, i8**) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @PrError(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
