; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_benchFiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_benchFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"unable to load files\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unable to load dictionary\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\0D%79s\0D\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"using %s : \0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"using %d Files : \0A\00", align 1
@g_singleRun = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i8*, i32)* @benchFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @benchFiles(i8** %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @createBuffers(i32* %10, i8** %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %57

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @createContexts(i32* %11, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @freeBuffers(i32 %25)
  store i32 2, i32* %5, align 4
  br label %57

27:                                               ; preds = %19
  %28 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i8**, i8*** %6, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %34)
  br label %39

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i64, i64* @g_singleRun, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @benchOnce(i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  br label %51

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @BMK_generate_cLevelTable(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @freeBuffers(i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @freeContexts(i32 %54)
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %51, %23, %17
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @createBuffers(i32*, i8**, i32) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i64 @createContexts(i32*, i8*) #1

declare dso_local i32 @freeBuffers(i32) #1

declare dso_local i32 @benchOnce(i32, i32, i32) #1

declare dso_local i32 @BMK_generate_cLevelTable(i32, i32) #1

declare dso_local i32 @freeContexts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
