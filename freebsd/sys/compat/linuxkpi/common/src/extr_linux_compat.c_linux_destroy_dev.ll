; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_destroy_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_destroy_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_cdev = type { i32, i32* }

@LDEV_SI_DTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ldevdtr\00", align 1
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_destroy_dev(%struct.linux_cdev* %0) #0 {
  %2 = alloca %struct.linux_cdev*, align 8
  store %struct.linux_cdev* %0, %struct.linux_cdev** %2, align 8
  %3 = load %struct.linux_cdev*, %struct.linux_cdev** %2, align 8
  %4 = getelementptr inbounds %struct.linux_cdev, %struct.linux_cdev* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %40

8:                                                ; preds = %1
  %9 = load %struct.linux_cdev*, %struct.linux_cdev** %2, align 8
  %10 = getelementptr inbounds %struct.linux_cdev, %struct.linux_cdev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @LDEV_SI_DTR, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @MPASS(i32 %15)
  %17 = load %struct.linux_cdev*, %struct.linux_cdev** %2, align 8
  %18 = getelementptr inbounds %struct.linux_cdev, %struct.linux_cdev* %17, i32 0, i32 0
  %19 = load i32, i32* @LDEV_SI_DTR, align 4
  %20 = call i32 @atomic_set_int(i32* %18, i32 %19)
  br label %21

21:                                               ; preds = %29, %8
  %22 = load %struct.linux_cdev*, %struct.linux_cdev** %2, align 8
  %23 = getelementptr inbounds %struct.linux_cdev, %struct.linux_cdev* %22, i32 0, i32 0
  %24 = call i32 @atomic_load_int(i32* %23)
  %25 = load i32, i32* @LDEV_SI_DTR, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @hz, align 4
  %31 = sdiv i32 %30, 4
  %32 = call i32 @pause(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %21

33:                                               ; preds = %21
  %34 = load %struct.linux_cdev*, %struct.linux_cdev** %2, align 8
  %35 = getelementptr inbounds %struct.linux_cdev, %struct.linux_cdev* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @destroy_dev(i32* %36)
  %38 = load %struct.linux_cdev*, %struct.linux_cdev** %2, align 8
  %39 = getelementptr inbounds %struct.linux_cdev, %struct.linux_cdev* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %33, %7
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @atomic_set_int(i32*, i32) #1

declare dso_local i32 @atomic_load_int(i32*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @destroy_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
