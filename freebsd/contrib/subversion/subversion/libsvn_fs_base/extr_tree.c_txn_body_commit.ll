; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.commit_args = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8*, i32* }
%struct.TYPE_15__ = type { i32 }

@SVN_ERR_FS_TXN_OUT_OF_DATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Transaction '%s' out-of-date with respect to revision '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_14__*)* @txn_body_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_commit(i8* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.commit_args*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.commit_args*
  store %struct.commit_args* %17, %struct.commit_args** %6, align 8
  %18 = load %struct.commit_args*, %struct.commit_args** %6, align 8
  %19 = getelementptr inbounds %struct.commit_args, %struct.commit_args* %18, i32 0, i32 1
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %7, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %8, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %9, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @svn_fs_bdb__youngest_rev(i32* %10, i32* %27, %struct.TYPE_14__* %28, i32 %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @svn_fs_base__rev_get_root(i32** %11, i32* %34, i32 %35, %struct.TYPE_14__* %36, i32 %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @svn_fs_base__dag_txn_base_root(i32** %12, i32* %42, i8* %43, %struct.TYPE_14__* %44, i32 %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i32*, i32** %11, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @svn_fs_base__dag_get_id(i32* %51)
  %53 = call i32 @svn_fs_base__id_eq(i32* %50, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %2
  %56 = load i32*, i32** %11, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_15__* @svn_fs_base__id_unparse(i32* %56, i32 %59)
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %14, align 8
  %61 = load i32, i32* @SVN_ERR_FS_TXN_OUT_OF_DATE, align 4
  %62 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32* @svn_error_createf(i32 %61, i32* null, i32 %62, i8* %63, i32 %66)
  store i32* %67, i32** %3, align 8
  br label %110

68:                                               ; preds = %2
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @verify_locks(i8* %69, %struct.TYPE_14__* %70, i32 %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32*, i32** %8, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @svn_fs_base__dag_txn_root(i32** %13, i32* %76, i8* %77, %struct.TYPE_14__* %78, i32 %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i32*, i32** %13, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @svn_fs_base__dag_check_mutable(i32* %84, i8* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %68
  %91 = load i32*, i32** %8, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @svn_fs_base__dag_clone_root(i32** %15, i32* %91, i8* %94, %struct.TYPE_14__* %95, i32 %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  br label %101

101:                                              ; preds = %90, %68
  %102 = load %struct.commit_args*, %struct.commit_args** %6, align 8
  %103 = getelementptr inbounds %struct.commit_args, %struct.commit_args* %102, i32 0, i32 0
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32* @svn_fs_base__dag_commit_txn(i32* %103, %struct.TYPE_16__* %104, %struct.TYPE_14__* %105, i32 %108)
  store i32* %109, i32** %3, align 8
  br label %110

110:                                              ; preds = %101, %55
  %111 = load i32*, i32** %3, align 8
  ret i32* %111
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__youngest_rev(i32*, i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @svn_fs_base__rev_get_root(i32**, i32*, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_txn_base_root(i32**, i32*, i8*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @svn_fs_base__id_eq(i32*, i32) #1

declare dso_local i32 @svn_fs_base__dag_get_id(i32*) #1

declare dso_local %struct.TYPE_15__* @svn_fs_base__id_unparse(i32*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @verify_locks(i8*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_txn_root(i32**, i32*, i8*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_check_mutable(i32*, i8*) #1

declare dso_local i32 @svn_fs_base__dag_clone_root(i32**, i32*, i8*, %struct.TYPE_14__*, i32) #1

declare dso_local i32* @svn_fs_base__dag_commit_txn(i32*, %struct.TYPE_16__*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
