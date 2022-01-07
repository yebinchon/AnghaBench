; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_copy_reference_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_copy_reference_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@refdir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Couldn't open reference file %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Error: fwrite\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_reference_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %8 = load i8*, i8** @refdir, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %8, i8* %9)
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %12, i32** %4, align 8
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %14 = call i32 @failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %45

22:                                               ; preds = %1
  %23 = load i8*, i8** %2, align 8
  %24 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %24, i32** %5, align 8
  br label %25

25:                                               ; preds = %39, %22
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @fread(i8* %26, i32 1, i32 1024, i32* %27)
  store i64 %28, i64* %6, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %32 = load i64, i64* %6, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @fwrite(i8* %31, i32 1, i64 %32, i32* %33)
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 @logprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %40

39:                                               ; preds = %30
  br label %25

40:                                               ; preds = %37, %25
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @fclose(i32* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @fclose(i32* %43)
  br label %45

45:                                               ; preds = %40, %21
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @failure(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @logprintf(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
