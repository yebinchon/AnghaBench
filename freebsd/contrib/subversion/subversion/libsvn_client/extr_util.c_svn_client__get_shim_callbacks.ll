; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_util.c_svn_client__get_shim_callbacks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_util.c_svn_client__get_shim_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.shim_callbacks_baton*, i32, i32, i32 }
%struct.shim_callbacks_baton = type { i32*, i32* }

@fetch_props_func = common dso_local global i32 0, align 4
@fetch_kind_func = common dso_local global i32 0, align 4
@fetch_base_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @svn_client__get_shim_callbacks(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.shim_callbacks_baton*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call %struct.TYPE_4__* @svn_delta_shim_callbacks_default(i32* %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call %struct.shim_callbacks_baton* @apr_pcalloc(i32* %11, i32 16)
  store %struct.shim_callbacks_baton* %12, %struct.shim_callbacks_baton** %8, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.shim_callbacks_baton*, %struct.shim_callbacks_baton** %8, align 8
  %15 = getelementptr inbounds %struct.shim_callbacks_baton, %struct.shim_callbacks_baton* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.shim_callbacks_baton*, %struct.shim_callbacks_baton** %8, align 8
  %21 = getelementptr inbounds %struct.shim_callbacks_baton, %struct.shim_callbacks_baton* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  br label %27

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @apr_hash_make(i32* %23)
  %25 = load %struct.shim_callbacks_baton*, %struct.shim_callbacks_baton** %8, align 8
  %26 = getelementptr inbounds %struct.shim_callbacks_baton, %struct.shim_callbacks_baton* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i32, i32* @fetch_props_func, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @fetch_kind_func, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @fetch_base_func, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.shim_callbacks_baton*, %struct.shim_callbacks_baton** %8, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store %struct.shim_callbacks_baton* %37, %struct.shim_callbacks_baton** %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  ret %struct.TYPE_4__* %40
}

declare dso_local %struct.TYPE_4__* @svn_delta_shim_callbacks_default(i32*) #1

declare dso_local %struct.shim_callbacks_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32* @apr_hash_make(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
