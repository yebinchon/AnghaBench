; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/kldload/extr_kldload.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/kldload/extr_kldload.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"nqv\00", align 1
@optind = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s is already loaded\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"can't load %s: module already loaded or in kernel\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"an error occurred while loading module %s. Please check dmesg(8) for more details.\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"can't load %s\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Loaded %s, id=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %24, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %22 [
    i32 113, label %19
    i32 118, label %20
    i32 110, label %21
  ]

19:                                               ; preds = %17
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %24

20:                                               ; preds = %17
  store i32 1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %24

21:                                               ; preds = %17
  store i32 1, i32* %7, align 4
  br label %24

22:                                               ; preds = %17
  %23 = call i32 (...) @usage()
  br label %24

24:                                               ; preds = %22, %21, %20, %19
  br label %12

25:                                               ; preds = %12
  %26 = load i64, i64* @optind, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load i64, i64* @optind, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 %31
  store i8** %33, i8*** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = call i32 (...) @usage()
  br label %38

38:                                               ; preds = %36, %25
  br label %39

39:                                               ; preds = %107, %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %4, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %43, label %110

43:                                               ; preds = %39
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @path_check(i8* %46, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %104

50:                                               ; preds = %43
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @kldload(i8* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %93

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load i32, i32* @errno, align 4
  %62 = icmp eq i32 %61, 129
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %66, %63
  br label %92

72:                                               ; preds = %60, %57
  %73 = load i32, i32* @errno, align 4
  switch i32 %73, label %84 [
    i32 129, label %74
    i32 128, label %79
  ]

74:                                               ; preds = %72
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @warnx(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  br label %89

79:                                               ; preds = %72
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @warnx(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  br label %89

84:                                               ; preds = %72
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %84, %79, %74
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %89, %71
  br label %103

93:                                               ; preds = %50
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %99, i32 %100)
  br label %102

102:                                              ; preds = %96, %93
  br label %103

103:                                              ; preds = %102, %92
  br label %107

104:                                              ; preds = %43
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %104, %103
  %108 = load i8**, i8*** %5, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i32 1
  store i8** %109, i8*** %5, align 8
  br label %39

110:                                              ; preds = %39
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 1, i32 0
  ret i32 %114
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @path_check(i8*, i32) #1

declare dso_local i32 @kldload(i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
