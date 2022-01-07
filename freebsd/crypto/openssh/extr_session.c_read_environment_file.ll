; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_read_environment_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_read_environment_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Too many lines in environment file %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Bad line %u in %.100s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8***, i32*, i8*, i8*)* @read_environment_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_environment_file(i8*** %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8***, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8*** %0, i8**** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %102

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %91, %90, %74, %64, %20
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @getline(i8** %10, i64* %13, i32* %22)
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %97

25:                                               ; preds = %21
  %26 = load i32, i32* %14, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %14, align 4
  %28 = icmp sgt i32 %27, 1000
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @fatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i8*, i8** %10, align 8
  store i8* %33, i8** %11, align 8
  br label %34

34:                                               ; preds = %47, %32
  %35 = load i8*, i8** %11, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 32
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %11, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 9
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i1 [ true, %34 ], [ %43, %39 ]
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %11, align 8
  br label %34

50:                                               ; preds = %44
  %51 = load i8*, i8** %11, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i8*, i8** %11, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 35
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %11, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 10
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %54, %50
  br label %21

65:                                               ; preds = %59
  %66 = load i8*, i8** %11, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call i64 @strcspn(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %11, align 8
  %71 = call i8* @strchr(i8* %70, i8 signext 61)
  store i8* %71, i8** %12, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = load i32, i32* @stderr, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %76, i8* %77)
  br label %21

79:                                               ; preds = %65
  %80 = load i8*, i8** %12, align 8
  store i8 0, i8* %80, align 1
  %81 = load i8*, i8** %12, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %12, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load i8*, i8** %11, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @match_pattern_list(i8* %86, i8* %87, i32 0)
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %21

91:                                               ; preds = %85, %79
  %92 = load i8***, i8**** %5, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 @child_set_env(i8*** %92, i32* %93, i8* %94, i8* %95)
  br label %21

97:                                               ; preds = %21
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @fclose(i32* %100)
  br label %102

102:                                              ; preds = %97, %19
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @fatal(i8*, i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i32 @match_pattern_list(i8*, i8*, i32) #1

declare dso_local i32 @child_set_env(i8***, i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
