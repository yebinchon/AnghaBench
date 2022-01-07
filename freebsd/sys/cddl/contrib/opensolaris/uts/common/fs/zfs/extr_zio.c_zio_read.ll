; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZIO_TYPE_READ = common dso_local global i32 0, align 4
@ZIO_STAGE_OPEN = common dso_local global i32 0, align 4
@ZIO_FLAG_DDT_CHILD = common dso_local global i32 0, align 4
@ZIO_DDT_CHILD_READ_PIPELINE = common dso_local global i32 0, align 4
@ZIO_READ_PIPELINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zio_read(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5, i8* %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32* %9, i32** %20, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i32 @zfs_blkptr_verify(i32* %22, i32* %23)
  %25 = load i32*, i32** %11, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = call i32 @BP_PHYSICAL_BIRTH(i32* %27)
  %29 = load i32*, i32** %13, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32*, i32** %16, align 8
  %34 = load i8*, i8** %17, align 8
  %35 = load i32, i32* @ZIO_TYPE_READ, align 4
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* %19, align 4
  %38 = load i32*, i32** %20, align 8
  %39 = load i32, i32* @ZIO_STAGE_OPEN, align 4
  %40 = load i32, i32* %19, align 4
  %41 = load i32, i32* @ZIO_FLAG_DDT_CHILD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %10
  %45 = load i32, i32* @ZIO_DDT_CHILD_READ_PIPELINE, align 4
  br label %48

46:                                               ; preds = %10
  %47 = load i32, i32* @ZIO_READ_PIPELINE, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = call i32* @zio_create(i32* %25, i32* %26, i32 %28, i32* %29, i32* %30, i32 %31, i32 %32, i32* %33, i8* %34, i32 %35, i32 %36, i32 %37, i32* null, i32 0, i32* %38, i32 %39, i32 %49)
  store i32* %50, i32** %21, align 8
  %51 = load i32*, i32** %21, align 8
  ret i32* %51
}

declare dso_local i32 @zfs_blkptr_verify(i32*, i32*) #1

declare dso_local i32* @zio_create(i32*, i32*, i32, i32*, i32*, i32, i32, i32*, i8*, i32, i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @BP_PHYSICAL_BIRTH(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
