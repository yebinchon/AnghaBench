; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, %struct.tree*, %struct.tree*, %struct.tree*, %struct.tree*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree*)* @tree_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_free(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  %3 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %2, align 8
  %4 = load %struct.tree*, %struct.tree** %2, align 8
  %5 = icmp eq %struct.tree* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %41

7:                                                ; preds = %1
  %8 = load %struct.tree*, %struct.tree** %2, align 8
  %9 = getelementptr inbounds %struct.tree, %struct.tree* %8, i32 0, i32 5
  %10 = call i32 @archive_string_free(i32* %9)
  %11 = load %struct.tree*, %struct.tree** %2, align 8
  %12 = getelementptr inbounds %struct.tree, %struct.tree* %11, i32 0, i32 3
  %13 = load %struct.tree*, %struct.tree** %12, align 8
  %14 = call i32 @free(%struct.tree* %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %31, %7
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.tree*, %struct.tree** %2, align 8
  %18 = getelementptr inbounds %struct.tree, %struct.tree* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load %struct.tree*, %struct.tree** %2, align 8
  %23 = getelementptr inbounds %struct.tree, %struct.tree* %22, i32 0, i32 1
  %24 = load %struct.tree*, %struct.tree** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.tree, %struct.tree* %24, i64 %26
  %28 = getelementptr inbounds %struct.tree, %struct.tree* %27, i32 0, i32 2
  %29 = load %struct.tree*, %struct.tree** %28, align 8
  %30 = call i32 @free(%struct.tree* %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %15

34:                                               ; preds = %15
  %35 = load %struct.tree*, %struct.tree** %2, align 8
  %36 = getelementptr inbounds %struct.tree, %struct.tree* %35, i32 0, i32 1
  %37 = load %struct.tree*, %struct.tree** %36, align 8
  %38 = call i32 @free(%struct.tree* %37)
  %39 = load %struct.tree*, %struct.tree** %2, align 8
  %40 = call i32 @free(%struct.tree* %39)
  br label %41

41:                                               ; preds = %34, %6
  ret void
}

declare dso_local i32 @archive_string_free(i32*) #1

declare dso_local i32 @free(%struct.tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
