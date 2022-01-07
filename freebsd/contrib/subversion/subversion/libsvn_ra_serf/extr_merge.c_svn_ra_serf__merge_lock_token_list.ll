; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_merge.c_svn_ra_serf__merge_lock_token_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_merge.c_svn_ra_serf__merge_lock_token_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@.str = private unnamed_addr constant [18 x i8] c"S:lock-token-list\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"xmlns:S\00", align 1
@SVN_XML_NAMESPACE = common dso_local global i32 0, align 4
@SVN_VA_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"S:lock\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"lock-path\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"lock-token\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svn_ra_serf__merge_lock_token_list(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_2__, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @apr_hash_count(i32* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %5
  br label %87

23:                                               ; preds = %18
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* @SVN_XML_NAMESPACE, align 4
  %27 = load i32, i32* @SVN_VA_NULL, align 4
  %28 = call i32 (i32*, i32*, i8*, i8*, ...) @svn_ra_serf__add_open_tag_buckets(i32* %24, i32* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32* @apr_hash_first(i32* %29, i32* %30)
  store i32* %31, i32** %11, align 8
  br label %32

32:                                               ; preds = %80, %23
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %83

35:                                               ; preds = %32
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @apr_hash_this(i32* %36, i8** %12, i32* %13, i8** %14)
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* %13, align 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @svn_relpath_skip_ancestor(i8* %45, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %80

50:                                               ; preds = %44, %35
  %51 = load i32*, i32** %8, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* @SVN_VA_NULL, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 (i32*, i32*, i8*, i8*, ...) @svn_ra_serf__add_open_tag_buckets(i32* %51, i32* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* @SVN_VA_NULL, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (i32*, i32*, i8*, i8*, ...) @svn_ra_serf__add_open_tag_buckets(i32* %57, i32* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @svn_ra_serf__add_cdata_len_buckets(i32* %63, i32* %64, i8* %66, i32 %68)
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %70, i32* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32*, i32** %8, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @svn_ra_serf__add_tag_buckets(i32* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %74, i32* %75)
  %77 = load i32*, i32** %8, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %77, i32* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %50, %49
  %81 = load i32*, i32** %11, align 8
  %82 = call i32* @apr_hash_next(i32* %81)
  store i32* %82, i32** %11, align 8
  br label %32

83:                                               ; preds = %32
  %84 = load i32*, i32** %8, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %84, i32* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %22
  ret void
}

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32 @svn_ra_serf__add_open_tag_buckets(i32*, i32*, i8*, i8*, ...) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i32 @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i32 @svn_ra_serf__add_cdata_len_buckets(i32*, i32*, i8*, i32) #1

declare dso_local i32 @svn_ra_serf__add_close_tag_buckets(i32*, i32*, i8*) #1

declare dso_local i32 @svn_ra_serf__add_tag_buckets(i32*, i8*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
