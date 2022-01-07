; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_depth_filter_editor.c_change_file_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_depth_filter_editor.c_change_file_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton = type { i32, i32, %struct.edit_baton* }
%struct.edit_baton = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i8*, i32*, i32*)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @change_file_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @change_file_prop(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.node_baton*, align 8
  %10 = alloca %struct.edit_baton*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.node_baton*
  store %struct.node_baton* %12, %struct.node_baton** %9, align 8
  %13 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %14 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %13, i32 0, i32 2
  %15 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  store %struct.edit_baton* %15, %struct.edit_baton** %10, align 8
  %16 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %17 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %4
  %21 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %22 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32, i8*, i32*, i32*)*, i32 (i32, i8*, i32*, i32*)** %24, align 8
  %26 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %27 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 %25(i32 %28, i8* %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  br label %34

34:                                               ; preds = %20, %4
  %35 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %35
}

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
