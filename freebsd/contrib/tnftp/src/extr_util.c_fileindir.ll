; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_fileindir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_fileindir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to determine real path of `%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fileindir(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = trunc i64 %14 to i32
  %23 = call i32 @strlcpy(i8* %16, i8* %21, i32 %22)
  %24 = call i8* @dirname(i8* %16)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %63

29:                                               ; preds = %2
  %30 = load i8*, i8** %8, align 8
  %31 = call i32* @realpath(i8* %30, i8* %20)
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %63

36:                                               ; preds = %29
  %37 = getelementptr inbounds i8, i8* %20, i64 0
  %38 = load i8, i8* %37, align 16
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 47
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %63

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @strlen(i8* %43)
  store i64 %44, i64* %10, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i64 @strncmp(i8* %20, i8* %45, i64 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i8, i8* %20, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 47
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i8, i8* %20, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %49
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %63

62:                                               ; preds = %55, %42
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %63

63:                                               ; preds = %62, %61, %41, %33, %28
  %64 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @dirname(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
