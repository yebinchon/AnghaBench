; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_depth_filter_editor.c_delete_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_depth_filter_editor.c_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton = type { i32, %struct.edit_baton* }
%struct.edit_baton = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i8*, i32, i32, i32*)* }

@svn_node_file = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i8*, i32*)* @delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @delete_entry(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.node_baton*, align 8
  %10 = alloca %struct.edit_baton*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.node_baton*
  store %struct.node_baton* %12, %struct.node_baton** %9, align 8
  %13 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %14 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %13, i32 0, i32 1
  %15 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  store %struct.edit_baton* %15, %struct.edit_baton** %10, align 8
  %16 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %17 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %18 = load i32, i32* @svn_node_file, align 4
  %19 = call i64 @okay_to_edit(%struct.edit_baton* %16, %struct.node_baton* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %4
  %22 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %23 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (i8*, i32, i32, i32*)*, i32 (i8*, i32, i32, i32*)** %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %30 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 %26(i8* %27, i32 %28, i32 %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  br label %35

35:                                               ; preds = %21, %4
  %36 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %36
}

declare dso_local i64 @okay_to_edit(%struct.edit_baton*, %struct.node_baton*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
