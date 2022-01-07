; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch.c_svn_branch__get_eid_by_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch.c_svn_branch__get_eid_by_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_branch__get_eid_by_path(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @svn_branch__state_get_elements(i32* %12, %struct.TYPE_4__** %8, i32* %13)
  %15 = call i32 @svn_error_clear(i32 %14)
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @apr_hash_first(i32* %16, i32 %19)
  store i32* %20, i32** %9, align 8
  br label %21

21:                                               ; preds = %42, %3
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @svn_eid__hash_this_key(i32* %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i8* @svn_element__tree_get_path_by_eid(%struct.TYPE_4__* %27, i32 %28, i32* %29)
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %42

34:                                               ; preds = %24
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i64 @strcmp(i8* %35, i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %33
  %43 = load i32*, i32** %9, align 8
  %44 = call i32* @apr_hash_next(i32* %43)
  store i32* %44, i32** %9, align 8
  br label %21

45:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %39
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @svn_error_clear(i32) #1

declare dso_local i32 @svn_branch__state_get_elements(i32*, %struct.TYPE_4__**, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i32 @svn_eid__hash_this_key(i32*) #1

declare dso_local i8* @svn_element__tree_get_path_by_eid(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
