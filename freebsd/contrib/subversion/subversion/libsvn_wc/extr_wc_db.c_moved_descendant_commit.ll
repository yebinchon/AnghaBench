; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_moved_descendant_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_moved_descendant_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@STMT_COMMIT_UPDATE_ORIGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"isdisr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i8*, i32, i8*, i32, i32*, i32*)* @moved_descendant_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @moved_descendant_commit(%struct.TYPE_4__* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %7
  %30 = load i8*, i8** %12, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %29, %7
  %35 = phi i1 [ false, %7 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @SVN_ERR_ASSERT(i32 %36)
  %38 = load i32*, i32** %14, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %41, i32** %8, align 8
  br label %113

42:                                               ; preds = %34
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @STMT_COMMIT_UPDATE_ORIGIN, align 4
  %47 = call i32* @svn_sqlite__get_statement(i32** %17, i32 %45, i32 %46)
  %48 = call i32 @SVN_ERR(i32* %47)
  %49 = load i32*, i32** %15, align 8
  %50 = call i32* @svn_pool_create(i32* %49)
  store i32* %50, i32** %16, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = call i32* @apr_hash_first(i32* %51, i32* %52)
  store i32* %53, i32** %18, align 8
  br label %54

54:                                               ; preds = %106, %42
  %55 = load i32*, i32** %18, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %109

57:                                               ; preds = %54
  %58 = load i32*, i32** %18, align 8
  %59 = call i8* @apr_hash_this_val(i32* %58)
  store i8* %59, i8** %19, align 8
  %60 = load i32*, i32** %18, align 8
  %61 = call i8* @apr_hash_this_key(i32* %60)
  store i8* %61, i8** %20, align 8
  %62 = load i8*, i8** %20, align 8
  %63 = call i32 @relpath_depth(i8* %62)
  store i32 %63, i32* %22, align 4
  %64 = load i32*, i32** %16, align 8
  %65 = call i32 @svn_pool_clear(i32* %64)
  %66 = load i32, i32* %22, align 4
  %67 = icmp sgt i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @SVN_ERR_ASSERT(i32 %68)
  %70 = load i8*, i8** %12, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %19, align 8
  %73 = call i32 @svn_relpath_skip_ancestor(i8* %71, i8* %72)
  %74 = load i32*, i32** %16, align 8
  %75 = call i8* @svn_relpath_join(i8* %70, i32 %73, i32* %74)
  store i8* %75, i8** %21, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %20, align 8
  %81 = load i32, i32* %22, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i8*, i8** %21, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32* @svn_sqlite__bindf(i32* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %79, i8* %80, i32 %81, i32 %82, i8* %83, i32 %84)
  %86 = call i32 @SVN_ERR(i32* %85)
  %87 = load i32*, i32** %17, align 8
  %88 = call i32* @svn_sqlite__update(i32* %23, i32* %87)
  %89 = call i32 @SVN_ERR(i32* %88)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %91 = load i8*, i8** %20, align 8
  %92 = load i32, i32* %22, align 4
  %93 = load i32*, i32** %16, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = call i32* @moved_descendant_collect(i32** %24, %struct.TYPE_4__* %90, i8* %91, i32 %92, i32* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32* %95)
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %98 = load i8*, i8** %20, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i8*, i8** %21, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load i32*, i32** %24, align 8
  %103 = load i32*, i32** %16, align 8
  %104 = call i32* @moved_descendant_commit(%struct.TYPE_4__* %97, i8* %98, i32 %99, i8* %100, i32 %101, i32* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32* %104)
  br label %106

106:                                              ; preds = %57
  %107 = load i32*, i32** %18, align 8
  %108 = call i32* @apr_hash_next(i32* %107)
  store i32* %108, i32** %18, align 8
  br label %54

109:                                              ; preds = %54
  %110 = load i32*, i32** %16, align 8
  %111 = call i32 @svn_pool_destroy(i32* %110)
  %112 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %112, i32** %8, align 8
  br label %113

113:                                              ; preds = %109, %40
  %114 = load i32*, i32** %8, align 8
  ret i32* %114
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_val(i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i32, i32*) #1

declare dso_local i32 @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i32* @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32* @svn_sqlite__update(i32*, i32*) #1

declare dso_local i32* @moved_descendant_collect(i32**, %struct.TYPE_4__*, i8*, i32, i32*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
