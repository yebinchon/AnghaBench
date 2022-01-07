; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_subr.c_dtfs_freenode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_subr.c_dtfs_freenode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.dtfs_file = type { i32, %struct.dtfs_file*, %struct.dtfs_file** }
%struct.dtfs_mount = type { i32 }

@DTFS_BLOCKSHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtfs_freenode(%struct.puffs_node* %0) #0 {
  %2 = alloca %struct.puffs_node*, align 8
  %3 = alloca %struct.dtfs_file*, align 8
  %4 = alloca %struct.dtfs_mount*, align 8
  %5 = alloca i32, align 4
  store %struct.puffs_node* %0, %struct.puffs_node** %2, align 8
  %6 = load %struct.puffs_node*, %struct.puffs_node** %2, align 8
  %7 = call %struct.dtfs_file* @DTFS_PTOF(%struct.puffs_node* %6)
  store %struct.dtfs_file* %7, %struct.dtfs_file** %3, align 8
  %8 = load %struct.puffs_node*, %struct.puffs_node** %2, align 8
  %9 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.puffs_node*, %struct.puffs_node** %2, align 8
  %16 = call %struct.dtfs_mount* @puffs_pn_getmntspecific(%struct.puffs_node* %15)
  store %struct.dtfs_mount* %16, %struct.dtfs_mount** %4, align 8
  %17 = load %struct.puffs_node*, %struct.puffs_node** %2, align 8
  %18 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %84 [
    i32 129, label %21
    i32 130, label %78
    i32 133, label %83
    i32 134, label %83
    i32 132, label %83
    i32 128, label %83
    i32 131, label %83
  ]

21:                                               ; preds = %1
  %22 = load %struct.dtfs_mount*, %struct.dtfs_mount** %4, align 8
  %23 = getelementptr inbounds %struct.dtfs_mount, %struct.dtfs_mount* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.puffs_node*, %struct.puffs_node** %2, align 8
  %26 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %24, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.puffs_node*, %struct.puffs_node** %2, align 8
  %33 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dtfs_mount*, %struct.dtfs_mount** %4, align 8
  %37 = getelementptr inbounds %struct.dtfs_mount, %struct.dtfs_mount* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, %35
  store i32 %39, i32* %37, align 4
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %57, %21
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.dtfs_file*, %struct.dtfs_file** %3, align 8
  %43 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DTFS_BLOCKSHIFT, align 4
  %46 = call i32 @BLOCKNUM(i32 %44, i32 %45)
  %47 = icmp slt i32 %41, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %40
  %49 = load %struct.dtfs_file*, %struct.dtfs_file** %3, align 8
  %50 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %49, i32 0, i32 2
  %51 = load %struct.dtfs_file**, %struct.dtfs_file*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.dtfs_file*, %struct.dtfs_file** %51, i64 %53
  %55 = load %struct.dtfs_file*, %struct.dtfs_file** %54, align 8
  %56 = call i32 @free(%struct.dtfs_file* %55)
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %40

60:                                               ; preds = %40
  %61 = load %struct.dtfs_file*, %struct.dtfs_file** %3, align 8
  %62 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @DTFS_BLOCKSHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %60
  %69 = load %struct.dtfs_file*, %struct.dtfs_file** %3, align 8
  %70 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %69, i32 0, i32 2
  %71 = load %struct.dtfs_file**, %struct.dtfs_file*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.dtfs_file*, %struct.dtfs_file** %71, i64 %73
  %75 = load %struct.dtfs_file*, %struct.dtfs_file** %74, align 8
  %76 = call i32 @free(%struct.dtfs_file* %75)
  br label %77

77:                                               ; preds = %68, %60
  br label %86

78:                                               ; preds = %1
  %79 = load %struct.dtfs_file*, %struct.dtfs_file** %3, align 8
  %80 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %79, i32 0, i32 1
  %81 = load %struct.dtfs_file*, %struct.dtfs_file** %80, align 8
  %82 = call i32 @free(%struct.dtfs_file* %81)
  br label %86

83:                                               ; preds = %1, %1, %1, %1, %1
  br label %86

84:                                               ; preds = %1
  %85 = call i32 @assert(i32 0)
  br label %86

86:                                               ; preds = %84, %83, %78, %77
  %87 = load %struct.dtfs_file*, %struct.dtfs_file** %3, align 8
  %88 = call i32 @free(%struct.dtfs_file* %87)
  %89 = load %struct.puffs_node*, %struct.puffs_node** %2, align 8
  %90 = call i32 @puffs_pn_put(%struct.puffs_node* %89)
  ret void
}

declare dso_local %struct.dtfs_file* @DTFS_PTOF(%struct.puffs_node*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.dtfs_mount* @puffs_pn_getmntspecific(%struct.puffs_node*) #1

declare dso_local i32 @BLOCKNUM(i32, i32) #1

declare dso_local i32 @free(%struct.dtfs_file*) #1

declare dso_local i32 @puffs_pn_put(%struct.puffs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
