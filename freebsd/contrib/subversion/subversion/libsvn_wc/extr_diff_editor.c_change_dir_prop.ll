; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_change_dir_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_change_dir_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton_t = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@svn_prop_wc_kind = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
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
  %10 = alloca %struct.dir_baton_t*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.dir_baton_t*
  store %struct.dir_baton_t* %14, %struct.dir_baton_t** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @svn_property_kind2(i8* %15)
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = load i64, i64* @svn_prop_wc_kind, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %21, i32** %5, align 8
  br label %51

22:                                               ; preds = %4
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* @svn_prop_regular_kind, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @TRUE, align 4
  %28 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %29 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %33 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_3__* @apr_array_push(i32 %34)
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %11, align 8
  %36 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %37 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @apr_pstrdup(i32 %38, i8* %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %45 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @svn_string_dup(i32* %43, i32 %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %50, i32** %5, align 8
  br label %51

51:                                               ; preds = %31, %20
  %52 = load i32*, i32** %5, align 8
  ret i32* %52
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
