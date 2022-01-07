; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_msqid_pullup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_msqid_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l_msqid64_ds = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.l_msqid_ds = type { i64, i64, %struct.TYPE_2__ }

@LINUX_IPC_64 = common dso_local global i64 0, align 8
@SV_LP64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.l_msqid64_ds*, i32)* @linux_msqid_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_msqid_pullup(i64 %0, %struct.l_msqid64_ds* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.l_msqid64_ds*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.l_msqid_ds, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.l_msqid64_ds* %1, %struct.l_msqid64_ds** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @LINUX_IPC_64, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @SV_LP64, align 4
  %15 = call i64 @SV_CURPROC_FLAG(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13, %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %20 = bitcast %struct.l_msqid64_ds* %19 to %struct.l_msqid_ds*
  %21 = call i32 @copyin(i32 %18, %struct.l_msqid_ds* %20, i32 32)
  store i32 %21, i32* %4, align 4
  br label %65

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @copyin(i32 %23, %struct.l_msqid_ds* %8, i32 32)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %65

29:                                               ; preds = %22
  %30 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %31 = bitcast %struct.l_msqid64_ds* %30 to %struct.l_msqid_ds*
  %32 = call i32 @bzero(%struct.l_msqid_ds* %31, i32 32)
  %33 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %37 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %43 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %49 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %29
  %55 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %58 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %64

59:                                               ; preds = %29
  %60 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %63 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %59, %54
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %27, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @SV_CURPROC_FLAG(i32) #1

declare dso_local i32 @copyin(i32, %struct.l_msqid_ds*, i32) #1

declare dso_local i32 @bzero(%struct.l_msqid_ds*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
