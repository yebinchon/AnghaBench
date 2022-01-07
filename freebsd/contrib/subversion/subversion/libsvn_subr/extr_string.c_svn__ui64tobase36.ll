; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_string.c_svn__ui64tobase36.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_string.c_svn__ui64tobase36.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_INT64_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn__ui64tobase36(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = trunc i32 %14 to i8
  %16 = sext i8 %15 to i32
  %17 = add nsw i32 %16, 48
  %18 = trunc i32 %17 to i8
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %3, align 8
  store i8 %18, i8* %19, align 1
  br label %65

21:                                               ; preds = %2
  %22 = load i32, i32* @SVN_INT64_BUFFER_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %47, %21
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = srem i32 %30, 36
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %9, align 1
  %33 = load i32, i32* %4, align 4
  %34 = sdiv i32 %33, 36
  store i32 %34, i32* %4, align 4
  %35 = load i8, i8* %9, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sle i32 %36, 9
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i8, i8* %9, align 1
  %40 = sext i8 %39 to i32
  %41 = add nsw i32 %40, 48
  br label %47

42:                                               ; preds = %29
  %43 = load i8, i8* %9, align 1
  %44 = sext i8 %43 to i32
  %45 = sub nsw i32 %44, 10
  %46 = add nsw i32 %45, 97
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi i32 [ %41, %38 ], [ %46, %42 ]
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %8, align 8
  store i8 %49, i8* %50, align 1
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 8
  br label %26

53:                                               ; preds = %26
  br label %54

54:                                               ; preds = %57, %53
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ugt i8* %55, %25
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 -1
  store i8* %59, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %3, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %3, align 8
  store i8 %60, i8* %61, align 1
  br label %54

63:                                               ; preds = %54
  %64 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %64)
  br label %65

65:                                               ; preds = %63, %13
  %66 = load i8*, i8** %3, align 8
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %3, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
