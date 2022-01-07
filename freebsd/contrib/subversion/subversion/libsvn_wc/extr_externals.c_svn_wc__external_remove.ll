; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_externals.c_svn_wc__external_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_externals.c_svn_wc__external_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__external_remove(%struct.TYPE_4__* %0, i8* %1, i8* %2, i64 %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32*, i32** %15, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = call i32 @svn_wc__db_external_read(i32* %16, i64* %17, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %20, i8* %21, i8* %22, i32* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = call i32 @svn_wc__db_external_remove(i32 %29, i8* %30, i8* %31, i32* null, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %7
  %38 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %38, i32** %8, align 8
  br label %75

39:                                               ; preds = %7
  %40 = load i64, i64* %17, align 8
  %41 = load i64, i64* @svn_node_dir, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* @TRUE, align 4
  %47 = load i32, i32* @TRUE, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i8*, i8** %14, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = call i32 @svn_wc_remove_from_revision_control2(%struct.TYPE_4__* %44, i8* %45, i32 %46, i32 %47, i32 %48, i8* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  br label %73

53:                                               ; preds = %39
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* @FALSE, align 4
  %59 = load i32, i32* @TRUE, align 4
  %60 = load i32, i32* @FALSE, align 4
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @svn_wc__db_base_remove(i32 %56, i8* %57, i32 %58, i32 %59, i32 %60, i32 0, i32* null, i32* null, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i8*, i8** %14, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = call i32 @svn_wc__wq_run(i32 %66, i8* %67, i32 %68, i8* %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  br label %73

73:                                               ; preds = %53, %43
  %74 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %74, i32** %8, align 8
  br label %75

75:                                               ; preds = %73, %37
  %76 = load i32*, i32** %8, align 8
  ret i32* %76
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_external_read(i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_external_remove(i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc_remove_from_revision_control2(%struct.TYPE_4__*, i8*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_base_remove(i32, i8*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_run(i32, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
