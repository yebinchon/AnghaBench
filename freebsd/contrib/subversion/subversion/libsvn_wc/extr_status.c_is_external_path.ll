; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_is_external_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_is_external_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @is_external_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_external_path(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @svn_hash_gets(i32* %10, i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %4, align 4
  br label %38

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @apr_hash_first(i32* %17, i32* %18)
  store i32* %19, i32** %8, align 8
  br label %20

20:                                               ; preds = %33, %16
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load i32*, i32** %8, align 8
  %25 = call i8* @apr_hash_this_key(i32* %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i64 @svn_dirent_is_child(i8* %26, i8* %27, i32* null)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %4, align 4
  br label %38

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load i32*, i32** %8, align 8
  %35 = call i32* @apr_hash_next(i32* %34)
  store i32* %35, i32** %8, align 8
  br label %20

36:                                               ; preds = %20
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %30, %14
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @svn_hash_gets(i32*, i8*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i64 @svn_dirent_is_child(i8*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
