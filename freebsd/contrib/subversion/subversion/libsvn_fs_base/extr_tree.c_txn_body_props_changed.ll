; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_props_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_props_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.things_changed_args = type { i32*, i32, i32, i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_6__*)* @txn_body_props_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_props_changed(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.things_changed_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.things_changed_args*
  store %struct.things_changed_args* %12, %struct.things_changed_args** %6, align 8
  %13 = load %struct.things_changed_args*, %struct.things_changed_args** %6, align 8
  %14 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.things_changed_args*, %struct.things_changed_args** %6, align 8
  %17 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @get_dag(i32** %7, i32 %15, i32 %18, %struct.TYPE_6__* %19, i32 %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load %struct.things_changed_args*, %struct.things_changed_args** %6, align 8
  %26 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.things_changed_args*, %struct.things_changed_args** %6, align 8
  %29 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @get_dag(i32** %8, i32 %27, i32 %30, %struct.TYPE_6__* %31, i32 %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.things_changed_args*, %struct.things_changed_args** %6, align 8
  %38 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @svn_fs_base__things_different(i32* %39, i32* null, i32* %40, i32* %41, %struct.TYPE_6__* %42, i32 %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load %struct.things_changed_args*, %struct.things_changed_args** %6, align 8
  %49 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %2
  %53 = load %struct.things_changed_args*, %struct.things_changed_args** %6, align 8
  %54 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %52, %2
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %59, i32** %3, align 8
  br label %88

60:                                               ; preds = %52
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @svn_fs_base__dag_get_proplist(i32** %9, i32* %61, %struct.TYPE_6__* %62, i32 %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32*, i32** %8, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @svn_fs_base__dag_get_proplist(i32** %10, i32* %68, %struct.TYPE_6__* %69, i32 %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load i32*, i32** %9, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @svn_fs__prop_lists_equal(i32* %75, i32* %76, i32 %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load %struct.things_changed_args*, %struct.things_changed_args** %6, align 8
  %85 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  store i32 %83, i32* %86, align 4
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %87, i32** %3, align 8
  br label %88

88:                                               ; preds = %60, %58
  %89 = load i32*, i32** %3, align 8
  ret i32* %89
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_dag(i32**, i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @svn_fs_base__things_different(i32*, i32*, i32*, i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_get_proplist(i32**, i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @svn_fs__prop_lists_equal(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
