; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_shminfo_pushdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_shminfo_pushdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l_shminfo64 = type { i32, i32, i32, i32, i32 }
%struct.l_shminfo = type { i32, i32, i32, i32, i32 }

@LINUX_IPC_64 = common dso_local global i64 0, align 8
@SV_LP64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.l_shminfo64*, i32)* @linux_shminfo_pushdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_shminfo_pushdown(i64 %0, %struct.l_shminfo64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.l_shminfo64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.l_shminfo, align 4
  store i64 %0, i64* %5, align 8
  store %struct.l_shminfo64* %1, %struct.l_shminfo64** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @LINUX_IPC_64, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @SV_LP64, align 4
  %14 = call i64 @SV_CURPROC_FLAG(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12, %3
  %17 = load %struct.l_shminfo64*, %struct.l_shminfo64** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @copyout(%struct.l_shminfo64* %17, i32 %18, i32 20)
  store i32 %19, i32* %4, align 4
  br label %46

20:                                               ; preds = %12
  %21 = bitcast %struct.l_shminfo* %8 to %struct.l_shminfo64*
  %22 = call i32 @bzero(%struct.l_shminfo64* %21, i32 20)
  %23 = load %struct.l_shminfo64*, %struct.l_shminfo64** %6, align 8
  %24 = getelementptr inbounds %struct.l_shminfo64, %struct.l_shminfo64* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.l_shminfo, %struct.l_shminfo* %8, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  %27 = load %struct.l_shminfo64*, %struct.l_shminfo64** %6, align 8
  %28 = getelementptr inbounds %struct.l_shminfo64, %struct.l_shminfo64* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.l_shminfo, %struct.l_shminfo* %8, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load %struct.l_shminfo64*, %struct.l_shminfo64** %6, align 8
  %32 = getelementptr inbounds %struct.l_shminfo64, %struct.l_shminfo64* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.l_shminfo, %struct.l_shminfo* %8, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load %struct.l_shminfo64*, %struct.l_shminfo64** %6, align 8
  %36 = getelementptr inbounds %struct.l_shminfo64, %struct.l_shminfo64* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.l_shminfo, %struct.l_shminfo* %8, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.l_shminfo64*, %struct.l_shminfo64** %6, align 8
  %40 = getelementptr inbounds %struct.l_shminfo64, %struct.l_shminfo64* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.l_shminfo, %struct.l_shminfo* %8, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = bitcast %struct.l_shminfo* %8 to %struct.l_shminfo64*
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @copyout(%struct.l_shminfo64* %43, i32 %44, i32 20)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %20, %16
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @SV_CURPROC_FLAG(i32) #1

declare dso_local i32 @copyout(%struct.l_shminfo64*, i32, i32) #1

declare dso_local i32 @bzero(%struct.l_shminfo64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
