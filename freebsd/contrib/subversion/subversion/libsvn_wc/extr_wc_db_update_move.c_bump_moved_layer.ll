; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_bump_moved_layer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_bump_moved_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@STMT_HAS_LAYER_BETWEEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"isdd\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, %struct.TYPE_9__*, i8*, i32, i8*, i32, i32, i8*, i32*, i32*)* @bump_moved_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bump_moved_layer(i64* %0, %struct.TYPE_9__* %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6, i8* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  store i64* %0, i64** %12, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = load i32*, i32** %21, align 8
  %31 = call i32 @verify_write_lock(%struct.TYPE_9__* %28, i8* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i64, i64* @FALSE, align 8
  %34 = load i64*, i64** %12, align 8
  store i64 %33, i64* %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @STMT_HAS_LAYER_BETWEEN, align 4
  %39 = call i32 @svn_sqlite__get_statement(i32** %22, i32 %37, i32 %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i32*, i32** %22, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %14, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @svn_sqlite__bindf(i32* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %44, i8* %45, i32 %46, i32 %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i32*, i32** %22, align 8
  %51 = call i32 @svn_sqlite__step(i64* %23, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** %22, align 8
  %54 = call i32 @svn_sqlite__reset(i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i64, i64* %23, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %10
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %59, i32** %11, align 8
  br label %132

60:                                               ; preds = %10
  %61 = load i32, i32* %15, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32*, i32** %21, align 8
  %69 = call i32 @depth_sufficient_to_bump(i64* %25, %struct.TYPE_9__* %64, i8* %65, i32 %66, i32 %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  br label %73

71:                                               ; preds = %60
  %72 = load i64, i64* @TRUE, align 8
  store i64 %72, i64* %25, align 8
  br label %73

73:                                               ; preds = %71, %63
  %74 = load i64, i64* %25, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %78 = load i8*, i8** %19, align 8
  %79 = load i64, i64* @FALSE, align 8
  %80 = load i32*, i32** %21, align 8
  %81 = call i32 @svn_wc__db_wclock_owns_lock_internal(i64* %27, %struct.TYPE_9__* %77, i8* %78, i64 %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load i64, i64* %27, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %76
  %86 = load i64, i64* @FALSE, align 8
  store i64 %86, i64* %25, align 8
  br label %87

87:                                               ; preds = %85, %76
  br label %88

88:                                               ; preds = %87, %73
  %89 = load i8*, i8** %16, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load i32*, i32** %21, align 8
  %92 = call i8* @svn_relpath_prefix(i8* %89, i32 %90, i32* %91)
  store i8* %92, i8** %26, align 8
  %93 = load i64, i64* %25, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %88
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = load i32, i32* %15, align 4
  %99 = load i8*, i8** %26, align 8
  %100 = load i8*, i8** %19, align 8
  %101 = load i32*, i32** %20, align 8
  %102 = load i32*, i32** %21, align 8
  %103 = call i32 @bump_mark_tree_conflict(%struct.TYPE_9__* %96, i8* %97, i32 %98, i8* %99, i8* %100, i32* %101, i32* %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %105, i32** %11, align 8
  br label %132

106:                                              ; preds = %88
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %108 = load i8*, i8** %26, align 8
  %109 = load i32*, i32** %21, align 8
  %110 = load i32*, i32** %21, align 8
  %111 = call i32 @svn_wc__db_read_conflict_internal(i32** %24, i32* null, i32* null, %struct.TYPE_9__* %107, i8* %108, i32* %109, i32* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = load i32*, i32** %24, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %130, label %115

115:                                              ; preds = %106
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = load i32*, i32** %21, align 8
  %119 = call i32 @verify_write_lock(%struct.TYPE_9__* %116, i8* %117, i32* %118)
  %120 = call i32 @SVN_ERR(i32 %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %122 = load i8*, i8** %16, align 8
  %123 = load i32, i32* %15, align 4
  %124 = load i8*, i8** %19, align 8
  %125 = load i32*, i32** %21, align 8
  %126 = call i32 @svn_wc__db_op_copy_layer_internal(%struct.TYPE_9__* %121, i8* %122, i32 %123, i8* %124, i32* null, i32* null, i32* %125)
  %127 = call i32 @SVN_ERR(i32 %126)
  %128 = load i64, i64* @TRUE, align 8
  %129 = load i64*, i64** %12, align 8
  store i64 %128, i64* %129, align 8
  br label %130

130:                                              ; preds = %115, %106
  %131 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %131, i32** %11, align 8
  br label %132

132:                                              ; preds = %130, %95, %58
  %133 = load i32*, i32** %11, align 8
  ret i32* %133
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @verify_write_lock(%struct.TYPE_9__*, i8*, i32*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @depth_sufficient_to_bump(i64*, %struct.TYPE_9__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__db_wclock_owns_lock_internal(i64*, %struct.TYPE_9__*, i8*, i64, i32*) #1

declare dso_local i8* @svn_relpath_prefix(i8*, i32, i32*) #1

declare dso_local i32 @bump_mark_tree_conflict(%struct.TYPE_9__*, i8*, i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_conflict_internal(i32**, i32*, i32*, %struct.TYPE_9__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_op_copy_layer_internal(%struct.TYPE_9__*, i8*, i32, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
