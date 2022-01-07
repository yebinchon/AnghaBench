; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_usermount = type { i32 }
%struct.puffs_cn = type { i32, i32 }
%struct.puffs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@VDIR = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@PUFFS_SETBACK_NOREF_N2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtfs_node_remove(%struct.puffs_usermount* %0, i8* %1, i8* %2, %struct.puffs_cn* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.puffs_usermount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.puffs_cn*, align 8
  %10 = alloca %struct.puffs_node*, align 8
  %11 = alloca %struct.puffs_node*, align 8
  store %struct.puffs_usermount* %0, %struct.puffs_usermount** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.puffs_cn* %3, %struct.puffs_cn** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.puffs_node*
  store %struct.puffs_node* %13, %struct.puffs_node** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.puffs_node*
  store %struct.puffs_node* %15, %struct.puffs_node** %11, align 8
  %16 = load %struct.puffs_node*, %struct.puffs_node** %11, align 8
  %17 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VDIR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @EPERM, align 4
  store i32 %23, i32* %5, align 4
  br label %45

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %27 = load %struct.puffs_cn*, %struct.puffs_cn** %9, align 8
  %28 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.puffs_cn*, %struct.puffs_cn** %9, align 8
  %31 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dtfs_nukenode(i8* %25, %struct.puffs_node* %26, i32 %29, i32 %32)
  %34 = load %struct.puffs_node*, %struct.puffs_node** %11, align 8
  %35 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %24
  %40 = load %struct.puffs_usermount*, %struct.puffs_usermount** %6, align 8
  %41 = call i32 @puffs_cc_getcc(%struct.puffs_usermount* %40)
  %42 = load i32, i32* @PUFFS_SETBACK_NOREF_N2, align 4
  %43 = call i32 @puffs_setback(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %24
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %22
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @dtfs_nukenode(i8*, %struct.puffs_node*, i32, i32) #1

declare dso_local i32 @puffs_setback(i32, i32) #1

declare dso_local i32 @puffs_cc_getcc(%struct.puffs_usermount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
