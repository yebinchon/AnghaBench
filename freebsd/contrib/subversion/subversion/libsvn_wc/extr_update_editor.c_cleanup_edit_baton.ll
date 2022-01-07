; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_cleanup_edit_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_cleanup_edit_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@APR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cleanup_edit_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cleanup_edit_baton(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.edit_baton*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.edit_baton*
  store %struct.edit_baton* %9, %struct.edit_baton** %4, align 8
  %10 = load %struct.edit_baton*, %struct.edit_baton** %4, align 8
  %11 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32* @apr_pool_parent_get(i32 %12)
  store i32* %13, i32** %6, align 8
  %14 = load %struct.edit_baton*, %struct.edit_baton** %4, align 8
  %15 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.edit_baton*, %struct.edit_baton** %4, align 8
  %18 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call %struct.TYPE_4__* @svn_wc__wq_run(i32 %16, i32 %19, i32* null, i32* null, i32* %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %5, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = call i32 @svn_error_clear(%struct.TYPE_4__* %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %24
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32* @apr_pool_parent_get(i32) #1

declare dso_local %struct.TYPE_4__* @svn_wc__wq_run(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
