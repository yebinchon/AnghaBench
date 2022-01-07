; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linsysfs/extr_linsysfs.c_linsysfs_listnics.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linsysfs/extr_linsysfs.c_linsysfs_listnics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfs_node = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"eth0\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@linsysfs_ifnet_addr = common dso_local global i32 0, align 4
@PFS_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"addr_len\00", align 1
@linsysfs_ifnet_addrlen = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@linsysfs_ifnet_flags = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"ifindex\00", align 1
@linsysfs_ifnet_ifindex = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@linsysfs_ifnet_mtu = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"tx_queue_len\00", align 1
@linsysfs_ifnet_tx_queue_len = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@linsysfs_ifnet_type = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfs_node*)* @linsysfs_listnics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linsysfs_listnics(%struct.pfs_node* %0) #0 {
  %2 = alloca %struct.pfs_node*, align 8
  %3 = alloca %struct.pfs_node*, align 8
  %4 = alloca %struct.pfs_node*, align 8
  store %struct.pfs_node* %0, %struct.pfs_node** %2, align 8
  %5 = load %struct.pfs_node*, %struct.pfs_node** %2, align 8
  %6 = call %struct.pfs_node* @pfs_create_dir(%struct.pfs_node* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32* null, i32 0)
  store %struct.pfs_node* %6, %struct.pfs_node** %3, align 8
  %7 = load %struct.pfs_node*, %struct.pfs_node** %3, align 8
  %8 = load i32, i32* @PFS_RD, align 4
  %9 = call i32 @pfs_create_file(%struct.pfs_node* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* @linsysfs_ifnet_addr, i32* null, i32* null, i32* null, i32 %8)
  %10 = load %struct.pfs_node*, %struct.pfs_node** %3, align 8
  %11 = load i32, i32* @PFS_RD, align 4
  %12 = call i32 @pfs_create_file(%struct.pfs_node* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* @linsysfs_ifnet_addrlen, i32* null, i32* null, i32* null, i32 %11)
  %13 = load %struct.pfs_node*, %struct.pfs_node** %3, align 8
  %14 = load i32, i32* @PFS_RD, align 4
  %15 = call i32 @pfs_create_file(%struct.pfs_node* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* @linsysfs_ifnet_flags, i32* null, i32* null, i32* null, i32 %14)
  %16 = load %struct.pfs_node*, %struct.pfs_node** %3, align 8
  %17 = load i32, i32* @PFS_RD, align 4
  %18 = call i32 @pfs_create_file(%struct.pfs_node* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* @linsysfs_ifnet_ifindex, i32* null, i32* null, i32* null, i32 %17)
  %19 = load %struct.pfs_node*, %struct.pfs_node** %3, align 8
  %20 = load i32, i32* @PFS_RD, align 4
  %21 = call i32 @pfs_create_file(%struct.pfs_node* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* @linsysfs_ifnet_mtu, i32* null, i32* null, i32* null, i32 %20)
  %22 = load %struct.pfs_node*, %struct.pfs_node** %3, align 8
  %23 = load i32, i32* @PFS_RD, align 4
  %24 = call i32 @pfs_create_file(%struct.pfs_node* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* @linsysfs_ifnet_tx_queue_len, i32* null, i32* null, i32* null, i32 %23)
  %25 = load %struct.pfs_node*, %struct.pfs_node** %3, align 8
  %26 = load i32, i32* @PFS_RD, align 4
  %27 = call i32 @pfs_create_file(%struct.pfs_node* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* @linsysfs_ifnet_type, i32* null, i32* null, i32* null, i32 %26)
  %28 = load %struct.pfs_node*, %struct.pfs_node** %2, align 8
  %29 = call %struct.pfs_node* @pfs_create_dir(%struct.pfs_node* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32* null, i32* null, i32* null, i32 0)
  store %struct.pfs_node* %29, %struct.pfs_node** %4, align 8
  %30 = load %struct.pfs_node*, %struct.pfs_node** %4, align 8
  %31 = load i32, i32* @PFS_RD, align 4
  %32 = call i32 @pfs_create_file(%struct.pfs_node* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* @linsysfs_ifnet_addr, i32* null, i32* null, i32* null, i32 %31)
  %33 = load %struct.pfs_node*, %struct.pfs_node** %4, align 8
  %34 = load i32, i32* @PFS_RD, align 4
  %35 = call i32 @pfs_create_file(%struct.pfs_node* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* @linsysfs_ifnet_addrlen, i32* null, i32* null, i32* null, i32 %34)
  %36 = load %struct.pfs_node*, %struct.pfs_node** %4, align 8
  %37 = load i32, i32* @PFS_RD, align 4
  %38 = call i32 @pfs_create_file(%struct.pfs_node* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* @linsysfs_ifnet_flags, i32* null, i32* null, i32* null, i32 %37)
  %39 = load %struct.pfs_node*, %struct.pfs_node** %4, align 8
  %40 = load i32, i32* @PFS_RD, align 4
  %41 = call i32 @pfs_create_file(%struct.pfs_node* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* @linsysfs_ifnet_ifindex, i32* null, i32* null, i32* null, i32 %40)
  %42 = load %struct.pfs_node*, %struct.pfs_node** %4, align 8
  %43 = load i32, i32* @PFS_RD, align 4
  %44 = call i32 @pfs_create_file(%struct.pfs_node* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* @linsysfs_ifnet_mtu, i32* null, i32* null, i32* null, i32 %43)
  %45 = load %struct.pfs_node*, %struct.pfs_node** %4, align 8
  %46 = load i32, i32* @PFS_RD, align 4
  %47 = call i32 @pfs_create_file(%struct.pfs_node* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* @linsysfs_ifnet_tx_queue_len, i32* null, i32* null, i32* null, i32 %46)
  %48 = load %struct.pfs_node*, %struct.pfs_node** %4, align 8
  %49 = load i32, i32* @PFS_RD, align 4
  %50 = call i32 @pfs_create_file(%struct.pfs_node* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* @linsysfs_ifnet_type, i32* null, i32* null, i32* null, i32 %49)
  ret void
}

declare dso_local %struct.pfs_node* @pfs_create_dir(%struct.pfs_node*, i8*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @pfs_create_file(%struct.pfs_node*, i8*, i32*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
