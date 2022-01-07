; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_sfs_alloc_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_sfs_alloc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfs_node = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"sfs node name is too long\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"sfs node size is too small\00", align 1
@M_SFSNODES = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sfs_node* (i64, i8*, i8*, i8*)* @sfs_alloc_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sfs_node* @sfs_alloc_node(i64 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sfs_node*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 4
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* %5, align 8
  %17 = icmp uge i64 %16, 24
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @M_SFSNODES, align 4
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.sfs_node* @malloc(i64 %20, i32 %21, i32 %24)
  store %struct.sfs_node* %25, %struct.sfs_node** %9, align 8
  %26 = load %struct.sfs_node*, %struct.sfs_node** %9, align 8
  %27 = getelementptr inbounds %struct.sfs_node, %struct.sfs_node* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strlcpy(i32 %28, i8* %29, i32 4)
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.sfs_node*, %struct.sfs_node** %9, align 8
  %33 = getelementptr inbounds %struct.sfs_node, %struct.sfs_node* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.sfs_node*, %struct.sfs_node** %9, align 8
  %36 = getelementptr inbounds %struct.sfs_node, %struct.sfs_node* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.sfs_node*, %struct.sfs_node** %9, align 8
  ret %struct.sfs_node* %37
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.sfs_node* @malloc(i64, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
