; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_filter_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_filter_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32 (i8*)*, i32*)* @filter_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @filter_props(i32* %0, i32* %1, i32 (i8*)* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32 (i8*)*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 (i8*)* %2, i32 (i8*)** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32* @apr_hash_make(i32* %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %5, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32* @apr_hash_first(i32* %16, i32* %17)
  store i32* %18, i32** %9, align 8
  br label %19

19:                                               ; preds = %44, %4
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = load i32*, i32** %9, align 8
  %24 = call i8* @apr_hash_this_key(i32* %23)
  store i8* %24, i8** %11, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i8* @apr_hash_this_val(i32* %25)
  store i8* %26, i8** %12, align 8
  %27 = load i32 (i8*)*, i32 (i8*)** %7, align 8
  %28 = icmp ne i32 (i8*)* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i32 (i8*)*, i32 (i8*)** %7, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 %30(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29, %22
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @svn_hash_sets(i32* %35, i8* %36, i8* %37)
  br label %43

39:                                               ; preds = %29
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %39, %34
  br label %44

44:                                               ; preds = %43
  %45 = load i32*, i32** %9, align 8
  %46 = call i32* @apr_hash_next(i32* %45)
  store i32* %46, i32** %9, align 8
  br label %19

47:                                               ; preds = %19
  %48 = load i32*, i32** %10, align 8
  ret i32* %48
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i8* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
