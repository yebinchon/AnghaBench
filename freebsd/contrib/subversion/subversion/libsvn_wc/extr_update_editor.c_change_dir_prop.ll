; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_change_dir_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_change_dir_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.dir_baton = type { i32, i32, i32, i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_prop_regular_kind = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @change_dir_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @change_dir_prop(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.dir_baton*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.dir_baton*
  store %struct.dir_baton* %13, %struct.dir_baton** %11, align 8
  %14 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %15 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %19, i32** %5, align 8
  br label %55

20:                                               ; preds = %4
  %21 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %22 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_3__* @apr_array_push(i32 %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %10, align 8
  %25 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %26 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @apr_pstrdup(i32 %27, i8* %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %34 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @svn_string_dup(i32* %32, i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %40 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %20
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @svn_property_kind2(i8* %44)
  %46 = load i64, i64* @svn_prop_regular_kind, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @mark_directory_edited(%struct.dir_baton* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  br label %53

53:                                               ; preds = %48, %43, %20
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %54, i32** %5, align 8
  br label %55

55:                                               ; preds = %53, %18
  %56 = load i32*, i32** %5, align 8
  ret i32* %56
}

declare dso_local %struct.TYPE_3__* @apr_array_push(i32) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @svn_string_dup(i32*, i32) #1

declare dso_local i64 @svn_property_kind2(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mark_directory_edited(%struct.dir_baton*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
