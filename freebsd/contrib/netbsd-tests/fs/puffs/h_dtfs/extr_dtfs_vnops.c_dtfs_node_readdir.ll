; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_usermount = type { i32 }
%struct.dirent = type { i32 }
%struct.puffs_cred = type { i32 }
%struct.puffs_node = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.dtfs_dirent = type { i32, %struct.puffs_node* }

@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@DENT_DOT = common dso_local global i32 0, align 4
@DENT_DOTDOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtfs_node_readdir(%struct.puffs_usermount* %0, i8* %1, %struct.dirent* %2, i32* %3, i64* %4, %struct.puffs_cred* %5, i32* %6, i32* %7, i64* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.puffs_usermount*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.dirent*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.puffs_cred*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca %struct.puffs_node*, align 8
  %21 = alloca %struct.puffs_node*, align 8
  %22 = alloca %struct.dtfs_dirent*, align 8
  store %struct.puffs_usermount* %0, %struct.puffs_usermount** %11, align 8
  store i8* %1, i8** %12, align 8
  store %struct.dirent* %2, %struct.dirent** %13, align 8
  store i32* %3, i32** %14, align 8
  store i64* %4, i64** %15, align 8
  store %struct.puffs_cred* %5, %struct.puffs_cred** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i64* %8, i64** %19, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = bitcast i8* %23 to %struct.puffs_node*
  store %struct.puffs_node* %24, %struct.puffs_node** %20, align 8
  %25 = load %struct.puffs_node*, %struct.puffs_node** %20, align 8
  %26 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VDIR, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %9
  %32 = load i32, i32* @ENOTDIR, align 4
  store i32 %32, i32* %10, align 4
  br label %107

33:                                               ; preds = %9
  %34 = load %struct.puffs_node*, %struct.puffs_node** %20, align 8
  %35 = call i32 @dtfs_updatetimes(%struct.puffs_node* %34, i32 1, i32 0, i32 0)
  %36 = load i64*, i64** %19, align 8
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %47, %33
  %38 = load i32*, i32** %14, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DENT_DOT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32*, i32** %14, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DENT_DOTDOT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %42, %37
  %48 = load %struct.puffs_node*, %struct.puffs_node** %20, align 8
  %49 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i64*, i64** %15, align 8
  %55 = call i32 @puffs_gendotdent(%struct.dirent** %13, i32 %51, i32 %53, i64* %54)
  %56 = load i32*, i32** %14, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i32*, i32** %18, align 8
  %60 = load i64*, i64** %19, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @PUFFS_STORE_DCOOKIE(i32* %59, i64* %60, i32 %62)
  br label %37

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %97, %64
  %66 = load %struct.puffs_node*, %struct.puffs_node** %20, align 8
  %67 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @DENT_ADJ(i32 %70)
  %72 = call %struct.dtfs_dirent* @dtfs_dirgetnth(i32 %68, i32 %71)
  store %struct.dtfs_dirent* %72, %struct.dtfs_dirent** %22, align 8
  %73 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %22, align 8
  %74 = icmp ne %struct.dtfs_dirent* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %65
  %76 = load i32*, i32** %17, align 8
  store i32 1, i32* %76, align 4
  br label %106

77:                                               ; preds = %65
  %78 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %22, align 8
  %79 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %78, i32 0, i32 1
  %80 = load %struct.puffs_node*, %struct.puffs_node** %79, align 8
  store %struct.puffs_node* %80, %struct.puffs_node** %21, align 8
  %81 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %22, align 8
  %82 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.puffs_node*, %struct.puffs_node** %21, align 8
  %85 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.puffs_node*, %struct.puffs_node** %21, align 8
  %89 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @puffs_vtype2dt(i64 %91)
  %93 = load i64*, i64** %15, align 8
  %94 = call i32 @puffs_nextdent(%struct.dirent** %13, i32 %83, i32 %87, i32 %92, i64* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %77
  br label %106

97:                                               ; preds = %77
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load i32*, i32** %18, align 8
  %102 = load i64*, i64** %19, align 8
  %103 = load i32*, i32** %14, align 8
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @PUFFS_STORE_DCOOKIE(i32* %101, i64* %102, i32 %104)
  br label %65

106:                                              ; preds = %96, %75
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %106, %31
  %108 = load i32, i32* %10, align 4
  ret i32 %108
}

declare dso_local i32 @dtfs_updatetimes(%struct.puffs_node*, i32, i32, i32) #1

declare dso_local i32 @puffs_gendotdent(%struct.dirent**, i32, i32, i64*) #1

declare dso_local i32 @PUFFS_STORE_DCOOKIE(i32*, i64*, i32) #1

declare dso_local %struct.dtfs_dirent* @dtfs_dirgetnth(i32, i32) #1

declare dso_local i32 @DENT_ADJ(i32) #1

declare dso_local i32 @puffs_nextdent(%struct.dirent**, i32, i32, i32, i64*) #1

declare dso_local i32 @puffs_vtype2dt(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
