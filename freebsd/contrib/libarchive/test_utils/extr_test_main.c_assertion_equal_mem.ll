; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_assertion_equal_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_assertion_equal_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%s != %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"      size %s = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"      Dump of %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assertion_equal_mem(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i64 %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store i8* %0, i8** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  %23 = load i8*, i8** %13, align 8
  store i8* %23, i8** %20, align 8
  %24 = load i8*, i8** %15, align 8
  store i8* %24, i8** %21, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @assertion_count(i8* %25, i32 %26)
  %28 = load i8*, i8** %20, align 8
  %29 = load i8*, i8** %21, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %44, label %31

31:                                               ; preds = %9
  %32 = load i8*, i8** %20, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i8*, i8** %21, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i8*, i8** %20, align 8
  %39 = load i8*, i8** %21, align 8
  %40 = load i64, i64* %17, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i64 @memcmp(i8* %38, i8* %39, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37, %9
  store i32 1, i32* %10, align 4
  br label %111

45:                                               ; preds = %37, %34, %31
  %46 = load i8*, i8** %20, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %21, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %45
  store i32 0, i32* %10, align 4
  br label %111

52:                                               ; preds = %48
  %53 = load i8*, i8** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i8*, i8** %14, align 8
  %56 = load i8*, i8** %16, align 8
  %57 = call i32 @failure_start(i8* %53, i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %55, i8* %56)
  %58 = load i8*, i8** %18, align 8
  %59 = load i64, i64* %17, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %58, i32 %60)
  store i64 0, i64* %22, align 8
  br label %62

62:                                               ; preds = %72, %52
  %63 = load i64, i64* %17, align 8
  %64 = icmp ugt i64 %63, 64
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i8*, i8** %20, align 8
  %67 = load i8*, i8** %21, align 8
  %68 = call i64 @memcmp(i8* %66, i8* %67, i32 32)
  %69 = icmp eq i64 %68, 0
  br label %70

70:                                               ; preds = %65, %62
  %71 = phi i1 [ false, %62 ], [ %69, %65 ]
  br i1 %71, label %72, label %81

72:                                               ; preds = %70
  %73 = load i8*, i8** %20, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 16
  store i8* %74, i8** %20, align 8
  %75 = load i8*, i8** %21, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 16
  store i8* %76, i8** %21, align 8
  %77 = load i64, i64* %17, align 8
  %78 = sub i64 %77, 16
  store i64 %78, i64* %17, align 8
  %79 = load i64, i64* %22, align 8
  %80 = add i64 %79, 16
  store i64 %80, i64* %22, align 8
  br label %62

81:                                               ; preds = %70
  %82 = load i8*, i8** %14, align 8
  %83 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  %84 = load i8*, i8** %20, align 8
  %85 = load i8*, i8** %21, align 8
  %86 = load i64, i64* %17, align 8
  %87 = icmp ult i64 %86, 128
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i64, i64* %17, align 8
  br label %91

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i64 [ %89, %88 ], [ 128, %90 ]
  %93 = load i64, i64* %22, align 8
  %94 = call i32 @hexdump(i8* %84, i8* %85, i64 %92, i64 %93)
  %95 = load i8*, i8** %16, align 8
  %96 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  %97 = load i8*, i8** %21, align 8
  %98 = load i8*, i8** %20, align 8
  %99 = load i64, i64* %17, align 8
  %100 = icmp ult i64 %99, 128
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i64, i64* %17, align 8
  br label %104

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi i64 [ %102, %101 ], [ 128, %103 ]
  %106 = load i64, i64* %22, align 8
  %107 = call i32 @hexdump(i8* %97, i8* %98, i64 %105, i64 %106)
  %108 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i8*, i8** %19, align 8
  %110 = call i32 @failure_finish(i8* %109)
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %104, %51, %44
  %112 = load i32, i32* %10, align 4
  ret i32 %112
}

declare dso_local i32 @assertion_count(i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @failure_start(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @logprintf(i8*, ...) #1

declare dso_local i32 @hexdump(i8*, i8*, i64, i64) #1

declare dso_local i32 @failure_finish(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
