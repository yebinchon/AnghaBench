; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load.c_complete_vtable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load.c_complete_vtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@magic_header_record = common dso_local global i32 0, align 4
@uuid_record = common dso_local global i32 0, align 4
@new_revision_record = common dso_local global i32 0, align 4
@new_node_record = common dso_local global i32 0, align 4
@set_revision_property = common dso_local global i32 0, align 4
@set_node_property = common dso_local global i32 0, align 4
@delete_node_property = common dso_local global i32 0, align 4
@remove_node_props = common dso_local global i32 0, align 4
@set_fulltext = common dso_local global i32 0, align 4
@apply_textdelta = common dso_local global i32 0, align 4
@close_node = common dso_local global i32 0, align 4
@close_revision = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @complete_vtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @complete_vtable(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32* @apr_pcalloc(i32* %6, i32 4)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @magic_header_record, align 4
  %11 = call i32 @SET_VTABLE_ENTRY(i32* %8, i32* %9, i32 %10)
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @uuid_record, align 4
  %15 = call i32 @SET_VTABLE_ENTRY(i32* %12, i32* %13, i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @new_revision_record, align 4
  %19 = call i32 @SET_VTABLE_ENTRY(i32* %16, i32* %17, i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @new_node_record, align 4
  %23 = call i32 @SET_VTABLE_ENTRY(i32* %20, i32* %21, i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @set_revision_property, align 4
  %27 = call i32 @SET_VTABLE_ENTRY(i32* %24, i32* %25, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @set_node_property, align 4
  %31 = call i32 @SET_VTABLE_ENTRY(i32* %28, i32* %29, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @delete_node_property, align 4
  %35 = call i32 @SET_VTABLE_ENTRY(i32* %32, i32* %33, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @remove_node_props, align 4
  %39 = call i32 @SET_VTABLE_ENTRY(i32* %36, i32* %37, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @set_fulltext, align 4
  %43 = call i32 @SET_VTABLE_ENTRY(i32* %40, i32* %41, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @apply_textdelta, align 4
  %47 = call i32 @SET_VTABLE_ENTRY(i32* %44, i32* %45, i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @close_node, align 4
  %51 = call i32 @SET_VTABLE_ENTRY(i32* %48, i32* %49, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* @close_revision, align 4
  %55 = call i32 @SET_VTABLE_ENTRY(i32* %52, i32* %53, i32 %54)
  %56 = load i32*, i32** %5, align 8
  ret i32* %56
}

declare dso_local i32* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SET_VTABLE_ENTRY(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
