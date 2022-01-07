; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_pkgfs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_pkgfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_ops = type { i32 }
%struct.package = type { %struct.package* }

@pkgfs_fsops = common dso_local global %struct.fs_ops zeroinitializer, align 4
@exclusive_file_system = common dso_local global %struct.fs_ops* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EDOOFUS = common dso_local global i32 0, align 4
@package = common dso_local global %struct.package* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkgfs_init(i8* %0, %struct.fs_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fs_ops*, align 8
  %6 = alloca %struct.package*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.fs_ops* %1, %struct.fs_ops** %5, align 8
  store %struct.package* null, %struct.package** %6, align 8
  %9 = load %struct.fs_ops*, %struct.fs_ops** %5, align 8
  %10 = icmp ne %struct.fs_ops* %9, @pkgfs_fsops
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (...) @pkgfs_cleanup()
  br label %13

13:                                               ; preds = %11, %2
  %14 = load %struct.fs_ops*, %struct.fs_ops** %5, align 8
  store %struct.fs_ops* %14, %struct.fs_ops** @exclusive_file_system, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @O_RDONLY, align 4
  %17 = call i32 @open(i8* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  store %struct.fs_ops* null, %struct.fs_ops** @exclusive_file_system, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @errno, align 4
  store i32 %21, i32* %3, align 4
  br label %41

22:                                               ; preds = %13
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @new_package(i32 %23, %struct.package** %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @close(i32 %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %41

31:                                               ; preds = %22
  %32 = load %struct.package*, %struct.package** %6, align 8
  %33 = icmp eq %struct.package* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @EDOOFUS, align 4
  store i32 %35, i32* %3, align 4
  br label %41

36:                                               ; preds = %31
  %37 = load %struct.package*, %struct.package** @package, align 8
  %38 = load %struct.package*, %struct.package** %6, align 8
  %39 = getelementptr inbounds %struct.package, %struct.package* %38, i32 0, i32 0
  store %struct.package* %37, %struct.package** %39, align 8
  %40 = load %struct.package*, %struct.package** %6, align 8
  store %struct.package* %40, %struct.package** @package, align 8
  store %struct.fs_ops* @pkgfs_fsops, %struct.fs_ops** @exclusive_file_system, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %34, %27, %20
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @pkgfs_cleanup(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @new_package(i32, %struct.package**) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
