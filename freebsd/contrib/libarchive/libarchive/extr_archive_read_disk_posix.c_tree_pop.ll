; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i64, i8*, %struct.TYPE_2__, %struct.tree_entry*, %struct.tree_entry* }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.tree_entry = type { i64, i32, %struct.tree_entry*, %struct.tree_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree*)* @tree_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_pop(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  %3 = alloca %struct.tree_entry*, align 8
  store %struct.tree* %0, %struct.tree** %2, align 8
  %4 = load %struct.tree*, %struct.tree** %2, align 8
  %5 = getelementptr inbounds %struct.tree, %struct.tree* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.tree*, %struct.tree** %2, align 8
  %9 = getelementptr inbounds %struct.tree, %struct.tree* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i8, i8* %7, i64 %10
  store i8 0, i8* %11, align 1
  %12 = load %struct.tree*, %struct.tree** %2, align 8
  %13 = getelementptr inbounds %struct.tree, %struct.tree* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.tree*, %struct.tree** %2, align 8
  %16 = getelementptr inbounds %struct.tree, %struct.tree* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i64 %14, i64* %17, align 8
  %18 = load %struct.tree*, %struct.tree** %2, align 8
  %19 = getelementptr inbounds %struct.tree, %struct.tree* %18, i32 0, i32 3
  %20 = load %struct.tree_entry*, %struct.tree_entry** %19, align 8
  %21 = load %struct.tree*, %struct.tree** %2, align 8
  %22 = getelementptr inbounds %struct.tree, %struct.tree* %21, i32 0, i32 4
  %23 = load %struct.tree_entry*, %struct.tree_entry** %22, align 8
  %24 = icmp eq %struct.tree_entry* %20, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %1
  %26 = load %struct.tree*, %struct.tree** %2, align 8
  %27 = getelementptr inbounds %struct.tree, %struct.tree* %26, i32 0, i32 4
  %28 = load %struct.tree_entry*, %struct.tree_entry** %27, align 8
  %29 = icmp ne %struct.tree_entry* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.tree*, %struct.tree** %2, align 8
  %32 = getelementptr inbounds %struct.tree, %struct.tree* %31, i32 0, i32 4
  %33 = load %struct.tree_entry*, %struct.tree_entry** %32, align 8
  %34 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %33, i32 0, i32 3
  %35 = load %struct.tree_entry*, %struct.tree_entry** %34, align 8
  %36 = load %struct.tree*, %struct.tree** %2, align 8
  %37 = getelementptr inbounds %struct.tree, %struct.tree* %36, i32 0, i32 4
  store %struct.tree_entry* %35, %struct.tree_entry** %37, align 8
  br label %38

38:                                               ; preds = %30, %25, %1
  %39 = load %struct.tree*, %struct.tree** %2, align 8
  %40 = getelementptr inbounds %struct.tree, %struct.tree* %39, i32 0, i32 3
  %41 = load %struct.tree_entry*, %struct.tree_entry** %40, align 8
  store %struct.tree_entry* %41, %struct.tree_entry** %3, align 8
  %42 = load %struct.tree_entry*, %struct.tree_entry** %3, align 8
  %43 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %42, i32 0, i32 2
  %44 = load %struct.tree_entry*, %struct.tree_entry** %43, align 8
  %45 = load %struct.tree*, %struct.tree** %2, align 8
  %46 = getelementptr inbounds %struct.tree, %struct.tree* %45, i32 0, i32 3
  store %struct.tree_entry* %44, %struct.tree_entry** %46, align 8
  %47 = load %struct.tree_entry*, %struct.tree_entry** %3, align 8
  %48 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.tree*, %struct.tree** %2, align 8
  %51 = getelementptr inbounds %struct.tree, %struct.tree* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.tree*, %struct.tree** %2, align 8
  %53 = getelementptr inbounds %struct.tree, %struct.tree* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.tree*, %struct.tree** %2, align 8
  %57 = getelementptr inbounds %struct.tree, %struct.tree* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load %struct.tree*, %struct.tree** %2, align 8
  %61 = getelementptr inbounds %struct.tree, %struct.tree* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %70, %38
  %63 = load %struct.tree*, %struct.tree** %2, align 8
  %64 = getelementptr inbounds %struct.tree, %struct.tree* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 47
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.tree*, %struct.tree** %2, align 8
  %72 = getelementptr inbounds %struct.tree, %struct.tree* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %72, align 8
  br label %62

75:                                               ; preds = %62
  %76 = load %struct.tree_entry*, %struct.tree_entry** %3, align 8
  %77 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %76, i32 0, i32 1
  %78 = call i32 @archive_string_free(i32* %77)
  %79 = load %struct.tree_entry*, %struct.tree_entry** %3, align 8
  %80 = call i32 @free(%struct.tree_entry* %79)
  ret void
}

declare dso_local i32 @archive_string_free(i32*) #1

declare dso_local i32 @free(%struct.tree_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
