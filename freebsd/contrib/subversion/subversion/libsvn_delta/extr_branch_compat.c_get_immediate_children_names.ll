; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_compat.c_get_immediate_children_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_compat.c_get_immediate_children_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*, i32*)* @get_immediate_children_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_immediate_children_names(i32* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32* @apr_hash_make(i32* %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @apr_hash_first(i32* %14, i32* %15)
  store i32* %16, i32** %10, align 8
  br label %17

17:                                               ; preds = %42, %4
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %17
  %21 = load i32*, i32** %10, align 8
  %22 = call i8* @apr_hash_this_key(i32* %21)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @svn_relpath_dirname(i8* %30, i32* %31)
  %33 = call i64 @strcmp(i8* %29, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i32*, i32** %9, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @svn_relpath_basename(i8* %37, i32* %38)
  %40 = call i32 @svn_hash_sets(i32* %36, i32 %39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %35, %28, %20
  br label %42

42:                                               ; preds = %41
  %43 = load i32*, i32** %10, align 8
  %44 = call i32* @apr_hash_next(i32* %43)
  store i32* %44, i32** %10, align 8
  br label %17

45:                                               ; preds = %17
  %46 = load i32*, i32** %9, align 8
  ret i32* %46
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i8*) #1

declare dso_local i32 @svn_relpath_basename(i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
