; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_space_written.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_space_written.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @zfs_ioc_space_written to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_space_written(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FTAG, align 4
  %12 = call i32 @dsl_pool_hold(i32 %10, i32 %11, i32** %5)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %68

17:                                               ; preds = %1
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FTAG, align 4
  %23 = call i32 @dsl_dataset_hold(i32* %18, i32 %21, i32 %22, i32** %6)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @FTAG, align 4
  %29 = call i32 @dsl_pool_rele(i32* %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %68

31:                                               ; preds = %17
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FTAG, align 4
  %37 = call i32 @dsl_dataset_hold(i32* %32, i32 %35, i32 %36, i32** %7)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @FTAG, align 4
  %43 = call i32 @dsl_dataset_rele(i32* %41, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @FTAG, align 4
  %46 = call i32 @dsl_pool_rele(i32* %44, i32 %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %68

48:                                               ; preds = %31
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @dsl_dataset_space_written(i32* %49, i32* %50, i32* %52, i32* %54, i32* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @FTAG, align 4
  %60 = call i32 @dsl_dataset_rele(i32* %58, i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* @FTAG, align 4
  %63 = call i32 @dsl_dataset_rele(i32* %61, i32 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* @FTAG, align 4
  %66 = call i32 @dsl_pool_rele(i32* %64, i32 %65)
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %48, %40, %26, %15
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @dsl_pool_hold(i32, i32, i32**) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i32, i32, i32**) #1

declare dso_local i32 @dsl_pool_rele(i32*, i32) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @dsl_dataset_space_written(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
