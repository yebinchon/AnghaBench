; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_mkdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_usermount = type { i32 }
%struct.puffs_newinfo = type { i32 }
%struct.puffs_cn = type { i32 }
%struct.vattr = type { i32 }
%struct.puffs_node = type { i32 }

@VDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtfs_node_mkdir(%struct.puffs_usermount* %0, i8* %1, %struct.puffs_newinfo* %2, %struct.puffs_cn* %3, %struct.vattr* %4) #0 {
  %6 = alloca %struct.puffs_usermount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.puffs_newinfo*, align 8
  %9 = alloca %struct.puffs_cn*, align 8
  %10 = alloca %struct.vattr*, align 8
  %11 = alloca %struct.puffs_node*, align 8
  %12 = alloca %struct.puffs_node*, align 8
  store %struct.puffs_usermount* %0, %struct.puffs_usermount** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.puffs_newinfo* %2, %struct.puffs_newinfo** %8, align 8
  store %struct.puffs_cn* %3, %struct.puffs_cn** %9, align 8
  store %struct.vattr* %4, %struct.vattr** %10, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.puffs_node*
  store %struct.puffs_node* %14, %struct.puffs_node** %11, align 8
  %15 = load %struct.puffs_node*, %struct.puffs_node** %11, align 8
  %16 = load %struct.puffs_cn*, %struct.puffs_cn** %9, align 8
  %17 = load i32, i32* @VDIR, align 4
  %18 = call %struct.puffs_node* @dtfs_genfile(%struct.puffs_node* %15, %struct.puffs_cn* %16, i32 %17)
  store %struct.puffs_node* %18, %struct.puffs_node** %12, align 8
  %19 = load %struct.puffs_node*, %struct.puffs_node** %12, align 8
  %20 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %19, i32 0, i32 0
  %21 = load %struct.vattr*, %struct.vattr** %10, align 8
  %22 = call i32 @puffs_setvattr(i32* %20, %struct.vattr* %21)
  %23 = load %struct.puffs_newinfo*, %struct.puffs_newinfo** %8, align 8
  %24 = load %struct.puffs_node*, %struct.puffs_node** %12, align 8
  %25 = call i32 @puffs_newinfo_setcookie(%struct.puffs_newinfo* %23, %struct.puffs_node* %24)
  ret i32 0
}

declare dso_local %struct.puffs_node* @dtfs_genfile(%struct.puffs_node*, %struct.puffs_cn*, i32) #1

declare dso_local i32 @puffs_setvattr(i32*, %struct.vattr*) #1

declare dso_local i32 @puffs_newinfo_setcookie(%struct.puffs_newinfo*, %struct.puffs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
