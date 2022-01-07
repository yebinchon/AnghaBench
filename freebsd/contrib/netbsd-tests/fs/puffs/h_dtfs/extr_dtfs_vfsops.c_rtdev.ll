; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vfsops.c_rtdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vfsops.c_rtdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_usermount = type { i32 }
%struct.puffs_node = type { %struct.vattr }
%struct.vattr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%*s %d %d\00", align 1
@VBLK = common dso_local global i32 0, align 4
@S_IFBLK = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.puffs_usermount*, i8*, i32)* @rtdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtdev(%struct.puffs_usermount* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.puffs_usermount*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.puffs_node*, align 8
  %9 = alloca %struct.vattr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.puffs_usermount* %0, %struct.puffs_usermount** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.puffs_usermount*, %struct.puffs_usermount** %5, align 8
  %13 = call %struct.puffs_node* @puffs_getroot(%struct.puffs_usermount* %12)
  store %struct.puffs_node* %13, %struct.puffs_node** %8, align 8
  %14 = load %struct.puffs_node*, %struct.puffs_node** %8, align 8
  %15 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %14, i32 0, i32 0
  store %struct.vattr* %15, %struct.vattr** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %11)
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %53

20:                                               ; preds = %3
  %21 = load %struct.vattr*, %struct.vattr** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dtfs_baseattrs(%struct.vattr* %21, i32 %22, i32 2)
  %24 = load %struct.vattr*, %struct.vattr** %9, align 8
  %25 = getelementptr inbounds %struct.vattr, %struct.vattr* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @makedev(i32 %26, i32 %27)
  %29 = load %struct.vattr*, %struct.vattr** %9, align 8
  %30 = getelementptr inbounds %struct.vattr, %struct.vattr* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @VBLK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %20
  %35 = load i32, i32* @S_IFBLK, align 4
  %36 = load %struct.vattr*, %struct.vattr** %9, align 8
  %37 = getelementptr inbounds %struct.vattr, %struct.vattr* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %46

40:                                               ; preds = %20
  %41 = load i32, i32* @S_IFCHR, align 4
  %42 = load %struct.vattr*, %struct.vattr** %9, align 8
  %43 = getelementptr inbounds %struct.vattr, %struct.vattr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %34
  %47 = load %struct.puffs_usermount*, %struct.puffs_usermount** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.vattr*, %struct.vattr** %9, align 8
  %50 = getelementptr inbounds %struct.vattr, %struct.vattr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @puffs_setrootinfo(%struct.puffs_usermount* %47, i32 %48, i32 0, i32 %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %19
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.puffs_node* @puffs_getroot(%struct.puffs_usermount*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @dtfs_baseattrs(%struct.vattr*, i32, i32) #1

declare dso_local i32 @makedev(i32, i32) #1

declare dso_local i32 @puffs_setrootinfo(%struct.puffs_usermount*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
