; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, %struct.tree_entry*, %struct.TYPE_5__* }
%struct.tree_entry = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_7__, i32, i8*, i8*, %struct.TYPE_5__*, i64, %struct.tree_entry* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.restore_time = type { i32, i32, i32, i32, i32, i32 }

@needsDescent = common dso_local global i32 0, align 4
@needsOpen = common dso_local global i32 0, align 4
@needsAscent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree*, i8*, i32, i8*, i8*, %struct.restore_time*)* @tree_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_push(%struct.tree* %0, i8* %1, i32 %2, i8* %3, i8* %4, %struct.restore_time* %5) #0 {
  %7 = alloca %struct.tree*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.restore_time*, align 8
  %13 = alloca %struct.tree_entry*, align 8
  store %struct.tree* %0, %struct.tree** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.restore_time* %5, %struct.restore_time** %12, align 8
  %14 = call %struct.tree_entry* @calloc(i32 1, i32 88)
  store %struct.tree_entry* %14, %struct.tree_entry** %13, align 8
  %15 = load %struct.tree*, %struct.tree** %7, align 8
  %16 = getelementptr inbounds %struct.tree, %struct.tree* %15, i32 0, i32 1
  %17 = load %struct.tree_entry*, %struct.tree_entry** %16, align 8
  %18 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %19 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %18, i32 0, i32 10
  store %struct.tree_entry* %17, %struct.tree_entry** %19, align 8
  %20 = load %struct.tree*, %struct.tree** %7, align 8
  %21 = getelementptr inbounds %struct.tree, %struct.tree* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %24 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %23, i32 0, i32 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %24, align 8
  %25 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %26 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %25, i32 0, i32 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %6
  %30 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %31 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %30, i32 0, i32 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %37 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %36, i32 0, i32 9
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %29, %6
  %39 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %40 = load %struct.tree*, %struct.tree** %7, align 8
  %41 = getelementptr inbounds %struct.tree, %struct.tree* %40, i32 0, i32 1
  store %struct.tree_entry* %39, %struct.tree_entry** %41, align 8
  %42 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %43 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %42, i32 0, i32 4
  %44 = call i32 @archive_string_init(%struct.TYPE_7__* %43)
  %45 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %46 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 8
  %47 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %48 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %47, i32 0, i32 4
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @archive_strcpy(%struct.TYPE_7__* %48, i8* %49)
  %51 = load i32, i32* @needsDescent, align 4
  %52 = load i32, i32* @needsOpen, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @needsAscent, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %57 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %60 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %63 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %62, i32 0, i32 7
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %66 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load %struct.tree*, %struct.tree** %7, align 8
  %68 = getelementptr inbounds %struct.tree, %struct.tree* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %71 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %73 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %77 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 6
  store i32 %75, i32* %78, align 4
  %79 = load %struct.restore_time*, %struct.restore_time** %12, align 8
  %80 = icmp ne %struct.restore_time* %79, null
  br i1 %80, label %81, label %118

81:                                               ; preds = %38
  %82 = load %struct.restore_time*, %struct.restore_time** %12, align 8
  %83 = getelementptr inbounds %struct.restore_time, %struct.restore_time* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %86 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 5
  store i32 %84, i32* %87, align 4
  %88 = load %struct.restore_time*, %struct.restore_time** %12, align 8
  %89 = getelementptr inbounds %struct.restore_time, %struct.restore_time* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %92 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  store i32 %90, i32* %93, align 4
  %94 = load %struct.restore_time*, %struct.restore_time** %12, align 8
  %95 = getelementptr inbounds %struct.restore_time, %struct.restore_time* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %98 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  store i32 %96, i32* %99, align 4
  %100 = load %struct.restore_time*, %struct.restore_time** %12, align 8
  %101 = getelementptr inbounds %struct.restore_time, %struct.restore_time* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %104 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 4
  %106 = load %struct.restore_time*, %struct.restore_time** %12, align 8
  %107 = getelementptr inbounds %struct.restore_time, %struct.restore_time* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %110 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load %struct.restore_time*, %struct.restore_time** %12, align 8
  %113 = getelementptr inbounds %struct.restore_time, %struct.restore_time* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.tree_entry*, %struct.tree_entry** %13, align 8
  %116 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 4
  br label %118

118:                                              ; preds = %81, %38
  ret void
}

declare dso_local %struct.tree_entry* @calloc(i32, i32) #1

declare dso_local i32 @archive_string_init(%struct.TYPE_7__*) #1

declare dso_local i32 @archive_strcpy(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
