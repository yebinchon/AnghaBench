; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_path.c_svn_path_splitext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_path.c_svn_path_splitext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svn_path_splitext(i8** %0, i8** %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i8**, i8*** %6, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  br label %85

17:                                               ; preds = %13, %4
  %18 = load i8*, i8** %7, align 8
  %19 = call i8* @strrchr(i8* %18, i8 signext 46)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %72

22:                                               ; preds = %17
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %22
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @strrchr(i8* %29, i8 signext 47)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = icmp ugt i8* %34, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %33, %28
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %71, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ugt i8* %42, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %41, %33
  %46 = load i8**, i8*** %5, align 8
  %47 = icmp ne i8** %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i32*, i32** %8, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = add nsw i64 %55, 1
  %57 = mul i64 %56, 1
  %58 = trunc i64 %57 to i32
  %59 = call i8* @apr_pstrmemdup(i32* %49, i8* %50, i32 %58)
  %60 = load i8**, i8*** %5, align 8
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %48, %45
  %62 = load i8**, i8*** %6, align 8
  %63 = icmp ne i8** %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32*, i32** %8, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = call i8* @apr_pstrdup(i32* %65, i8* %67)
  %69 = load i8**, i8*** %6, align 8
  store i8* %68, i8** %69, align 8
  br label %70

70:                                               ; preds = %64, %61
  br label %85

71:                                               ; preds = %41, %38
  br label %72

72:                                               ; preds = %71, %22, %17
  %73 = load i8**, i8*** %5, align 8
  %74 = icmp ne i8** %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32*, i32** %8, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i8* @apr_pstrdup(i32* %76, i8* %77)
  %79 = load i8**, i8*** %5, align 8
  store i8* %78, i8** %79, align 8
  br label %80

80:                                               ; preds = %75, %72
  %81 = load i8**, i8*** %6, align 8
  %82 = icmp ne i8** %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %84, align 8
  br label %85

85:                                               ; preds = %16, %70, %83, %80
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i8*, i32) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
