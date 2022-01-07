; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_op_copy_shadowed_layer_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_op_copy_shadowed_layer_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_copy_baton = type { i64, i64*, i32*, i64*, i32* }

@INVALID_REPOS_ID = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.op_copy_baton*, i32*)* @op_copy_shadowed_layer_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @op_copy_shadowed_layer_txn(i32* %0, %struct.op_copy_baton* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.op_copy_baton*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.op_copy_baton* %1, %struct.op_copy_baton** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %13, align 8
  %16 = load i32, i32* @INVALID_REPOS_ID, align 4
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %17, i32* %15, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %20 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %18, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %3
  %24 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %25 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @op_copy_shadowed_layer_txn(i32* %26, %struct.op_copy_baton* %27, i32* %28)
  %30 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %31 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @SVN_WC__DB_WITH_TXN(i32* %29, i32* %32)
  %34 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %34, i32** %4, align 8
  br label %129

35:                                               ; preds = %3
  %36 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %37 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %36, i32 0, i32 3
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %43 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %41, %35
  %48 = phi i1 [ false, %35 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @SVN_ERR_ASSERT(i32 %49)
  %51 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %52 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i8* @svn_relpath_dirname(i64* %53, i32* %54)
  store i8* %55, i8** %8, align 8
  %56 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %57 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i8* @svn_relpath_dirname(i64* %58, i32* %59)
  store i8* %60, i8** %9, align 8
  %61 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %62 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @op_depth_of(i32* %10, i32* %63, i8* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %68 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @op_depth_of(i32* %11, i32* %69, i8* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %74 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = call i32 @relpath_depth(i64* %75)
  store i32 %76, i32* %12, align 4
  %77 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %78 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @svn_wc__db_depth_get_info(i32* null, i32* null, i32* %15, i8** %13, i32* %14, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %79, i8* %80, i32 %81, i32* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load i8*, i8** %13, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %47
  %89 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %89, i32** %4, align 8
  br label %129

90:                                               ; preds = %47
  %91 = load i8*, i8** %13, align 8
  %92 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %93 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %92, i32 0, i32 3
  %94 = load i64*, i64** %93, align 8
  %95 = call i32 @svn_relpath_basename(i64* %94, i32* null)
  %96 = load i32*, i32** %7, align 8
  %97 = call i8* @svn_relpath_join(i8* %91, i32 %95, i32* %96)
  store i8* %97, i8** %13, align 8
  %98 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %99 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %102 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %101, i32 0, i32 3
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %106 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %109 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i8*, i8** %13, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %117 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %90
  %121 = load i32, i32* %11, align 4
  br label %123

122:                                              ; preds = %90
  br label %123

123:                                              ; preds = %122, %120
  %124 = phi i32 [ %121, %120 ], [ 0, %122 ]
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @db_op_copy_shadowed_layer(i32* %100, i64* %103, i32 %104, i32* %107, i64* %110, i32 %111, i32 %112, i32 %113, i8* %114, i32 %115, i32 %124, i32* %125)
  %127 = call i32 @SVN_ERR(i32 %126)
  %128 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %128, i32** %4, align 8
  br label %129

129:                                              ; preds = %123, %88, %23
  %130 = load i32*, i32** %4, align 8
  ret i32* %130
}

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @svn_relpath_dirname(i64*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @op_depth_of(i32*, i32*, i8*) #1

declare dso_local i32 @relpath_depth(i64*) #1

declare dso_local i32 @svn_wc__db_depth_get_info(i32*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32, i32*, i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i32, i32*) #1

declare dso_local i32 @svn_relpath_basename(i64*, i32*) #1

declare dso_local i32 @db_op_copy_shadowed_layer(i32*, i64*, i32, i32*, i64*, i32, i32, i32, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
