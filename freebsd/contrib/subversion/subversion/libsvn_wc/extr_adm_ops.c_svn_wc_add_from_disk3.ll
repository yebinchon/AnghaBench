; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_svn_wc_add_from_disk3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_svn_wc_add_from_disk3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_wc_notify_add = common dso_local global i32 0, align 4
@SVN_PROP_MIME_TYPE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_add_from_disk3(%struct.TYPE_9__* %0, i8* %1, i32* %2, i32 %3, i32 (i8*, %struct.TYPE_8__*, i32*)* %4, i8* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32 (i8*, %struct.TYPE_8__*, i32*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 (i8*, %struct.TYPE_8__*, i32*)* %4, i32 (i8*, %struct.TYPE_8__*, i32*)** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %23 = load i32*, i32** %14, align 8
  %24 = call i32 @check_can_add_node(i32* %15, i32* null, i32* null, i32 %20, i8* %21, i32* null, i32 %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = call i32 @check_can_add_to_parent(i32* null, i32* null, i32 %28, i8* %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %7
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @svn_wc__canonicalize_props(i32** %16, i8* %37, i32 %38, i32* %39, i32 %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32*, i32** %16, align 8
  store i32* %45, i32** %10, align 8
  br label %46

46:                                               ; preds = %36, %7
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @add_from_disk(i32 %49, i8* %50, i32 %51, i32* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32 (i8*, %struct.TYPE_8__*, i32*)*, i32 (i8*, %struct.TYPE_8__*, i32*)** %12, align 8
  %57 = icmp ne i32 (i8*, %struct.TYPE_8__*, i32*)* %56, null
  br i1 %57, label %58, label %76

58:                                               ; preds = %46
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* @svn_wc_notify_add, align 4
  %61 = load i32*, i32** %14, align 8
  %62 = call %struct.TYPE_8__* @svn_wc_create_notify(i8* %59, i32 %60, i32* %61)
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %17, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %68 = call i32 @svn_prop_get_value(i32* %66, i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32 (i8*, %struct.TYPE_8__*, i32*)*, i32 (i8*, %struct.TYPE_8__*, i32*)** %12, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 %71(i8* %72, %struct.TYPE_8__* %73, i32* %74)
  br label %76

76:                                               ; preds = %58, %46
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %77
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_can_add_node(i32*, i32*, i32*, i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @check_can_add_to_parent(i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__canonicalize_props(i32**, i8*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @add_from_disk(i32, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @svn_prop_get_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
