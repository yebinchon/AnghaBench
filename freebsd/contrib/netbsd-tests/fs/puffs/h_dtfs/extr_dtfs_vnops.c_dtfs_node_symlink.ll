; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_usermount = type { i32 }
%struct.puffs_newinfo = type { i32 }
%struct.puffs_cn = type { i32 }
%struct.vattr = type { i64 }
%struct.puffs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dtfs_file = type { i32 }

@VLNK = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtfs_node_symlink(%struct.puffs_usermount* %0, i8* %1, %struct.puffs_newinfo* %2, %struct.puffs_cn* %3, %struct.vattr* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.puffs_usermount*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.puffs_newinfo*, align 8
  %11 = alloca %struct.puffs_cn*, align 8
  %12 = alloca %struct.vattr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.puffs_node*, align 8
  %15 = alloca %struct.puffs_node*, align 8
  %16 = alloca %struct.dtfs_file*, align 8
  store %struct.puffs_usermount* %0, %struct.puffs_usermount** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.puffs_newinfo* %2, %struct.puffs_newinfo** %10, align 8
  store %struct.puffs_cn* %3, %struct.puffs_cn** %11, align 8
  store %struct.vattr* %4, %struct.vattr** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.puffs_node*
  store %struct.puffs_node* %18, %struct.puffs_node** %14, align 8
  %19 = load %struct.vattr*, %struct.vattr** %12, align 8
  %20 = getelementptr inbounds %struct.vattr, %struct.vattr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VLNK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @ENODEV, align 4
  store i32 %25, i32* %7, align 4
  br label %51

26:                                               ; preds = %6
  %27 = load %struct.puffs_node*, %struct.puffs_node** %14, align 8
  %28 = load %struct.puffs_cn*, %struct.puffs_cn** %11, align 8
  %29 = load i64, i64* @VLNK, align 8
  %30 = call %struct.puffs_node* @dtfs_genfile(%struct.puffs_node* %27, %struct.puffs_cn* %28, i64 %29)
  store %struct.puffs_node* %30, %struct.puffs_node** %15, align 8
  %31 = load %struct.puffs_node*, %struct.puffs_node** %15, align 8
  %32 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %31, i32 0, i32 0
  %33 = load %struct.vattr*, %struct.vattr** %12, align 8
  %34 = call i32 @puffs_setvattr(%struct.TYPE_2__* %32, %struct.vattr* %33)
  %35 = load %struct.puffs_node*, %struct.puffs_node** %15, align 8
  %36 = call %struct.dtfs_file* @DTFS_PTOF(%struct.puffs_node* %35)
  store %struct.dtfs_file* %36, %struct.dtfs_file** %16, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = call i32 @estrdup(i8* %37)
  %39 = load %struct.dtfs_file*, %struct.dtfs_file** %16, align 8
  %40 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.dtfs_file*, %struct.dtfs_file** %16, align 8
  %42 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strlen(i32 %43)
  %45 = load %struct.puffs_node*, %struct.puffs_node** %15, align 8
  %46 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.puffs_newinfo*, %struct.puffs_newinfo** %10, align 8
  %49 = load %struct.puffs_node*, %struct.puffs_node** %15, align 8
  %50 = call i32 @puffs_newinfo_setcookie(%struct.puffs_newinfo* %48, %struct.puffs_node* %49)
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %26, %24
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local %struct.puffs_node* @dtfs_genfile(%struct.puffs_node*, %struct.puffs_cn*, i64) #1

declare dso_local i32 @puffs_setvattr(%struct.TYPE_2__*, %struct.vattr*) #1

declare dso_local %struct.dtfs_file* @DTFS_PTOF(%struct.puffs_node*) #1

declare dso_local i32 @estrdup(i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @puffs_newinfo_setcookie(%struct.puffs_newinfo*, %struct.puffs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
