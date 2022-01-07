; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_shmid_pushdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_shmid_pushdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l_shmid64_ds = type { i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.l_shmid_ds = type { i64, i64, i64, i64, i64, i64, i64, i32 }

@LINUX_IPC_64 = common dso_local global i64 0, align 8
@SV_LP64 = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.l_shmid64_ds*, i32)* @linux_shmid_pushdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_shmid_pushdown(i64 %0, %struct.l_shmid64_ds* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.l_shmid64_ds*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.l_shmid_ds, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.l_shmid64_ds* %1, %struct.l_shmid64_ds** %6, align 8
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
  %18 = load %struct.l_shmid64_ds*, %struct.l_shmid64_ds** %6, align 8
  %19 = bitcast %struct.l_shmid64_ds* %18 to %struct.l_shmid_ds*
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @copyout(%struct.l_shmid_ds* %19, i32 %20, i32 64)
  store i32 %21, i32* %4, align 4
  br label %114

22:                                               ; preds = %13
  %23 = call i32 @bzero(%struct.l_shmid_ds* %8, i32 64)
  %24 = load %struct.l_shmid64_ds*, %struct.l_shmid64_ds** %6, align 8
  %25 = getelementptr inbounds %struct.l_shmid64_ds, %struct.l_shmid64_ds* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.l_shmid_ds, %struct.l_shmid_ds* %8, i32 0, i32 7
  %27 = call i32 @linux_ipc64_perm_to_ipc_perm(i32* %25, i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %114

32:                                               ; preds = %22
  %33 = load %struct.l_shmid64_ds*, %struct.l_shmid64_ds** %6, align 8
  %34 = getelementptr inbounds %struct.l_shmid64_ds, %struct.l_shmid64_ds* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.l_shmid_ds, %struct.l_shmid_ds* %8, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = load %struct.l_shmid64_ds*, %struct.l_shmid64_ds** %6, align 8
  %38 = getelementptr inbounds %struct.l_shmid64_ds, %struct.l_shmid64_ds* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.l_shmid_ds, %struct.l_shmid_ds* %8, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  %41 = load %struct.l_shmid64_ds*, %struct.l_shmid64_ds** %6, align 8
  %42 = getelementptr inbounds %struct.l_shmid64_ds, %struct.l_shmid64_ds* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.l_shmid_ds, %struct.l_shmid_ds* %8, i32 0, i32 2
  store i64 %43, i64* %44, align 8
  %45 = load %struct.l_shmid64_ds*, %struct.l_shmid64_ds** %6, align 8
  %46 = getelementptr inbounds %struct.l_shmid64_ds, %struct.l_shmid64_ds* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.l_shmid_ds, %struct.l_shmid_ds* %8, i32 0, i32 3
  store i64 %47, i64* %48, align 8
  %49 = load %struct.l_shmid64_ds*, %struct.l_shmid64_ds** %6, align 8
  %50 = getelementptr inbounds %struct.l_shmid64_ds, %struct.l_shmid64_ds* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.l_shmid_ds, %struct.l_shmid_ds* %8, i32 0, i32 4
  store i64 %51, i64* %52, align 8
  %53 = load %struct.l_shmid64_ds*, %struct.l_shmid64_ds** %6, align 8
  %54 = getelementptr inbounds %struct.l_shmid64_ds, %struct.l_shmid64_ds* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.l_shmid_ds, %struct.l_shmid_ds* %8, i32 0, i32 5
  store i64 %55, i64* %56, align 8
  %57 = load %struct.l_shmid64_ds*, %struct.l_shmid64_ds** %6, align 8
  %58 = getelementptr inbounds %struct.l_shmid64_ds, %struct.l_shmid64_ds* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.l_shmid_ds, %struct.l_shmid_ds* %8, i32 0, i32 6
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.l_shmid_ds, %struct.l_shmid_ds* %8, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.l_shmid64_ds*, %struct.l_shmid64_ds** %6, align 8
  %64 = getelementptr inbounds %struct.l_shmid64_ds, %struct.l_shmid64_ds* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %109, label %67

67:                                               ; preds = %32
  %68 = getelementptr inbounds %struct.l_shmid_ds, %struct.l_shmid_ds* %8, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.l_shmid64_ds*, %struct.l_shmid64_ds** %6, align 8
  %71 = getelementptr inbounds %struct.l_shmid64_ds, %struct.l_shmid64_ds* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %109, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.l_shmid_ds, %struct.l_shmid_ds* %8, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.l_shmid64_ds*, %struct.l_shmid64_ds** %6, align 8
  %78 = getelementptr inbounds %struct.l_shmid64_ds, %struct.l_shmid64_ds* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %109, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.l_shmid_ds, %struct.l_shmid_ds* %8, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.l_shmid64_ds*, %struct.l_shmid64_ds** %6, align 8
  %85 = getelementptr inbounds %struct.l_shmid64_ds, %struct.l_shmid64_ds* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %109, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.l_shmid_ds, %struct.l_shmid_ds* %8, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.l_shmid64_ds*, %struct.l_shmid64_ds** %6, align 8
  %92 = getelementptr inbounds %struct.l_shmid64_ds, %struct.l_shmid64_ds* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %109, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.l_shmid_ds, %struct.l_shmid_ds* %8, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.l_shmid64_ds*, %struct.l_shmid64_ds** %6, align 8
  %99 = getelementptr inbounds %struct.l_shmid64_ds, %struct.l_shmid64_ds* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %109, label %102

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.l_shmid_ds, %struct.l_shmid_ds* %8, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.l_shmid64_ds*, %struct.l_shmid64_ds** %6, align 8
  %106 = getelementptr inbounds %struct.l_shmid64_ds, %struct.l_shmid64_ds* %105, i32 0, i32 6
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %102, %95, %88, %81, %74, %67, %32
  %110 = load i32, i32* @EOVERFLOW, align 4
  store i32 %110, i32* %4, align 4
  br label %114

111:                                              ; preds = %102
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @copyout(%struct.l_shmid_ds* %8, i32 %112, i32 64)
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %111, %109, %30, %17
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i64 @SV_CURPROC_FLAG(i32) #1

declare dso_local i32 @copyout(%struct.l_shmid_ds*, i32, i32) #1

declare dso_local i32 @bzero(%struct.l_shmid_ds*, i32) #1

declare dso_local i32 @linux_ipc64_perm_to_ipc_perm(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
