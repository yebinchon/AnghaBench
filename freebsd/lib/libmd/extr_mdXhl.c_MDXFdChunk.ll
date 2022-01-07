; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmd/extr_mdXhl.c_MDXFdChunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmd/extr_mdXhl.c_MDXFdChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @MDXFdChunk(i32 %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [16384 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* @EINVAL, align 8
  store i64 %19, i64* @errno, align 8
  store i8* null, i8** %5, align 8
  br label %84

20:                                               ; preds = %4
  %21 = call i32 @MDXInit(i32* %11)
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  store i64 0, i64* @errno, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* @SEEK_SET, align 4
  %28 = call i64 @lseek(i32 %25, i64 %26, i32 %27)
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %32, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i64, i64* @errno, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %24
  store i32 -1, i32* %13, align 4
  br label %77

38:                                               ; preds = %34, %31
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %68, %39
  %42 = load i64, i64* %9, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %15, align 8
  %46 = icmp sgt i64 %45, 0
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i1 [ true, %41 ], [ %46, %44 ]
  br i1 %48, label %49, label %76

49:                                               ; preds = %47
  %50 = load i64, i64* %9, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %15, align 8
  %54 = icmp ugt i64 %53, 16384
  br i1 %54, label %55, label %59

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %6, align 4
  %57 = getelementptr inbounds [16384 x i8], [16384 x i8]* %10, i64 0, i64 0
  %58 = call i32 @read(i32 %56, i8* %57, i64 16384)
  store i32 %58, i32* %13, align 4
  br label %64

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = getelementptr inbounds [16384 x i8], [16384 x i8]* %10, i64 0, i64 0
  %62 = load i64, i64* %15, align 8
  %63 = call i32 @read(i32 %60, i8* %61, i64 %62)
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %59, %55
  %65 = load i32, i32* %13, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %76

68:                                               ; preds = %64
  %69 = getelementptr inbounds [16384 x i8], [16384 x i8]* %10, i64 0, i64 0
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @MDXUpdate(i32* %11, i8* %69, i32 %70)
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %15, align 8
  %75 = sub nsw i64 %74, %73
  store i64 %75, i64* %15, align 8
  br label %41

76:                                               ; preds = %67, %47
  br label %77

77:                                               ; preds = %76, %37
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i8* null, i8** %5, align 8
  br label %84

81:                                               ; preds = %77
  %82 = load i8*, i8** %7, align 8
  %83 = call i8* @MDXEnd(i32* %11, i8* %82)
  store i8* %83, i8** %5, align 8
  br label %84

84:                                               ; preds = %81, %80, %18
  %85 = load i8*, i8** %5, align 8
  ret i8* %85
}

declare dso_local i32 @MDXInit(i32*) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @MDXUpdate(i32*, i8*, i32) #1

declare dso_local i8* @MDXEnd(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
