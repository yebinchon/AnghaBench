; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_link_resolver.c_archive_entry_partial_links.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_link_resolver.c_archive_entry_partial_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive_entry_linkresolver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.links_entry = type { i32, %struct.archive_entry* }

@NEXT_ENTRY_PARTIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.archive_entry* @archive_entry_partial_links(%struct.archive_entry_linkresolver* %0, i32* %1) #0 {
  %3 = alloca %struct.archive_entry_linkresolver*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.links_entry*, align 8
  store %struct.archive_entry_linkresolver* %0, %struct.archive_entry_linkresolver** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %8 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %13 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @archive_entry_free(i32 %16)
  %18 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %19 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @archive_entry_free(i32 %22)
  %24 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %25 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32 @free(%struct.TYPE_2__* %26)
  %28 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %29 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %28, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %29, align 8
  br label %30

30:                                               ; preds = %11, %2
  %31 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %32 = load i32, i32* @NEXT_ENTRY_PARTIAL, align 4
  %33 = call %struct.links_entry* @next_entry(%struct.archive_entry_linkresolver* %31, i32 %32)
  store %struct.links_entry* %33, %struct.links_entry** %6, align 8
  %34 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %35 = icmp ne %struct.links_entry* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %38 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %37, i32 0, i32 1
  %39 = load %struct.archive_entry*, %struct.archive_entry** %38, align 8
  store %struct.archive_entry* %39, %struct.archive_entry** %5, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %44 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %4, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %36
  %48 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %49 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %48, i32 0, i32 1
  store %struct.archive_entry* null, %struct.archive_entry** %49, align 8
  br label %56

50:                                               ; preds = %30
  store %struct.archive_entry* null, %struct.archive_entry** %5, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32*, i32** %4, align 8
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %50
  br label %56

56:                                               ; preds = %55, %47
  %57 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  ret %struct.archive_entry* %57
}

declare dso_local i32 @archive_entry_free(i32) #1

declare dso_local i32 @free(%struct.TYPE_2__*) #1

declare dso_local %struct.links_entry* @next_entry(%struct.archive_entry_linkresolver*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
