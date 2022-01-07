; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getusershell.c__local_initshells.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getusershell.c__local_initshells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@sl = common dso_local global i64 0, align 8
@_PATH_SHELLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"re\00", align 1
@NS_UNAVAIL = common dso_local global i32 0, align 4
@NS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @_local_initshells to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_local_initshells(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @MAXPATHLEN, align 4
  %15 = add nsw i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i64, i64* @sl, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i64, i64* @sl, align 8
  %23 = call i32 @sl_free(i64 %22, i32 1)
  br label %24

24:                                               ; preds = %21, %3
  %25 = call i64 (...) @sl_init()
  store i64 %25, i64* @sl, align 8
  %26 = load i32, i32* @_PATH_SHELLS, align 4
  %27 = call i32* @fopen(i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %27, i32** %10, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @NS_UNAVAIL, align 4
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %102

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %92, %69, %31
  %33 = load i32, i32* @MAXPATHLEN, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32*, i32** %10, align 8
  %36 = call i32* @fgets(i8* %18, i32 %34, i32* %35)
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %98

38:                                               ; preds = %32
  store i8* %18, i8** %9, align 8
  br label %39

39:                                               ; preds = %56, %38
  %40 = load i8*, i8** %9, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 35
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %49, %44, %39
  %55 = phi i1 [ false, %44 ], [ false, %39 ], [ %53, %49 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %9, align 8
  br label %39

59:                                               ; preds = %54
  %60 = load i8*, i8** %9, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 35
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load i8*, i8** %9, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %59
  br label %32

70:                                               ; preds = %64
  %71 = load i8*, i8** %9, align 8
  store i8* %71, i8** %8, align 8
  br label %72

72:                                               ; preds = %89, %70
  %73 = load i8*, i8** %9, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i32 @isspace(i8 signext %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %72
  %78 = load i8*, i8** %9, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 35
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i8*, i8** %9, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br label %87

87:                                               ; preds = %82, %77, %72
  %88 = phi i1 [ false, %77 ], [ false, %72 ], [ %86, %82 ]
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  br label %72

92:                                               ; preds = %87
  %93 = load i8*, i8** %9, align 8
  store i8 0, i8* %93, align 1
  %94 = load i64, i64* @sl, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @strdup(i8* %95)
  %97 = call i32 @sl_add(i64 %94, i32 %96)
  br label %32

98:                                               ; preds = %32
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @fclose(i32* %99)
  %101 = load i32, i32* @NS_SUCCESS, align 4
  store i32 %101, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %102

102:                                              ; preds = %98, %29
  %103 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sl_free(i64, i32) #2

declare dso_local i64 @sl_init(...) #2

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @isspace(i8 signext) #2

declare dso_local i32 @sl_add(i64, i32) #2

declare dso_local i32 @strdup(i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
