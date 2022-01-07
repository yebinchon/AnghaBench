; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vfsops.c_dtfs_fs_nodetofh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vfsops.c_dtfs_fs_nodetofh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_usermount = type { i32 }
%struct.puffs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dtfs_fid = type { i32, i32, %struct.puffs_node* }

@dynamicfh = external dso_local global i32, align 4
@E2BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtfs_fs_nodetofh(%struct.puffs_usermount* %0, i8* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.puffs_usermount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.puffs_node*, align 8
  %11 = alloca %struct.dtfs_fid*, align 8
  store %struct.puffs_usermount* %0, %struct.puffs_usermount** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.puffs_node*
  store %struct.puffs_node* %13, %struct.puffs_node** %10, align 8
  %14 = load i32, i32* @dynamicfh, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i64*, i64** %9, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %18, 16
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  br label %31

22:                                               ; preds = %4
  %23 = load i64*, i64** %9, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %24, 16
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i64*, i64** %9, align 8
  store i64 16, i64* %27, align 8
  %28 = load i32, i32* @E2BIG, align 4
  store i32 %28, i32* %5, align 4
  br label %49

29:                                               ; preds = %22
  %30 = load i64*, i64** %9, align 8
  store i64 16, i64* %30, align 8
  br label %31

31:                                               ; preds = %29, %16
  %32 = load i8*, i8** %8, align 8
  %33 = bitcast i8* %32 to %struct.dtfs_fid*
  store %struct.dtfs_fid* %33, %struct.dtfs_fid** %11, align 8
  %34 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %35 = load %struct.dtfs_fid*, %struct.dtfs_fid** %11, align 8
  %36 = getelementptr inbounds %struct.dtfs_fid, %struct.dtfs_fid* %35, i32 0, i32 2
  store %struct.puffs_node* %34, %struct.puffs_node** %36, align 8
  %37 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %38 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dtfs_fid*, %struct.dtfs_fid** %11, align 8
  %42 = getelementptr inbounds %struct.dtfs_fid, %struct.dtfs_fid* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %44 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dtfs_fid*, %struct.dtfs_fid** %11, align 8
  %48 = getelementptr inbounds %struct.dtfs_fid, %struct.dtfs_fid* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %31, %26
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
