; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_semid_pushdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_semid_pushdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l_semid64_ds = type { i64, i64, i64, i32 }
%struct.l_semid_ds = type { i64, i64, i64, i32 }

@LINUX_IPC_64 = common dso_local global i64 0, align 8
@SV_LP64 = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.l_semid64_ds*, i32)* @linux_semid_pushdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_semid_pushdown(i64 %0, %struct.l_semid64_ds* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.l_semid64_ds*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.l_semid_ds, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.l_semid64_ds* %1, %struct.l_semid64_ds** %6, align 8
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
  %18 = load %struct.l_semid64_ds*, %struct.l_semid64_ds** %6, align 8
  %19 = bitcast %struct.l_semid64_ds* %18 to %struct.l_semid_ds*
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @copyout(%struct.l_semid_ds* %19, i32 %20, i32 32)
  store i32 %21, i32* %4, align 4
  br label %70

22:                                               ; preds = %13
  %23 = call i32 @bzero(%struct.l_semid_ds* %8, i32 32)
  %24 = load %struct.l_semid64_ds*, %struct.l_semid64_ds** %6, align 8
  %25 = getelementptr inbounds %struct.l_semid64_ds, %struct.l_semid64_ds* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.l_semid_ds, %struct.l_semid_ds* %8, i32 0, i32 3
  %27 = call i32 @linux_ipc64_perm_to_ipc_perm(i32* %25, i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %70

32:                                               ; preds = %22
  %33 = load %struct.l_semid64_ds*, %struct.l_semid64_ds** %6, align 8
  %34 = getelementptr inbounds %struct.l_semid64_ds, %struct.l_semid64_ds* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.l_semid_ds, %struct.l_semid_ds* %8, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = load %struct.l_semid64_ds*, %struct.l_semid64_ds** %6, align 8
  %38 = getelementptr inbounds %struct.l_semid64_ds, %struct.l_semid64_ds* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.l_semid_ds, %struct.l_semid_ds* %8, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  %41 = load %struct.l_semid64_ds*, %struct.l_semid64_ds** %6, align 8
  %42 = getelementptr inbounds %struct.l_semid64_ds, %struct.l_semid64_ds* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.l_semid_ds, %struct.l_semid_ds* %8, i32 0, i32 2
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.l_semid_ds, %struct.l_semid_ds* %8, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.l_semid64_ds*, %struct.l_semid64_ds** %6, align 8
  %48 = getelementptr inbounds %struct.l_semid64_ds, %struct.l_semid64_ds* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %65, label %51

51:                                               ; preds = %32
  %52 = getelementptr inbounds %struct.l_semid_ds, %struct.l_semid_ds* %8, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.l_semid64_ds*, %struct.l_semid64_ds** %6, align 8
  %55 = getelementptr inbounds %struct.l_semid64_ds, %struct.l_semid64_ds* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.l_semid_ds, %struct.l_semid_ds* %8, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.l_semid64_ds*, %struct.l_semid64_ds** %6, align 8
  %62 = getelementptr inbounds %struct.l_semid64_ds, %struct.l_semid64_ds* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58, %51, %32
  %66 = load i32, i32* @EOVERFLOW, align 4
  store i32 %66, i32* %4, align 4
  br label %70

67:                                               ; preds = %58
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @copyout(%struct.l_semid_ds* %8, i32 %68, i32 32)
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %65, %30, %17
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @SV_CURPROC_FLAG(i32) #1

declare dso_local i32 @copyout(%struct.l_semid_ds*, i32, i32) #1

declare dso_local i32 @bzero(%struct.l_semid_ds*, i32) #1

declare dso_local i32 @linux_ipc64_perm_to_ipc_perm(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
