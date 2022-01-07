; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vfsops.c_dtfs_fs_fhtonode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vfsops.c_dtfs_fs_fhtonode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_usermount = type { i32 }
%struct.puffs_newinfo = type { i32 }
%struct.dtfs_fid = type { i64, i64, i32 }
%struct.puffs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32 }

@addrcmp = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtfs_fs_fhtonode(%struct.puffs_usermount* %0, i8* %1, i64 %2, %struct.puffs_newinfo* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.puffs_usermount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.puffs_newinfo*, align 8
  %10 = alloca %struct.dtfs_fid*, align 8
  %11 = alloca %struct.puffs_node*, align 8
  store %struct.puffs_usermount* %0, %struct.puffs_usermount** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.puffs_newinfo* %3, %struct.puffs_newinfo** %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp eq i64 %12, 24
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.dtfs_fid*
  store %struct.dtfs_fid* %17, %struct.dtfs_fid** %10, align 8
  %18 = load %struct.puffs_usermount*, %struct.puffs_usermount** %6, align 8
  %19 = load i32, i32* @addrcmp, align 4
  %20 = load %struct.dtfs_fid*, %struct.dtfs_fid** %10, align 8
  %21 = getelementptr inbounds %struct.dtfs_fid, %struct.dtfs_fid* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.puffs_node* @puffs_pn_nodewalk(%struct.puffs_usermount* %18, i32 %19, i32 %22)
  store %struct.puffs_node* %23, %struct.puffs_node** %11, align 8
  %24 = load %struct.puffs_node*, %struct.puffs_node** %11, align 8
  %25 = icmp eq %struct.puffs_node* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @ESTALE, align 4
  store i32 %27, i32* %5, align 4
  br label %70

28:                                               ; preds = %4
  %29 = load %struct.puffs_node*, %struct.puffs_node** %11, align 8
  %30 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dtfs_fid*, %struct.dtfs_fid** %10, align 8
  %34 = getelementptr inbounds %struct.dtfs_fid, %struct.dtfs_fid* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %28
  %38 = load %struct.puffs_node*, %struct.puffs_node** %11, align 8
  %39 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.dtfs_fid*, %struct.dtfs_fid** %10, align 8
  %43 = getelementptr inbounds %struct.dtfs_fid, %struct.dtfs_fid* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37, %28
  %47 = load i32, i32* @ESTALE, align 4
  store i32 %47, i32* %5, align 4
  br label %70

48:                                               ; preds = %37
  %49 = load %struct.puffs_newinfo*, %struct.puffs_newinfo** %9, align 8
  %50 = load %struct.puffs_node*, %struct.puffs_node** %11, align 8
  %51 = call i32 @puffs_newinfo_setcookie(%struct.puffs_newinfo* %49, %struct.puffs_node* %50)
  %52 = load %struct.puffs_newinfo*, %struct.puffs_newinfo** %9, align 8
  %53 = load %struct.puffs_node*, %struct.puffs_node** %11, align 8
  %54 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @puffs_newinfo_setvtype(%struct.puffs_newinfo* %52, i32 %56)
  %58 = load %struct.puffs_newinfo*, %struct.puffs_newinfo** %9, align 8
  %59 = load %struct.puffs_node*, %struct.puffs_node** %11, align 8
  %60 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @puffs_newinfo_setsize(%struct.puffs_newinfo* %58, i32 %62)
  %64 = load %struct.puffs_newinfo*, %struct.puffs_newinfo** %9, align 8
  %65 = load %struct.puffs_node*, %struct.puffs_node** %11, align 8
  %66 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @puffs_newinfo_setrdev(%struct.puffs_newinfo* %64, i32 %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %48, %46, %26
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.puffs_node* @puffs_pn_nodewalk(%struct.puffs_usermount*, i32, i32) #1

declare dso_local i32 @puffs_newinfo_setcookie(%struct.puffs_newinfo*, %struct.puffs_node*) #1

declare dso_local i32 @puffs_newinfo_setvtype(%struct.puffs_newinfo*, i32) #1

declare dso_local i32 @puffs_newinfo_setsize(%struct.puffs_newinfo*, i32) #1

declare dso_local i32 @puffs_newinfo_setrdev(%struct.puffs_newinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
