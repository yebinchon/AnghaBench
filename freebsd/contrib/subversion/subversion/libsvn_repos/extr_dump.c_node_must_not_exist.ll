; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_node_must_not_exist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_node_must_not_exist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@svn_node_none = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_FS_ALREADY_EXISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Path '%s' exists in r%ld.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.edit_baton*, i8*, i32, i32*)* @node_must_not_exist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @node_must_not_exist(%struct.edit_baton* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.edit_baton*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.edit_baton* %0, %struct.edit_baton** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i64, i64* @svn_node_none, align 8
  store i64 %11, i64* %10, align 8
  %12 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %13 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp eq %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %17, i32** %5, align 8
  br label %55

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %21 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %19, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %28 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @tracker_lookup(i8** %7, i32* %8, %struct.TYPE_2__* %29, i8* %30, i32* %31)
  br label %33

33:                                               ; preds = %26, %18
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @fetch_kind_func(i64* %10, %struct.edit_baton* %37, i8* %38, i32 %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  br label %43

43:                                               ; preds = %36, %33
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @svn_node_none, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* @SVN_ERR_FS_ALREADY_EXISTS, align 4
  %49 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32* @svn_error_createf(i32 %48, i32* null, i32 %49, i8* %50, i32 %51)
  store i32* %52, i32** %5, align 8
  br label %55

53:                                               ; preds = %43
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %54, i32** %5, align 8
  br label %55

55:                                               ; preds = %53, %47, %16
  %56 = load i32*, i32** %5, align 8
  ret i32* %56
}

declare dso_local i32 @tracker_lookup(i8**, i32*, %struct.TYPE_2__*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @fetch_kind_func(i64*, %struct.edit_baton*, i8*, i32, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
