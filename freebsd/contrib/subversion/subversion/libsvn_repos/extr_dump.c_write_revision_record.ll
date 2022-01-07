; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_write_revision_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_write_revision_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i32, i32, i8*, i32*)* @write_revision_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_revision_record(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %7
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i8*, i8** %13, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = call i32 @svn_repos_fs_revision_proplist(i32** %15, i32* %21, i32 %22, i32 %23, i8* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32*, i32** %15, align 8
  %29 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %30 = call %struct.TYPE_5__* @svn_hash_gets(i32* %28, i32 %29)
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %17, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %20
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @svn_time_from_cstring(i32* %16, i32 %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32, i32* %16, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = call i32 @svn_time_to_cstring(i32 %40, i32* %41)
  %43 = load i32*, i32** %14, align 8
  %44 = call %struct.TYPE_5__* @svn_string_create(i32 %42, i32* %43)
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %17, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %48 = call i32 @svn_hash_sets(i32* %45, i32 %46, %struct.TYPE_5__* %47)
  br label %49

49:                                               ; preds = %33, %20
  br label %53

50:                                               ; preds = %7
  %51 = load i32*, i32** %14, align 8
  %52 = call i32* @apr_hash_make(i32* %51)
  store i32* %52, i32** %15, align 8
  br label %53

53:                                               ; preds = %50, %49
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %15, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32*, i32** %14, align 8
  %59 = call i32 @svn_repos__dump_revision_record(i32* %54, i32 %55, i32* null, i32* %56, i32 %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %61
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos_fs_revision_proplist(i32**, i32*, i32, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_5__* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_time_from_cstring(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @svn_string_create(i32, i32*) #1

declare dso_local i32 @svn_time_to_cstring(i32, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_repos__dump_revision_record(i32*, i32, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
