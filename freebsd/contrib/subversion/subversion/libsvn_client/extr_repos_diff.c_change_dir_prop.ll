; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_change_dir_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_change_dir_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_prop_wc_kind = common dso_local global i64 0, align 8
@svn_prop_regular_kind = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @change_dir_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @change_dir_prop(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dir_baton*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.dir_baton*
  store %struct.dir_baton* %14, %struct.dir_baton** %10, align 8
  %15 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %16 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %20, i32** %5, align 8
  br label %58

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @svn_property_kind2(i8* %22)
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @svn_prop_wc_kind, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %28, i32** %5, align 8
  br label %58

29:                                               ; preds = %21
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @svn_prop_regular_kind, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @TRUE, align 4
  %35 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %36 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %40 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_3__* @apr_array_push(i32 %41)
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %11, align 8
  %43 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %44 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @apr_pstrdup(i32 %45, i8* %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %52 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @svn_string_dup(i32* %50, i32 %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %57, i32** %5, align 8
  br label %58

58:                                               ; preds = %38, %27, %19
  %59 = load i32*, i32** %5, align 8
  ret i32* %59
}

declare dso_local i64 @svn_property_kind2(i8*) #1

declare dso_local %struct.TYPE_3__* @apr_array_push(i32) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @svn_string_dup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
