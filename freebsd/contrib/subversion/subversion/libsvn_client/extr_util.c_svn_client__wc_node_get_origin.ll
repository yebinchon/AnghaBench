; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_util.c_svn_client__wc_node_get_origin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_util.c_svn_client__wc_node_get_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__wc_node_get_origin(%struct.TYPE_7__** %0, i8* %1, %struct.TYPE_6__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = call %struct.TYPE_7__* @apr_palloc(i32* %12, i32 16)
  %14 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %14, align 8
  %15 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @FALSE, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @svn_wc__node_get_origin(i32* null, i32* %17, i8** %11, i32* %20, i32* %23, i32* null, i32* null, i32 %26, i8* %27, i32 %28, i32* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %5
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %11, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @svn_path_url_add_component2(i32 %45, i8* %46, i32* %47)
  %49 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  br label %54

52:                                               ; preds = %38, %5
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %53, align 8
  br label %54

54:                                               ; preds = %52, %41
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %55
}

declare dso_local %struct.TYPE_7__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__node_get_origin(i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_path_url_add_component2(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
