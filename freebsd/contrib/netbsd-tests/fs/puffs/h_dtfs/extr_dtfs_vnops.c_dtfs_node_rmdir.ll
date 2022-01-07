; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_rmdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_usermount = type { i32 }
%struct.puffs_cn = type { i32, i32 }
%struct.puffs_node = type { i32 }
%struct.dtfs_file = type { i32 }

@ENOTEMPTY = common dso_local global i32 0, align 4
@PUFFS_SETBACK_NOREF_N2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtfs_node_rmdir(%struct.puffs_usermount* %0, i8* %1, i8* %2, %struct.puffs_cn* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.puffs_usermount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.puffs_cn*, align 8
  %10 = alloca %struct.puffs_node*, align 8
  %11 = alloca %struct.dtfs_file*, align 8
  store %struct.puffs_usermount* %0, %struct.puffs_usermount** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.puffs_cn* %3, %struct.puffs_cn** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.puffs_node*
  store %struct.puffs_node* %13, %struct.puffs_node** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call %struct.dtfs_file* @DTFS_CTOF(i8* %14)
  store %struct.dtfs_file* %15, %struct.dtfs_file** %11, align 8
  %16 = load %struct.dtfs_file*, %struct.dtfs_file** %11, align 8
  %17 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %16, i32 0, i32 0
  %18 = call i32 @LIST_EMPTY(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOTEMPTY, align 4
  store i32 %21, i32* %5, align 4
  br label %36

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %25 = load %struct.puffs_cn*, %struct.puffs_cn** %9, align 8
  %26 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.puffs_cn*, %struct.puffs_cn** %9, align 8
  %29 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dtfs_nukenode(i8* %23, %struct.puffs_node* %24, i32 %27, i32 %30)
  %32 = load %struct.puffs_usermount*, %struct.puffs_usermount** %6, align 8
  %33 = call i32 @puffs_cc_getcc(%struct.puffs_usermount* %32)
  %34 = load i32, i32* @PUFFS_SETBACK_NOREF_N2, align 4
  %35 = call i32 @puffs_setback(i32 %33, i32 %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %22, %20
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.dtfs_file* @DTFS_CTOF(i8*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @dtfs_nukenode(i8*, %struct.puffs_node*, i32, i32) #1

declare dso_local i32 @puffs_setback(i32, i32) #1

declare dso_local i32 @puffs_cc_getcc(%struct.puffs_usermount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
