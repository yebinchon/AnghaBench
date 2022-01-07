; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_text_get_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_text_get_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8* }

@svn_wc_operation_merge = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_conflict_text_get_contents(i8** %0, i8** %1, i8** %2, i8** %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i8** %0, i8*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load i32*, i32** %12, align 8
  %16 = load i32*, i32** %14, align 8
  %17 = call i32 @assert_text_conflict(i32* %15, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load i8**, i8*** %8, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %7
  %22 = load i32*, i32** %12, align 8
  %23 = call i64 @svn_client_conflict_get_operation(i32* %22)
  %24 = load i64, i64* @svn_wc_operation_merge, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i8**, i8*** %8, align 8
  store i8* null, i8** %27, align 8
  br label %34

28:                                               ; preds = %21
  %29 = load i32*, i32** %12, align 8
  %30 = call %struct.TYPE_2__* @get_conflict_desc2_t(i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8**, i8*** %8, align 8
  store i8* %32, i8** %33, align 8
  br label %34

34:                                               ; preds = %28, %26
  br label %35

35:                                               ; preds = %34, %7
  %36 = load i8**, i8*** %9, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32*, i32** %12, align 8
  %40 = call %struct.TYPE_2__* @get_conflict_desc2_t(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** %9, align 8
  store i8* %42, i8** %43, align 8
  br label %44

44:                                               ; preds = %38, %35
  %45 = load i8**, i8*** %10, align 8
  %46 = icmp ne i8** %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32*, i32** %12, align 8
  %49 = call %struct.TYPE_2__* @get_conflict_desc2_t(i32* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %10, align 8
  store i8* %51, i8** %52, align 8
  br label %53

53:                                               ; preds = %47, %44
  %54 = load i8**, i8*** %11, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32*, i32** %12, align 8
  %58 = call %struct.TYPE_2__* @get_conflict_desc2_t(i32* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = load i8**, i8*** %11, align 8
  store i8* %60, i8** %61, align 8
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %63
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @assert_text_conflict(i32*, i32*) #1

declare dso_local i64 @svn_client_conflict_get_operation(i32*) #1

declare dso_local %struct.TYPE_2__* @get_conflict_desc2_t(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
