; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_subr.c_dtfs_removedent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_subr.c_dtfs_removedent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.dtfs_dirent = type { %struct.puffs_node* }
%struct.dtfs_file = type { i32* }

@VDIR = common dso_local global i64 0, align 8
@dfd_entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtfs_removedent(%struct.puffs_node* %0, %struct.dtfs_dirent* %1) #0 {
  %3 = alloca %struct.puffs_node*, align 8
  %4 = alloca %struct.dtfs_dirent*, align 8
  %5 = alloca %struct.puffs_node*, align 8
  %6 = alloca %struct.dtfs_file*, align 8
  store %struct.puffs_node* %0, %struct.puffs_node** %3, align 8
  store %struct.dtfs_dirent* %1, %struct.dtfs_dirent** %4, align 8
  %7 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %4, align 8
  %8 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %7, i32 0, i32 0
  %9 = load %struct.puffs_node*, %struct.puffs_node** %8, align 8
  store %struct.puffs_node* %9, %struct.puffs_node** %5, align 8
  %10 = load %struct.puffs_node*, %struct.puffs_node** %3, align 8
  %11 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VDIR, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %4, align 8
  %19 = load i32, i32* @dfd_entries, align 4
  %20 = call i32 @LIST_REMOVE(%struct.dtfs_dirent* %18, i32 %19)
  %21 = load %struct.puffs_node*, %struct.puffs_node** %5, align 8
  %22 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VDIR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = load %struct.puffs_node*, %struct.puffs_node** %5, align 8
  %29 = call %struct.dtfs_file* @DTFS_PTOF(%struct.puffs_node* %28)
  store %struct.dtfs_file* %29, %struct.dtfs_file** %6, align 8
  %30 = load %struct.puffs_node*, %struct.puffs_node** %3, align 8
  %31 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.dtfs_file*, %struct.dtfs_file** %6, align 8
  %36 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %27, %2
  %38 = load %struct.puffs_node*, %struct.puffs_node** %5, align 8
  %39 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.puffs_node*, %struct.puffs_node** %3, align 8
  %44 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %46, 2
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.puffs_node*, %struct.puffs_node** %3, align 8
  %51 = call i32 @dtfs_updatetimes(%struct.puffs_node* %50, i32 0, i32 1, i32 1)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.dtfs_dirent*, i32) #1

declare dso_local %struct.dtfs_file* @DTFS_PTOF(%struct.puffs_node*) #1

declare dso_local i32 @dtfs_updatetimes(%struct.puffs_node*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
