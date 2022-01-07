; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_build_revprop_parser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_build_revprop_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32, i32*, i32*, i32*, i32*, i32, i32*, i32, i32, i32* }
%struct.parse_baton = type { i8*, i8*, i8*, i8*, i64, i64, i8*, i8*, i32*, i32, i32*, i32*, i32, i8*, i32, i8*, i8*, i32, i32* }

@uuid_record = common dso_local global i32 0, align 4
@revprops_new_revision_record = common dso_local global i32 0, align 4
@set_revision_property = common dso_local global i32 0, align 4
@revprops_close_revision = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@svn_repos_load_uuid_ignore = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__**, i8**, i32*, i64, i64, i8*, i8*, i8*, i32, i8*, i32*)* @build_revprop_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @build_revprop_parser(%struct.TYPE_3__** %0, i8** %1, i32* %2, i64 %3, i64 %4, i8* %5, i8* %6, i8* %7, i32 %8, i8* %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_3__**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_3__*, align 8
  %24 = alloca %struct.parse_baton*, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %12, align 8
  store i8** %1, i8*** %13, align 8
  store i32* %2, i32** %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  store i32* %10, i32** %22, align 8
  %25 = load i32*, i32** %22, align 8
  %26 = call i8* @apr_pcalloc(i32* %25, i32 88)
  %27 = bitcast i8* %26 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %23, align 8
  %28 = load i32*, i32** %22, align 8
  %29 = call i8* @apr_pcalloc(i32* %28, i32 152)
  %30 = bitcast i8* %29 to %struct.parse_baton*
  store %struct.parse_baton* %30, %struct.parse_baton** %24, align 8
  %31 = load i64, i64* %15, align 8
  %32 = call i64 @SVN_IS_VALID_REVNUM(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %11
  %35 = load i64, i64* %16, align 8
  %36 = call i64 @SVN_IS_VALID_REVNUM(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %34, %11
  %39 = load i64, i64* %15, align 8
  %40 = call i64 @SVN_IS_VALID_REVNUM(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %16, align 8
  %44 = call i64 @SVN_IS_VALID_REVNUM(i64 %43)
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi i1 [ false, %38 ], [ %46, %42 ]
  br label %49

49:                                               ; preds = %47, %34
  %50 = phi i1 [ true, %34 ], [ %48, %47 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @SVN_ERR_ASSERT(i32 %51)
  %53 = load i64, i64* %15, align 8
  %54 = call i64 @SVN_IS_VALID_REVNUM(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* %16, align 8
  %59 = icmp sle i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @SVN_ERR_ASSERT(i32 %60)
  br label %62

62:                                               ; preds = %56, %49
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 11
  store i32* null, i32** %64, align 8
  %65 = load i32, i32* @uuid_record, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 10
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @revprops_new_revision_record, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 8
  store i32* null, i32** %72, align 8
  %73 = load i32, i32* @set_revision_property, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 6
  store i32* null, i32** %77, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 5
  store i32* null, i32** %79, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  store i32* null, i32** %81, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  store i32* null, i32** %83, align 8
  %84 = load i32, i32* @revprops_close_revision, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %93 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %92, i32 0, i32 18
  store i32* %91, i32** %93, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @svn_repos_fs(i32* %94)
  %96 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %97 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %96, i32 0, i32 17
  store i32 %95, i32* %97, align 8
  %98 = load i8*, i8** @FALSE, align 8
  %99 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %100 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %99, i32 0, i32 16
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** %17, align 8
  %102 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %103 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %102, i32 0, i32 15
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* %20, align 4
  %105 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %106 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %105, i32 0, i32 14
  store i32 %104, i32* %106, align 8
  %107 = load i8*, i8** %21, align 8
  %108 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %109 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %108, i32 0, i32 13
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* @svn_repos_load_uuid_ignore, align 4
  %111 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %112 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %111, i32 0, i32 12
  store i32 %110, i32* %112, align 8
  %113 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %114 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %113, i32 0, i32 11
  store i32* null, i32** %114, align 8
  %115 = load i32*, i32** %22, align 8
  %116 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %117 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %116, i32 0, i32 10
  store i32* %115, i32** %117, align 8
  %118 = load i32*, i32** %22, align 8
  %119 = call i32 @svn_pool_create(i32* %118)
  %120 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %121 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %120, i32 0, i32 9
  store i32 %119, i32* %121, align 8
  %122 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %123 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %122, i32 0, i32 8
  store i32* null, i32** %123, align 8
  %124 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %125 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %126 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %125, i32 0, i32 7
  store i8* %124, i8** %126, align 8
  %127 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %128 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %129 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %128, i32 0, i32 6
  store i8* %127, i8** %129, align 8
  %130 = load i64, i64* %15, align 8
  %131 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %132 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %131, i32 0, i32 5
  store i64 %130, i64* %132, align 8
  %133 = load i64, i64* %16, align 8
  %134 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %135 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %134, i32 0, i32 4
  store i64 %133, i64* %135, align 8
  %136 = load i8*, i8** @FALSE, align 8
  %137 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %138 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %137, i32 0, i32 3
  store i8* %136, i8** %138, align 8
  %139 = load i8*, i8** @FALSE, align 8
  %140 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %141 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %140, i32 0, i32 2
  store i8* %139, i8** %141, align 8
  %142 = load i8*, i8** %18, align 8
  %143 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %144 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** %19, align 8
  %146 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %147 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %146, i32 0, i32 0
  store i8* %145, i8** %147, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %149 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %12, align 8
  store %struct.TYPE_3__* %148, %struct.TYPE_3__** %149, align 8
  %150 = load %struct.parse_baton*, %struct.parse_baton** %24, align 8
  %151 = bitcast %struct.parse_baton* %150 to i8*
  %152 = load i8**, i8*** %13, align 8
  store i8* %151, i8** %152, align 8
  %153 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %153
}

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @svn_repos_fs(i32*) #1

declare dso_local i32 @svn_pool_create(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
