; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.mtree = type { %struct.mtree*, i32, i32, i32, i32, i32, %struct.mtree*, %struct.mtree*, %struct.mtree* }
%struct.mtree_entry = type { %struct.mtree_entry*, i32, i32, i32, i32, i32, %struct.mtree_entry*, %struct.mtree_entry*, %struct.mtree_entry* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cleanup(%struct.archive_read* %0) #0 {
  %2 = alloca %struct.archive_read*, align 8
  %3 = alloca %struct.mtree*, align 8
  %4 = alloca %struct.mtree_entry*, align 8
  %5 = alloca %struct.mtree_entry*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %2, align 8
  %6 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %7 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = bitcast i32* %10 to %struct.mtree*
  store %struct.mtree* %11, %struct.mtree** %3, align 8
  %12 = load %struct.mtree*, %struct.mtree** %3, align 8
  %13 = getelementptr inbounds %struct.mtree, %struct.mtree* %12, i32 0, i32 8
  %14 = load %struct.mtree*, %struct.mtree** %13, align 8
  %15 = bitcast %struct.mtree* %14 to %struct.mtree_entry*
  store %struct.mtree_entry* %15, %struct.mtree_entry** %4, align 8
  br label %16

16:                                               ; preds = %19, %1
  %17 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %18 = icmp ne %struct.mtree_entry* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %21 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %20, i32 0, i32 7
  %22 = load %struct.mtree_entry*, %struct.mtree_entry** %21, align 8
  store %struct.mtree_entry* %22, %struct.mtree_entry** %5, align 8
  %23 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %24 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %23, i32 0, i32 6
  %25 = load %struct.mtree_entry*, %struct.mtree_entry** %24, align 8
  %26 = call i32 @free(%struct.mtree_entry* %25)
  %27 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %28 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @free_options(i32 %29)
  %31 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %32 = call i32 @free(%struct.mtree_entry* %31)
  %33 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  store %struct.mtree_entry* %33, %struct.mtree_entry** %4, align 8
  br label %16

34:                                               ; preds = %16
  %35 = load %struct.mtree*, %struct.mtree** %3, align 8
  %36 = getelementptr inbounds %struct.mtree, %struct.mtree* %35, i32 0, i32 4
  %37 = call i32 @archive_string_free(i32* %36)
  %38 = load %struct.mtree*, %struct.mtree** %3, align 8
  %39 = getelementptr inbounds %struct.mtree, %struct.mtree* %38, i32 0, i32 3
  %40 = call i32 @archive_string_free(i32* %39)
  %41 = load %struct.mtree*, %struct.mtree** %3, align 8
  %42 = getelementptr inbounds %struct.mtree, %struct.mtree* %41, i32 0, i32 2
  %43 = call i32 @archive_string_free(i32* %42)
  %44 = load %struct.mtree*, %struct.mtree** %3, align 8
  %45 = getelementptr inbounds %struct.mtree, %struct.mtree* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @archive_entry_linkresolver_free(i32 %46)
  %48 = load %struct.mtree*, %struct.mtree** %3, align 8
  %49 = getelementptr inbounds %struct.mtree, %struct.mtree* %48, i32 0, i32 0
  %50 = load %struct.mtree*, %struct.mtree** %49, align 8
  %51 = bitcast %struct.mtree* %50 to %struct.mtree_entry*
  %52 = call i32 @free(%struct.mtree_entry* %51)
  %53 = load %struct.mtree*, %struct.mtree** %3, align 8
  %54 = bitcast %struct.mtree* %53 to %struct.mtree_entry*
  %55 = call i32 @free(%struct.mtree_entry* %54)
  %56 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %57 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  %60 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %60
}

declare dso_local i32 @free(%struct.mtree_entry*) #1

declare dso_local i32 @free_options(i32) #1

declare dso_local i32 @archive_string_free(i32*) #1

declare dso_local i32 @archive_entry_linkresolver_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
