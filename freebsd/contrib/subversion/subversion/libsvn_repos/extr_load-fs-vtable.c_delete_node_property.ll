; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_delete_node_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_delete_node_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton = type { i32, i32, %struct.revision_baton* }
%struct.revision_baton = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*)* @delete_node_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @delete_node_property(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.node_baton*, align 8
  %7 = alloca %struct.revision_baton*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.node_baton*
  store %struct.node_baton* %9, %struct.node_baton** %6, align 8
  %10 = load %struct.node_baton*, %struct.node_baton** %6, align 8
  %11 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %10, i32 0, i32 2
  %12 = load %struct.revision_baton*, %struct.revision_baton** %11, align 8
  store %struct.revision_baton* %12, %struct.revision_baton** %7, align 8
  %13 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %14 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %18, i32** %3, align 8
  br label %36

19:                                               ; preds = %2
  %20 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %21 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.node_baton*, %struct.node_baton** %6, align 8
  %24 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %28 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.node_baton*, %struct.node_baton** %6, align 8
  %33 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @change_node_prop(i32 %22, i32 %25, i8* %26, i32* null, i32 %31, i32 %34)
  store i32* %35, i32** %3, align 8
  br label %36

36:                                               ; preds = %19, %17
  %37 = load i32*, i32** %3, align 8
  ret i32* %37
}

declare dso_local i32* @change_node_prop(i32, i32, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
