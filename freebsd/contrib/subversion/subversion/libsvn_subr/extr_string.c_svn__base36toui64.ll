; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_string.c_svn__base36toui64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_string.c_svn__base36toui64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_INT64_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn__base36toui64(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @SVN_INT64_BUFFER_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  br label %15

15:                                               ; preds = %53, %2
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, %12
  br i1 %18, label %19, label %61

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %10, align 1
  %22 = load i8, i8* %10, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp slt i32 %23, 97
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load i8, i8* %10, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp slt i32 %27, 48
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i8, i8* %10, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sgt i32 %31, 57
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25
  br label %61

34:                                               ; preds = %29
  %35 = load i8, i8* %10, align 1
  %36 = sext i8 %35 to i32
  %37 = sub nsw i32 %36, 48
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %10, align 1
  br label %53

39:                                               ; preds = %19
  %40 = load i8, i8* %10, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp slt i32 %41, 97
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i8, i8* %10, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sgt i32 %45, 122
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %39
  br label %61

48:                                               ; preds = %43
  %49 = load i8, i8* %10, align 1
  %50 = sext i8 %49 to i32
  %51 = sub nsw i32 %50, 87
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %10, align 1
  br label %53

53:                                               ; preds = %48, %34
  %54 = load i8, i8* %10, align 1
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %14, i64 %57
  store i8 %54, i8* %58, align 1
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %4, align 8
  br label %15

61:                                               ; preds = %47, %33, %15
  br label %62

62:                                               ; preds = %65, %61
  %63 = load i32, i32* %7, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %14, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = mul nsw i32 %66, %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = mul nsw i32 %76, 36
  store i32 %77, i32* %6, align 4
  br label %62

78:                                               ; preds = %62
  %79 = load i8**, i8*** %3, align 8
  %80 = icmp ne i8** %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i8*, i8** %4, align 8
  %83 = load i8**, i8*** %3, align 8
  store i8* %82, i8** %83, align 8
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %5, align 4
  %86 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %86)
  ret i32 %85
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
