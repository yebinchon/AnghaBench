; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_manpath.c_manpath_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_manpath.c_manpath_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.manpaths = type { i64, i32* }
%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@MANDOCERR_BADARG_BAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"-%c %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.manpaths*, i8*, i8)* @manpath_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @manpath_add(%struct.manpaths* %0, i8* %1, i8 signext %2) #0 {
  %4 = alloca %struct.manpaths*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.manpaths* %0, %struct.manpaths** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8 %2, i8* %6, align 1
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @realpath(i8* %17, i8* %16)
  store i8* %18, i8** %10, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %70

21:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i64, i64* %11, align 8
  %24 = load %struct.manpaths*, %struct.manpaths** %4, align 8
  %25 = getelementptr inbounds %struct.manpaths, %struct.manpaths* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load %struct.manpaths*, %struct.manpaths** %4, align 8
  %30 = getelementptr inbounds %struct.manpaths, %struct.manpaths* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @strcmp(i32 %34, i8* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 1, i32* %12, align 4
  br label %82

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %11, align 8
  br label %22

43:                                               ; preds = %22
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @stat(i8* %44, %struct.stat* %9)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %70

48:                                               ; preds = %43
  %49 = load %struct.manpaths*, %struct.manpaths** %4, align 8
  %50 = getelementptr inbounds %struct.manpaths, %struct.manpaths* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.manpaths*, %struct.manpaths** %4, align 8
  %53 = getelementptr inbounds %struct.manpaths, %struct.manpaths* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  %56 = trunc i64 %55 to i32
  %57 = call i32* @mandoc_reallocarray(i32* %51, i32 %56, i32 4)
  %58 = load %struct.manpaths*, %struct.manpaths** %4, align 8
  %59 = getelementptr inbounds %struct.manpaths, %struct.manpaths* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @mandoc_strdup(i8* %60)
  %62 = load %struct.manpaths*, %struct.manpaths** %4, align 8
  %63 = getelementptr inbounds %struct.manpaths, %struct.manpaths* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.manpaths*, %struct.manpaths** %4, align 8
  %66 = getelementptr inbounds %struct.manpaths, %struct.manpaths* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %61, i32* %69, align 4
  store i32 1, i32* %12, align 4
  br label %82

70:                                               ; preds = %47, %20
  %71 = load i8, i8* %6, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i32, i32* @MANDOCERR_BADARG_BAD, align 4
  %76 = load i8, i8* %6, align 1
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* @errno, align 4
  %79 = call i32 @strerror(i32 %78)
  %80 = call i32 @mandoc_msg(i32 %75, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8 signext %76, i8* %77, i32 %79)
  br label %81

81:                                               ; preds = %74, %70
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %81, %48, %38
  %83 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %12, align 4
  switch i32 %84, label %86 [
    i32 0, label %85
    i32 1, label %85
  ]

85:                                               ; preds = %82, %82
  ret void

86:                                               ; preds = %82
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @realpath(i8*, i8*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32* @mandoc_reallocarray(i32*, i32, i32) #2

declare dso_local i32 @mandoc_strdup(i8*) #2

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, i8 signext, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
