; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@INVALID_DIR_HANDLE = common dso_local global i64 0, align 8
@isDirLink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree*)* @tree_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_close(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  store %struct.tree* %0, %struct.tree** %2, align 8
  %3 = load %struct.tree*, %struct.tree** %2, align 8
  %4 = icmp eq %struct.tree* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %84

6:                                                ; preds = %1
  %7 = load %struct.tree*, %struct.tree** %2, align 8
  %8 = getelementptr inbounds %struct.tree, %struct.tree* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = load %struct.tree*, %struct.tree** %2, align 8
  %13 = getelementptr inbounds %struct.tree, %struct.tree* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.tree*, %struct.tree** %2, align 8
  %16 = load %struct.tree*, %struct.tree** %2, align 8
  %17 = getelementptr inbounds %struct.tree, %struct.tree* %16, i32 0, i32 5
  %18 = call i32 @close_and_restore_time(i32 %14, %struct.tree* %15, i32* %17)
  %19 = load %struct.tree*, %struct.tree** %2, align 8
  %20 = getelementptr inbounds %struct.tree, %struct.tree* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  br label %21

21:                                               ; preds = %11, %6
  %22 = load %struct.tree*, %struct.tree** %2, align 8
  %23 = getelementptr inbounds %struct.tree, %struct.tree* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @INVALID_DIR_HANDLE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.tree*, %struct.tree** %2, align 8
  %29 = getelementptr inbounds %struct.tree, %struct.tree* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @closedir(i64 %30)
  %32 = load i64, i64* @INVALID_DIR_HANDLE, align 8
  %33 = load %struct.tree*, %struct.tree** %2, align 8
  %34 = getelementptr inbounds %struct.tree, %struct.tree* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %27, %21
  br label %36

36:                                               ; preds = %57, %35
  %37 = load %struct.tree*, %struct.tree** %2, align 8
  %38 = getelementptr inbounds %struct.tree, %struct.tree* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load %struct.tree*, %struct.tree** %2, align 8
  %43 = getelementptr inbounds %struct.tree, %struct.tree* %42, i32 0, i32 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @isDirLink, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load %struct.tree*, %struct.tree** %2, align 8
  %52 = getelementptr inbounds %struct.tree, %struct.tree* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @close(i32 %55)
  br label %57

57:                                               ; preds = %50, %41
  %58 = load %struct.tree*, %struct.tree** %2, align 8
  %59 = call i32 @tree_pop(%struct.tree* %58)
  br label %36

60:                                               ; preds = %36
  %61 = load %struct.tree*, %struct.tree** %2, align 8
  %62 = getelementptr inbounds %struct.tree, %struct.tree* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.tree*, %struct.tree** %2, align 8
  %67 = getelementptr inbounds %struct.tree, %struct.tree* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @close(i32 %68)
  %70 = load %struct.tree*, %struct.tree** %2, align 8
  %71 = getelementptr inbounds %struct.tree, %struct.tree* %70, i32 0, i32 2
  store i32 -1, i32* %71, align 8
  br label %72

72:                                               ; preds = %65, %60
  %73 = load %struct.tree*, %struct.tree** %2, align 8
  %74 = getelementptr inbounds %struct.tree, %struct.tree* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.tree*, %struct.tree** %2, align 8
  %79 = getelementptr inbounds %struct.tree, %struct.tree* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @close(i32 %80)
  %82 = load %struct.tree*, %struct.tree** %2, align 8
  %83 = getelementptr inbounds %struct.tree, %struct.tree* %82, i32 0, i32 3
  store i32 -1, i32* %83, align 4
  br label %84

84:                                               ; preds = %5, %77, %72
  ret void
}

declare dso_local i32 @close_and_restore_time(i32, %struct.tree*, i32*) #1

declare dso_local i32 @closedir(i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @tree_pop(%struct.tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
