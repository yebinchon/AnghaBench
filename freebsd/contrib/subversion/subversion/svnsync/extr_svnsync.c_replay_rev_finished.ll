; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_replay_rev_finished.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_replay_rev_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i8*, i32*)* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__*, i64, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@APR_EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Commit created r%ld but should have created r%ld\00", align 1
@filter_include_date_author_sync = common dso_local global i32 0, align 4
@filter_exclude_log = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SVNSYNC_PROP_LAST_MERGED_REV = common dso_local global i32 0, align 4
@SVNSYNC_PROP_CURRENTLY_COPYING = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i8*, %struct.TYPE_6__*, i8*, i32*, i32*)* @replay_rev_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @replay_rev_finished(i32 %0, i8* %1, %struct.TYPE_6__* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = call i32* @svn_pool_create(i32* %21)
  store i32* %22, i32** %14, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %15, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %26, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = call i32 %27(i8* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %6
  %40 = load i32, i32* @APR_EINVAL, align 4
  %41 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32* @svn_error_createf(i32 %40, i32* null, i32 %41, i32 %46, i32 %47)
  store i32* %48, i32** %7, align 8
  br label %147

49:                                               ; preds = %6
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @svn_ra_rev_proplist(i32 %52, i32 %53, i32** %17, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32*, i32** %12, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i32, i32* @filter_include_date_author_sync, align 4
  br label %66

64:                                               ; preds = %49
  %65 = load i32, i32* @filter_exclude_log, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load i32*, i32** %14, align 8
  %69 = call i32* @filter_props(i32* %18, i32* %57, i32 %67, i32* %68)
  store i32* %69, i32** %16, align 8
  %70 = load i32*, i32** %16, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @svnsync_normalize_revprops(i32* %70, i32* %19, i32 %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i32, i32* %19, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32*, i32** %16, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = call i32 @write_revprops(i32* %18, i32 %86, i32 %87, i32* %88, i32* null, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = load i32*, i32** %17, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @remove_props_not_in_source(i32 %94, i32 %95, i32* %96, i32* %97, i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  %101 = load i32*, i32** %14, align 8
  %102 = call i32 @svn_pool_clear(i32* %101)
  %103 = load i32*, i32** %14, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32* @svn_string_createf(i32* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  store i32* %105, i32** %20, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @SVNSYNC_PROP_LAST_MERGED_REV, align 4
  %110 = load i32*, i32** %20, align 8
  %111 = load i32*, i32** %14, align 8
  %112 = call i32 @svn_ra_change_rev_prop2(i32 %108, i32 0, i32 %109, i32** null, i32* %110, i32* %111)
  %113 = call i32 @SVN_ERR(i32 %112)
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @SVNSYNC_PROP_CURRENTLY_COPYING, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %66
  br label %124

123:                                              ; preds = %66
  br label %124

124:                                              ; preds = %123, %122
  %125 = phi i32** [ %20, %122 ], [ null, %123 ]
  %126 = load i32*, i32** %14, align 8
  %127 = call i32 @svn_ra_change_rev_prop2(i32 %116, i32 0, i32 %117, i32** %125, i32* null, i32* %126)
  %128 = call i32 @SVN_ERR(i32 %127)
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %124
  %136 = load i32, i32* %18, align 4
  %137 = icmp sgt i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %8, align 4
  %140 = load i32*, i32** %14, align 8
  %141 = call i32 @log_properties_copied(i32 %138, i32 %139, i32* %140)
  %142 = call i32 @SVN_ERR(i32 %141)
  br label %143

143:                                              ; preds = %135, %124
  %144 = load i32*, i32** %14, align 8
  %145 = call i32 @svn_pool_destroy(i32* %144)
  %146 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %146, i32** %7, align 8
  br label %147

147:                                              ; preds = %143, %39
  %148 = load i32*, i32** %7, align 8
  ret i32* %148
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_ra_rev_proplist(i32, i32, i32**, i32*) #1

declare dso_local i32* @filter_props(i32*, i32*, i32, i32*) #1

declare dso_local i32 @svnsync_normalize_revprops(i32*, i32*, i32, i32*) #1

declare dso_local i32 @write_revprops(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @remove_props_not_in_source(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @svn_string_createf(i32*, i8*, i32) #1

declare dso_local i32 @svn_ra_change_rev_prop2(i32, i32, i32, i32**, i32*, i32*) #1

declare dso_local i32 @log_properties_copied(i32, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
