; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_log.c_collect_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_log.c_collect_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8, i8*, i8*, i32, i64, i32 }

@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"copyfrom-path\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"copyfrom-rev\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"node-kind\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"text-mods\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"prop-mods\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8, %struct.TYPE_6__*, i32*)* @collect_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @collect_path(i32* %0, i8 signext %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8 %1, i8* %6, align 1
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @apr_hash_pool_get(i32* %15)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call %struct.TYPE_7__* @svn_log_changed_path2_create(i32* %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %10, align 8
  %19 = load i8, i8* %6, align 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i8 %19, i8* %21, align 8
  %22 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  store i64 %22, i64* %24, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i8* @svn_hash_gets(i32* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %11, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i8* @svn_hash_gets(i32* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %51

31:                                               ; preds = %4
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @svn_cstring_atoi64(i64* %14, i8* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i64, i64* %14, align 8
  %39 = call i64 @SVN_IS_VALID_REVNUM(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i32*, i32** %9, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @apr_pstrdup(i32* %42, i8* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %41, %34
  br label %51

51:                                               ; preds = %50, %31, %4
  %52 = load i32*, i32** %8, align 8
  %53 = call i8* @svn_hash_gets(i32* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %54 = call i32 @svn_node_kind_from_word(i8* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i8* @svn_hash_gets(i32* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %59 = call i8* @svn_tristate__from_word(i8* %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = call i8* @svn_hash_gets(i32* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %64 = call i8* @svn_tristate__from_word(i8* %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @apr_pstrmemdup(i32* %67, i32 %70, i32 %73)
  store i8* %74, i8** %13, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %78 = call i32 @svn_hash_sets(i32* %75, i8* %76, %struct.TYPE_7__* %77)
  %79 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %79
}

declare dso_local i32* @apr_hash_pool_get(i32*) #1

declare dso_local %struct.TYPE_7__* @svn_log_changed_path2_create(i32*) #1

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cstring_atoi64(i64*, i8*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_node_kind_from_word(i8*) #1

declare dso_local i8* @svn_tristate__from_word(i8*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
