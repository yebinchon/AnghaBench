; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_examine_copy_inheritance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_examine_copy_inheritance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_6__*, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@copy_id_inherit_self = common dso_local global i64 0, align 8
@copy_kind_soft = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, %struct.TYPE_7__**, i32*, %struct.TYPE_6__*, i32*, i32*)* @examine_copy_inheritance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @examine_copy_inheritance(i8** %0, %struct.TYPE_7__** %1, i32* %2, %struct.TYPE_6__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_7__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i8** %0, i8*** %8, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @svn_fs_base__dag_get_id(i32 %16)
  %18 = call i8* @svn_fs_base__id_copy_id(i32 %17)
  %19 = load i8**, i8*** %8, align 8
  store i8* %18, i8** %19, align 8
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %20, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %6
  %26 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %26, i32** %7, align 8
  br label %77

27:                                               ; preds = %6
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @copy_id_inherit_self, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %27
  %34 = load i8**, i8*** %8, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 48
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i8**, i8*** %8, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %48, i32** %7, align 8
  br label %77

49:                                               ; preds = %40, %33
  %50 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i8**, i8*** %8, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @svn_fs_bdb__get_copy(%struct.TYPE_7__** %50, i32* %51, i8* %53, i32* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @copy_kind_soft, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %65, i32** %7, align 8
  br label %77

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66, %27
  %68 = load i8**, i8*** %8, align 8
  %69 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = call i32* @examine_copy_inheritance(i8** %68, %struct.TYPE_7__** %69, i32* %70, %struct.TYPE_6__* %73, i32* %74, i32* %75)
  store i32* %76, i32** %7, align 8
  br label %77

77:                                               ; preds = %67, %64, %47, %25
  %78 = load i32*, i32** %7, align 8
  ret i32* %78
}

declare dso_local i8* @svn_fs_base__id_copy_id(i32) #1

declare dso_local i32 @svn_fs_base__dag_get_id(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__get_copy(%struct.TYPE_7__**, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
