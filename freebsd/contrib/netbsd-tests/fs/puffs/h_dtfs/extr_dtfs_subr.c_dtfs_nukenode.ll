; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_subr.c_dtfs_nukenode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_subr.c_dtfs_nukenode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dtfs_dirent = type { i32 }
%struct.dtfs_mount = type { i32 }

@VDIR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtfs_nukenode(%struct.puffs_node* %0, %struct.puffs_node* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.puffs_node*, align 8
  %6 = alloca %struct.puffs_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dtfs_dirent*, align 8
  %10 = alloca %struct.dtfs_mount*, align 8
  store %struct.puffs_node* %0, %struct.puffs_node** %5, align 8
  store %struct.puffs_node* %1, %struct.puffs_node** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.puffs_node*, %struct.puffs_node** %6, align 8
  %12 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VDIR, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.puffs_node*, %struct.puffs_node** %6, align 8
  %20 = call i32 @DTFS_PTOF(%struct.puffs_node* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call %struct.dtfs_dirent* @dtfs_dirgetbyname(i32 %20, i8* %21, i64 %22)
  store %struct.dtfs_dirent* %23, %struct.dtfs_dirent** %9, align 8
  %24 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %9, align 8
  %25 = ptrtoint %struct.dtfs_dirent* %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.puffs_node*, %struct.puffs_node** %5, align 8
  %28 = call %struct.dtfs_mount* @puffs_pn_getmntspecific(%struct.puffs_node* %27)
  store %struct.dtfs_mount* %28, %struct.dtfs_mount** %10, align 8
  %29 = load %struct.dtfs_mount*, %struct.dtfs_mount** %10, align 8
  %30 = getelementptr inbounds %struct.dtfs_mount, %struct.dtfs_mount* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.dtfs_mount*, %struct.dtfs_mount** %10, align 8
  %34 = getelementptr inbounds %struct.dtfs_mount, %struct.dtfs_mount* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.puffs_node*, %struct.puffs_node** %6, align 8
  %40 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %9, align 8
  %41 = call i32 @dtfs_removedent(%struct.puffs_node* %39, %struct.dtfs_dirent* %40)
  %42 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %9, align 8
  %43 = call i32 @free(%struct.dtfs_dirent* %42)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.dtfs_dirent* @dtfs_dirgetbyname(i32, i8*, i64) #1

declare dso_local i32 @DTFS_PTOF(%struct.puffs_node*) #1

declare dso_local %struct.dtfs_mount* @puffs_pn_getmntspecific(%struct.puffs_node*) #1

declare dso_local i32 @dtfs_removedent(%struct.puffs_node*, %struct.dtfs_dirent*) #1

declare dso_local i32 @free(%struct.dtfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
