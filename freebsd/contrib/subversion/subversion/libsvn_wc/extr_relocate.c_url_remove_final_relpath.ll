; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_relocate.c_url_remove_final_relpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_relocate.c_url_remove_final_relpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32*, i32*)* @url_remove_final_relpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @url_remove_final_relpath(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @apr_pstrdup(i32* %13, i8* %14)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @svn_path_is_url(i8* %16)
  %18 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %17)
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @svn_relpath_is_canonical(i8* %19)
  %21 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %20)
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i8*, i8** %10, align 8
  store i8* %28, i8** %5, align 8
  br label %72

29:                                               ; preds = %4
  %30 = load i8*, i8** %7, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i8* @svn_path_uri_encode(i8* %30, i32* %31)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 -1
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = getelementptr inbounds i8, i8* %43, i64 -1
  store i8* %44, i8** %12, align 8
  br label %45

45:                                               ; preds = %58, %29
  %46 = load i8*, i8** %12, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp uge i8* %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load i8*, i8** %11, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8*, i8** %12, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i8* null, i8** %5, align 8
  br label %72

58:                                               ; preds = %49
  %59 = load i8*, i8** %12, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 -1
  store i8* %60, i8** %12, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %62, i8** %11, align 8
  br label %45

63:                                               ; preds = %45
  %64 = load i8*, i8** %11, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 47
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i8* null, i8** %5, align 8
  br label %72

69:                                               ; preds = %63
  %70 = load i8*, i8** %11, align 8
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %10, align 8
  store i8* %71, i8** %5, align 8
  br label %72

72:                                               ; preds = %69, %68, %57, %27
  %73 = load i8*, i8** %5, align 8
  ret i8* %73
}

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT_NO_RETURN(i32) #1

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

declare dso_local i8* @svn_path_uri_encode(i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
