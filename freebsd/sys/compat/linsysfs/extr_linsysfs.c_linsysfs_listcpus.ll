; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linsysfs/extr_linsysfs.c_linsysfs_listcpus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linsysfs/extr_linsysfs.c_linsysfs_listcpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfs_node = type { i32 }

@mp_maxcpus = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"cpu%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@linsysfs_cpuxonline = common dso_local global i32 0, align 4
@PFS_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfs_node*)* @linsysfs_listcpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linsysfs_listcpus(%struct.pfs_node* %0) #0 {
  %2 = alloca %struct.pfs_node*, align 8
  %3 = alloca %struct.pfs_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pfs_node* %0, %struct.pfs_node** %2, align 8
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* @mp_maxcpus, align 4
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %12, %1
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 10
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = sdiv i32 %13, 10
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  br label %9

17:                                               ; preds = %9
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @M_TEMP, align 4
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = call i8* @malloc(i32 %22, i32 %23, i32 %24)
  store i8* %25, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %40, %17
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @mp_ncpus, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.pfs_node*, %struct.pfs_node** %2, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call %struct.pfs_node* @pfs_create_dir(%struct.pfs_node* %34, i8* %35, i32* null, i32* null, i32* null, i32 0)
  store %struct.pfs_node* %36, %struct.pfs_node** %3, align 8
  %37 = load %struct.pfs_node*, %struct.pfs_node** %3, align 8
  %38 = load i32, i32* @PFS_RD, align 4
  %39 = call i32 @pfs_create_file(%struct.pfs_node* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* @linsysfs_cpuxonline, i32* null, i32* null, i32* null, i32 %38)
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %26

43:                                               ; preds = %26
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* @M_TEMP, align 4
  %46 = call i32 @free(i8* %44, i32 %45)
  ret void
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.pfs_node* @pfs_create_dir(%struct.pfs_node*, i8*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @pfs_create_file(%struct.pfs_node*, i8*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
