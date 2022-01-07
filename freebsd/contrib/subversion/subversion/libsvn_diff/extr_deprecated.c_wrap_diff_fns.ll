; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_deprecated.c_wrap_diff_fns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_deprecated.c_wrap_diff_fns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.fns_wrapper_baton = type { i32*, i8* }

@datasources_open = common dso_local global i32 0, align 4
@datasource_close = common dso_local global i32 0, align 4
@datasource_get_next_token = common dso_local global i32 0, align 4
@token_compare = common dso_local global i32 0, align 4
@token_discard = common dso_local global i32 0, align 4
@token_discard_all = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__**, %struct.fns_wrapper_baton**, i32*, i8*, i32*)* @wrap_diff_fns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wrap_diff_fns(%struct.TYPE_3__** %0, %struct.fns_wrapper_baton** %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__**, align 8
  %7 = alloca %struct.fns_wrapper_baton**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %6, align 8
  store %struct.fns_wrapper_baton** %1, %struct.fns_wrapper_baton*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = call i8* @apr_palloc(i32* %11, i32 24)
  %13 = bitcast i8* %12 to %struct.TYPE_3__*
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %14, align 8
  %15 = load i32, i32* @datasources_open, align 4
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @datasource_close, align 4
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @datasource_get_next_token, align 4
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @token_compare, align 4
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @token_discard, align 4
  %32 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @token_discard_all, align 4
  %36 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = call i8* @apr_palloc(i32* %39, i32 16)
  %41 = bitcast i8* %40 to %struct.fns_wrapper_baton*
  %42 = load %struct.fns_wrapper_baton**, %struct.fns_wrapper_baton*** %7, align 8
  store %struct.fns_wrapper_baton* %41, %struct.fns_wrapper_baton** %42, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.fns_wrapper_baton**, %struct.fns_wrapper_baton*** %7, align 8
  %45 = load %struct.fns_wrapper_baton*, %struct.fns_wrapper_baton** %44, align 8
  %46 = getelementptr inbounds %struct.fns_wrapper_baton, %struct.fns_wrapper_baton* %45, i32 0, i32 1
  store i8* %43, i8** %46, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load %struct.fns_wrapper_baton**, %struct.fns_wrapper_baton*** %7, align 8
  %49 = load %struct.fns_wrapper_baton*, %struct.fns_wrapper_baton** %48, align 8
  %50 = getelementptr inbounds %struct.fns_wrapper_baton, %struct.fns_wrapper_baton* %49, i32 0, i32 0
  store i32* %47, i32** %50, align 8
  ret void
}

declare dso_local i8* @apr_palloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
