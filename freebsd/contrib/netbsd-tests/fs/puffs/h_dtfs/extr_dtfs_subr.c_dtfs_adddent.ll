; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_subr.c_dtfs_adddent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_subr.c_dtfs_adddent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.dtfs_dirent = type { %struct.puffs_node*, %struct.puffs_node* }
%struct.dtfs_file = type { %struct.puffs_node*, i32 }
%struct.dtfs_mount = type { i32 }

@VDIR = common dso_local global i64 0, align 8
@dfd_entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtfs_adddent(%struct.puffs_node* %0, %struct.dtfs_dirent* %1) #0 {
  %3 = alloca %struct.puffs_node*, align 8
  %4 = alloca %struct.dtfs_dirent*, align 8
  %5 = alloca %struct.dtfs_file*, align 8
  %6 = alloca %struct.puffs_node*, align 8
  %7 = alloca %struct.dtfs_file*, align 8
  %8 = alloca %struct.dtfs_mount*, align 8
  store %struct.puffs_node* %0, %struct.puffs_node** %3, align 8
  store %struct.dtfs_dirent* %1, %struct.dtfs_dirent** %4, align 8
  %9 = load %struct.puffs_node*, %struct.puffs_node** %3, align 8
  %10 = call %struct.dtfs_file* @DTFS_PTOF(%struct.puffs_node* %9)
  store %struct.dtfs_file* %10, %struct.dtfs_file** %5, align 8
  %11 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %4, align 8
  %12 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %11, i32 0, i32 0
  %13 = load %struct.puffs_node*, %struct.puffs_node** %12, align 8
  store %struct.puffs_node* %13, %struct.puffs_node** %6, align 8
  %14 = load %struct.puffs_node*, %struct.puffs_node** %6, align 8
  %15 = call %struct.dtfs_file* @DTFS_PTOF(%struct.puffs_node* %14)
  store %struct.dtfs_file* %15, %struct.dtfs_file** %7, align 8
  %16 = load %struct.puffs_node*, %struct.puffs_node** %3, align 8
  %17 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VDIR, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.dtfs_file*, %struct.dtfs_file** %5, align 8
  %25 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %24, i32 0, i32 1
  %26 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %4, align 8
  %27 = load i32, i32* @dfd_entries, align 4
  %28 = call i32 @LIST_INSERT_HEAD(i32* %25, %struct.dtfs_dirent* %26, i32 %27)
  %29 = load %struct.puffs_node*, %struct.puffs_node** %6, align 8
  %30 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.puffs_node*, %struct.puffs_node** %6, align 8
  %35 = call %struct.dtfs_mount* @puffs_pn_getmntspecific(%struct.puffs_node* %34)
  store %struct.dtfs_mount* %35, %struct.dtfs_mount** %8, align 8
  %36 = load %struct.dtfs_mount*, %struct.dtfs_mount** %8, align 8
  %37 = getelementptr inbounds %struct.dtfs_mount, %struct.dtfs_mount* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.puffs_node*, %struct.puffs_node** %3, align 8
  %41 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %4, align 8
  %42 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %41, i32 0, i32 1
  store %struct.puffs_node* %40, %struct.puffs_node** %42, align 8
  %43 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %4, align 8
  %44 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %43, i32 0, i32 0
  %45 = load %struct.puffs_node*, %struct.puffs_node** %44, align 8
  %46 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VDIR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %2
  %52 = load %struct.puffs_node*, %struct.puffs_node** %3, align 8
  %53 = load %struct.dtfs_file*, %struct.dtfs_file** %7, align 8
  %54 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %53, i32 0, i32 0
  store %struct.puffs_node* %52, %struct.puffs_node** %54, align 8
  %55 = load %struct.puffs_node*, %struct.puffs_node** %3, align 8
  %56 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %51, %2
  %61 = load %struct.puffs_node*, %struct.puffs_node** %3, align 8
  %62 = call i32 @dtfs_updatetimes(%struct.puffs_node* %61, i32 0, i32 1, i32 1)
  ret void
}

declare dso_local %struct.dtfs_file* @DTFS_PTOF(%struct.puffs_node*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.dtfs_dirent*, i32) #1

declare dso_local %struct.dtfs_mount* @puffs_pn_getmntspecific(%struct.puffs_node*) #1

declare dso_local i32 @dtfs_updatetimes(%struct.puffs_node*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
