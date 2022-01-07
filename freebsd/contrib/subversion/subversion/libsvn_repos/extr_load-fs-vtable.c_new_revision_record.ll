; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_new_revision_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_new_revision_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_baton = type { i64, i32, i32, i32 (i32, %struct.TYPE_5__*, i32)*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.revision_baton = type { i64, i64, i32, i32, i64 }

@SVN_FS_TXN_CLIENT_DATE = common dso_local global i32 0, align 4
@svn_repos_notify_load_txn_start = common dso_local global i32 0, align 4
@svn_repos_notify_load_skipped_rev = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i8*, i32*)* @new_revision_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @new_revision_record(i8** %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.parse_baton*, align 8
  %10 = alloca %struct.revision_baton*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.parse_baton*
  store %struct.parse_baton* %15, %struct.parse_baton** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call %struct.revision_baton* @make_revision_baton(i32* %16, %struct.parse_baton* %17, i32* %18)
  store %struct.revision_baton* %19, %struct.revision_baton** %10, align 8
  %20 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %21 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @svn_fs_youngest_rev(i64* %11, i32 %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %27 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %11, align 8
  %30 = add nsw i64 %29, 1
  %31 = sub nsw i64 %28, %30
  %32 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %33 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %32, i32 0, i32 4
  store i64 %31, i64* %33, align 8
  %34 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %35 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %105

38:                                               ; preds = %4
  %39 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %40 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %105, label %43

43:                                               ; preds = %38
  %44 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %45 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %44, i32 0, i32 2
  %46 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %47 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i32, i32* @SVN_FS_TXN_CLIENT_DATE, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @svn_fs_begin_txn2(i32* %45, i32 %48, i64 %49, i32 %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %55 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %54, i32 0, i32 3
  %56 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %57 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @svn_fs_txn_root(i32* %55, i32 %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %63 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %62, i32 0, i32 3
  %64 = load i32 (i32, %struct.TYPE_5__*, i32)*, i32 (i32, %struct.TYPE_5__*, i32)** %63, align 8
  %65 = icmp ne i32 (i32, %struct.TYPE_5__*, i32)* %64, null
  br i1 %65, label %66, label %92

66:                                               ; preds = %43
  %67 = load i32, i32* @svn_repos_notify_load_txn_start, align 4
  %68 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %69 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.TYPE_5__* @svn_repos_notify_create(i32 %67, i32 %70)
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %12, align 8
  %72 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %73 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %78 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %77, i32 0, i32 3
  %79 = load i32 (i32, %struct.TYPE_5__*, i32)*, i32 (i32, %struct.TYPE_5__*, i32)** %78, align 8
  %80 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %81 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %84 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %85 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 %79(i32 %82, %struct.TYPE_5__* %83, i32 %86)
  %88 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %89 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @svn_pool_clear(i32 %90)
  br label %92

92:                                               ; preds = %66, %43
  %93 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %94 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @SVN_IS_VALID_REVNUM(i64 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %100 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %103 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %98, %92
  br label %105

105:                                              ; preds = %104, %38, %4
  %106 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %107 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %141

110:                                              ; preds = %105
  %111 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %112 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %111, i32 0, i32 3
  %113 = load i32 (i32, %struct.TYPE_5__*, i32)*, i32 (i32, %struct.TYPE_5__*, i32)** %112, align 8
  %114 = icmp ne i32 (i32, %struct.TYPE_5__*, i32)* %113, null
  br i1 %114, label %115, label %141

115:                                              ; preds = %110
  %116 = load i32, i32* @svn_repos_notify_load_skipped_rev, align 4
  %117 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %118 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call %struct.TYPE_5__* @svn_repos_notify_create(i32 %116, i32 %119)
  store %struct.TYPE_5__* %120, %struct.TYPE_5__** %13, align 8
  %121 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %122 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %127 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %126, i32 0, i32 3
  %128 = load i32 (i32, %struct.TYPE_5__*, i32)*, i32 (i32, %struct.TYPE_5__*, i32)** %127, align 8
  %129 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %130 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %133 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %134 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 %128(i32 %131, %struct.TYPE_5__* %132, i32 %135)
  %137 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %138 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @svn_pool_clear(i32 %139)
  br label %141

141:                                              ; preds = %115, %110, %105
  %142 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %143 = bitcast %struct.revision_baton* %142 to i8*
  %144 = load i8**, i8*** %5, align 8
  store i8* %143, i8** %144, align 8
  %145 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %145
}

declare dso_local %struct.revision_baton* @make_revision_baton(i32*, %struct.parse_baton*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_youngest_rev(i64*, i32, i32*) #1

declare dso_local i32 @svn_fs_begin_txn2(i32*, i32, i64, i32, i32*) #1

declare dso_local i32 @svn_fs_txn_root(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @svn_repos_notify_create(i32, i32) #1

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
