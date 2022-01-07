; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_get_fop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_get_fop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_cdev = type { i32, %struct.file_operations* }
%struct.file_operations = type { i32 }
%struct.linux_file = type { %struct.file_operations*, %struct.linux_cdev* }

@LDEV_SI_DTR = common dso_local global i32 0, align 4
@dummy_ldev = common dso_local global %struct.linux_cdev zeroinitializer, align 8
@LDEV_SI_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linux_file*, %struct.file_operations**, %struct.linux_cdev**)* @linux_get_fop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_get_fop(%struct.linux_file* %0, %struct.file_operations** %1, %struct.linux_cdev** %2) #0 {
  %4 = alloca %struct.linux_file*, align 8
  %5 = alloca %struct.file_operations**, align 8
  %6 = alloca %struct.linux_cdev**, align 8
  %7 = alloca %struct.linux_cdev*, align 8
  %8 = alloca i32, align 4
  store %struct.linux_file* %0, %struct.linux_file** %4, align 8
  store %struct.file_operations** %1, %struct.file_operations*** %5, align 8
  store %struct.linux_cdev** %2, %struct.linux_cdev*** %6, align 8
  %9 = load %struct.linux_file*, %struct.linux_file** %4, align 8
  %10 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %9, i32 0, i32 1
  %11 = load %struct.linux_cdev*, %struct.linux_cdev** %10, align 8
  store %struct.linux_cdev* %11, %struct.linux_cdev** %7, align 8
  %12 = load %struct.linux_file*, %struct.linux_file** %4, align 8
  %13 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %12, i32 0, i32 0
  %14 = load %struct.file_operations*, %struct.file_operations** %13, align 8
  %15 = load %struct.file_operations**, %struct.file_operations*** %5, align 8
  store %struct.file_operations* %14, %struct.file_operations** %15, align 8
  %16 = load %struct.linux_cdev*, %struct.linux_cdev** %7, align 8
  %17 = icmp ne %struct.linux_cdev* %16, null
  br i1 %17, label %18, label %56

18:                                               ; preds = %3
  %19 = load %struct.linux_cdev*, %struct.linux_cdev** %7, align 8
  %20 = getelementptr inbounds %struct.linux_cdev, %struct.linux_cdev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %54, %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @LDEV_SI_DTR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  store %struct.linux_cdev* @dummy_ldev, %struct.linux_cdev** %7, align 8
  %28 = load %struct.linux_cdev*, %struct.linux_cdev** %7, align 8
  %29 = getelementptr inbounds %struct.linux_cdev, %struct.linux_cdev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  %31 = load %struct.linux_cdev*, %struct.linux_cdev** %7, align 8
  %32 = getelementptr inbounds %struct.linux_cdev, %struct.linux_cdev* %31, i32 0, i32 1
  %33 = load %struct.file_operations*, %struct.file_operations** %32, align 8
  %34 = load %struct.file_operations**, %struct.file_operations*** %5, align 8
  store %struct.file_operations* %33, %struct.file_operations** %34, align 8
  %35 = load %struct.linux_cdev*, %struct.linux_cdev** %7, align 8
  %36 = getelementptr inbounds %struct.linux_cdev, %struct.linux_cdev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @LDEV_SI_DTR, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @MPASS(i32 %41)
  br label %54

43:                                               ; preds = %22
  %44 = load %struct.linux_cdev*, %struct.linux_cdev** %7, align 8
  %45 = getelementptr inbounds %struct.linux_cdev, %struct.linux_cdev* %44, i32 0, i32 0
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @LDEV_SI_REF, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i64 @atomic_fcmpset_int(i32* %45, i32* %8, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %55

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %27
  br label %22

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55, %3
  %57 = load %struct.linux_cdev*, %struct.linux_cdev** %7, align 8
  %58 = load %struct.linux_cdev**, %struct.linux_cdev*** %6, align 8
  store %struct.linux_cdev* %57, %struct.linux_cdev** %58, align 8
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @atomic_fcmpset_int(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
