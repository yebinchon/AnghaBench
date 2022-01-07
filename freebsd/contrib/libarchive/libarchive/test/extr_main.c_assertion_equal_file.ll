; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_assertion_equal_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_assertion_equal_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Files not identical\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"  file1=\22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"  file2=\22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assertion_equal_file(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @assertion_count(i8* %16, i32 %17)
  %19 = load i8*, i8** %8, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %12, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32*, i32** %13, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %25, %4
  %29 = load i32*, i32** %12, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @fclose(i32* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32*, i32** %13, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @fclose(i32* %38)
  br label %40

40:                                               ; preds = %37, %34
  store i32 0, i32* %5, align 4
  br label %87

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %73, %41
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %44 = load i32*, i32** %12, align 8
  %45 = call i64 @fread(i8* %43, i32 1, i32 1024, i32* %44)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %14, align 4
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %48 = load i32*, i32** %13, align 8
  %49 = call i64 @fread(i8* %47, i32 1, i32 1024, i32* %48)
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %74

55:                                               ; preds = %42
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32, i32* %15, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @fclose(i32* %62)
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @fclose(i32* %64)
  store i32 1, i32* %5, align 4
  br label %87

66:                                               ; preds = %58, %55
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %69 = load i32, i32* %14, align 4
  %70 = call i64 @memcmp(i8* %67, i8* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %74

73:                                               ; preds = %66
  br label %42

74:                                               ; preds = %72, %54
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @fclose(i32* %75)
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @fclose(i32* %77)
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @failure_start(i8* %79, i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @logprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @logprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  %86 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %74, %61, %40
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @assertion_count(i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @failure_start(i8*, i32, i8*) #1

declare dso_local i32 @logprintf(i8*, i8*) #1

declare dso_local i32 @failure_finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
