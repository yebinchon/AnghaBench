; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/kld/cdev/module/extr_cdevmod.c_cdev_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/kld/cdev/module/extr_cdevmod.c_cdev_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.make_dev_args = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [44 x i8] c"\0ASample Loaded kld character device driver\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Copyright (c) 1998\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Rajesh Vaidheeswarran\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"All rights reserved\0A\00", align 1
@my_devsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@sdev = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"cdev\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Unloaded kld character device driver\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @cdev_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdev_load(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.make_dev_args, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %27 [
    i32 129, label %10
    i32 128, label %23
  ]

10:                                               ; preds = %3
  %11 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 @make_dev_args_init(%struct.make_dev_args* %8)
  %16 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 3
  store i32* @my_devsw, i32** %16, align 8
  %17 = load i32, i32* @UID_ROOT, align 4
  %18 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @GID_WHEEL, align 4
  %20 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 0
  store i32 384, i32* %21, align 8
  %22 = call i32 @make_dev_s(%struct.make_dev_args* %8, i32* @sdev, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 %22, i32* %7, align 4
  br label %29

23:                                               ; preds = %3
  %24 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %25 = load i32, i32* @sdev, align 4
  %26 = call i32 @destroy_dev(i32 %25)
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %27, %23, %10
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @make_dev_args_init(%struct.make_dev_args*) #1

declare dso_local i32 @make_dev_s(%struct.make_dev_args*, i32*, i8*) #1

declare dso_local i32 @destroy_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
