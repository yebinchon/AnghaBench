; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch.c_svn_branch__id_unnest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch.c_svn_branch__id_unnest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svn_branch__id_unnest(i8** %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i8* @strrchr(i8* %10, i8 signext 46)
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = call i8* @apr_pstrndup(i32* %15, i8* %16, i32 %22)
  %24 = load i8**, i8*** %5, align 8
  store i8* %23, i8** %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = call i32 @atoi(i8* %26)
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  br label %35

29:                                               ; preds = %4
  %30 = load i8**, i8*** %5, align 8
  store i8* null, i8** %30, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i32 @atoi(i8* %32)
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %14
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @apr_pstrndup(i32*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
