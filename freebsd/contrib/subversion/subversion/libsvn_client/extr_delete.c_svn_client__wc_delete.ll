; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_delete.c_svn_client__wc_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_delete.c_svn_client__wc_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__wc_delete(i8* %0, i64 %1, i64 %2, i64 %3, i32 %4, i8* %5, %struct.TYPE_5__* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %16, align 8
  store i32* %7, i32** %17, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %18, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @svn_dirent_is_absolute(i8* %20)
  %22 = call i32 @SVN_ERR_ASSERT(i32 %21)
  %23 = load i8*, i8** %10, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %25 = load i32*, i32** %17, align 8
  %26 = call i32 @check_external(i8* %23, %struct.TYPE_5__* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i64, i64* %11, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %8
  %31 = load i64, i64* %13, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = call i32 @can_delete_node(i64* %18, i8* %34, %struct.TYPE_5__* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  br label %39

39:                                               ; preds = %33, %30, %8
  %40 = load i64, i64* %12, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %18, align 8
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %49, %42
  %53 = phi i1 [ true, %42 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* @TRUE, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i8*, i8** %15, align 8
  %64 = load i32*, i32** %17, align 8
  %65 = call i32 @svn_wc_delete4(i32 %45, i8* %46, i32 %54, i32 %55, i32 %58, i32 %61, i32 %62, i8* %63, i32* %64)
  %66 = call i32* @svn_error_trace(i32 %65)
  store i32* %66, i32** %9, align 8
  br label %69

67:                                               ; preds = %39
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %68, i32** %9, align 8
  br label %69

69:                                               ; preds = %67, %52
  %70 = load i32*, i32** %9, align 8
  ret i32* %70
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_external(i8*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @can_delete_node(i64*, i8*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc_delete4(i32, i8*, i32, i32, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
