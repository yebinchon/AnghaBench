; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_complete_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_complete_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.editor_baton = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32*)*, i32 (i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @complete_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @complete_cb(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.editor_baton*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.editor_baton*
  store %struct.editor_baton* %8, %struct.editor_baton** %5, align 8
  %9 = load %struct.editor_baton*, %struct.editor_baton** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @drive_changes(%struct.editor_baton* %9, i32* %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.editor_baton*, %struct.editor_baton** %5, align 8
  %17 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32 (i32, i32*)*, i32 (i32, i32*)** %19, align 8
  %21 = load %struct.editor_baton*, %struct.editor_baton** %5, align 8
  %22 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 %20(i32 %23, i32* %24)
  %26 = call i32* @svn_error_compose_create(i32* %15, i32 %25)
  store i32* %26, i32** %6, align 8
  br label %27

27:                                               ; preds = %14, %2
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.editor_baton*, %struct.editor_baton** %5, align 8
  %32 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i32, i32*)*, i32 (i32, i32*)** %34, align 8
  %36 = load %struct.editor_baton*, %struct.editor_baton** %5, align 8
  %37 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 %35(i32 %38, i32* %39)
  %41 = call i32 @svn_error_clear(i32 %40)
  br label %42

42:                                               ; preds = %30, %27
  %43 = load i32*, i32** %6, align 8
  %44 = call i32* @svn_error_trace(i32* %43)
  ret i32* %44
}

declare dso_local i32* @drive_changes(%struct.editor_baton*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_error_clear(i32) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
