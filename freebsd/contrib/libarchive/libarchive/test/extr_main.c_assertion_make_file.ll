; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_assertion_make_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_assertion_make_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Could not create %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Could not chmod %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Could not write to %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assertion_make_file(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @assertion_count(i8* %16, i32 %17)
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* @O_CREAT, align 4
  %21 = load i32, i32* @O_WRONLY, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %11, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %11, align 4
  br label %28

27:                                               ; preds = %6
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 420, %27 ]
  %30 = call i32 @open(i8* %19, i32 %22, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @failure_start(i8* %34, i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %7, align 4
  br label %90

39:                                               ; preds = %28
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @chmod(i8* %40, i32 %41)
  %43 = icmp ne i64 0, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @failure_start(i8* %45, i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = call i32 @failure_finish(i32* null)
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @close(i32 %50)
  store i32 0, i32* %7, align 4
  br label %90

52:                                               ; preds = %39
  %53 = load i8*, i8** %13, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i8*, i8** %13, align 8
  %60 = call i64 @strlen(i8* %59)
  store i64 %60, i64* %15, align 8
  br label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %15, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i64, i64* %15, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load i8*, i8** %13, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i64 @write(i32 %66, i8* %67, i64 %68)
  %70 = icmp ne i64 %65, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %64
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @close(i32 %72)
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @failure_start(i8* %74, i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  %78 = call i32 @failure_finish(i32* null)
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @close(i32 %79)
  store i32 0, i32* %7, align 4
  br label %90

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81, %52
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @close(i32 %83)
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @assertion_file_mode(i8* %85, i32 %86, i8* %87, i32 %88)
  store i32 1, i32* %7, align 4
  br label %90

90:                                               ; preds = %82, %71, %44, %33
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i32 @assertion_count(i8*, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @failure_start(i8*, i32, i8*, i8*) #1

declare dso_local i32 @failure_finish(i32*) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @assertion_file_mode(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
