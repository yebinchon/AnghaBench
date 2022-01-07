; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/test/extr_test_copy.c_create_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/test/extr_test_copy.c_create_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Symlink checks\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"original\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Internal sanity check failed: i = %d\00", align 1
@filenames = common dso_local global i8** null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"f/%s\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"l/%s\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"m/%s\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"s/%s\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"../f/%s\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"buff=\22%s\22 buff2=\22%s\22\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"buff=\22%s\22\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @create_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_tree() #0 {
  %1 = alloca [260 x i8], align 16
  %2 = alloca [260 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @compute_filenames()
  %6 = call i64 (...) @canSymlink()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 @skipping(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  %11 = call i32 @assertMakeDir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 509)
  %12 = call i32 @chdir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @assertEqualInt(i32 0, i32 %12)
  %14 = call i32 (...) @compute_loop_max()
  store i32 %14, i32* %4, align 4
  %15 = call i32 @assertMakeDir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 509)
  %16 = call i32 @assertMakeDir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 509)
  %17 = call i32 @assertMakeDir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 509)
  %18 = call i32 @assertMakeDir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 509)
  %19 = call i32 @assertMakeDir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 509)
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %94, %10
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %97

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %25)
  %27 = load i8**, i8*** @filenames, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 0
  %36 = load i8**, i8*** @filenames, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %40)
  %42 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 0
  %43 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 0
  %44 = call i32 @assertMakeFile(i8* %42, i32 511, i8* %43)
  %45 = getelementptr inbounds [260 x i8], [260 x i8]* %2, i64 0, i64 0
  %46 = load i8**, i8*** @filenames, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %50)
  %52 = getelementptr inbounds [260 x i8], [260 x i8]* %2, i64 0, i64 0
  %53 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 0
  %54 = call i32 @assertMakeHardlink(i8* %52, i8* %53)
  %55 = getelementptr inbounds [260 x i8], [260 x i8]* %2, i64 0, i64 0
  %56 = load i8**, i8*** @filenames, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %60)
  %62 = getelementptr inbounds [260 x i8], [260 x i8]* %2, i64 0, i64 0
  %63 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 0
  %64 = call i32 @assertMakeHardlink(i8* %62, i8* %63)
  %65 = call i64 (...) @canSymlink()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %24
  %68 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 0
  %69 = load i8**, i8*** @filenames, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %73)
  %75 = getelementptr inbounds [260 x i8], [260 x i8]* %2, i64 0, i64 0
  %76 = load i8**, i8*** @filenames, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @sprintf(i8* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* %80)
  %82 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 0
  %83 = getelementptr inbounds [260 x i8], [260 x i8]* %2, i64 0, i64 0
  %84 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* %82, i8* %83)
  %85 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 0
  %86 = getelementptr inbounds [260 x i8], [260 x i8]* %2, i64 0, i64 0
  %87 = call i32 @assertMakeSymlink(i8* %85, i8* %86, i32 0)
  br label %88

88:                                               ; preds = %67, %24
  %89 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 0
  store i8 100, i8* %89, align 16
  %90 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 0
  %91 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* %90)
  %92 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 0
  %93 = call i32 @assertMakeDir(i8* %92, i32 509)
  br label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %20

97:                                               ; preds = %20
  %98 = call i32 @chdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %99 = call i32 @assertEqualInt(i32 0, i32 %98)
  ret void
}

declare dso_local i32 @compute_filenames(...) #1

declare dso_local i64 @canSymlink(...) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @assertMakeDir(i8*, i32) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @compute_loop_max(...) #1

declare dso_local i32 @failure(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @assertMakeFile(i8*, i32, i8*) #1

declare dso_local i32 @assertMakeHardlink(i8*, i8*) #1

declare dso_local i32 @assertMakeSymlink(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
