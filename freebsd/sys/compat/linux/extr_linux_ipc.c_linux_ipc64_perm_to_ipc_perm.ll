; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_ipc64_perm_to_ipc_perm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_ipc64_perm_to_ipc_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l_ipc64_perm = type { i64, i64, i64, i64, i64, i32, i32 }
%struct.l_ipc_perm = type { i64, i64, i64, i64, i64, i32, i32 }

@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l_ipc64_perm*, %struct.l_ipc_perm*)* @linux_ipc64_perm_to_ipc_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_ipc64_perm_to_ipc_perm(%struct.l_ipc64_perm* %0, %struct.l_ipc_perm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l_ipc64_perm*, align 8
  %5 = alloca %struct.l_ipc_perm*, align 8
  store %struct.l_ipc64_perm* %0, %struct.l_ipc64_perm** %4, align 8
  store %struct.l_ipc_perm* %1, %struct.l_ipc_perm** %5, align 8
  %6 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %4, align 8
  %7 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.l_ipc_perm*, %struct.l_ipc_perm** %5, align 8
  %10 = getelementptr inbounds %struct.l_ipc_perm, %struct.l_ipc_perm* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 4
  %11 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %4, align 8
  %12 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.l_ipc_perm*, %struct.l_ipc_perm** %5, align 8
  %15 = getelementptr inbounds %struct.l_ipc_perm, %struct.l_ipc_perm* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %4, align 8
  %17 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.l_ipc_perm*, %struct.l_ipc_perm** %5, align 8
  %20 = getelementptr inbounds %struct.l_ipc_perm, %struct.l_ipc_perm* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %4, align 8
  %22 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.l_ipc_perm*, %struct.l_ipc_perm** %5, align 8
  %25 = getelementptr inbounds %struct.l_ipc_perm, %struct.l_ipc_perm* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %4, align 8
  %27 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.l_ipc_perm*, %struct.l_ipc_perm** %5, align 8
  %30 = getelementptr inbounds %struct.l_ipc_perm, %struct.l_ipc_perm* %29, i32 0, i32 3
  store i64 %28, i64* %30, align 8
  %31 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %4, align 8
  %32 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.l_ipc_perm*, %struct.l_ipc_perm** %5, align 8
  %35 = getelementptr inbounds %struct.l_ipc_perm, %struct.l_ipc_perm* %34, i32 0, i32 4
  store i64 %33, i64* %35, align 8
  %36 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %4, align 8
  %37 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.l_ipc_perm*, %struct.l_ipc_perm** %5, align 8
  %40 = getelementptr inbounds %struct.l_ipc_perm, %struct.l_ipc_perm* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.l_ipc_perm*, %struct.l_ipc_perm** %5, align 8
  %42 = getelementptr inbounds %struct.l_ipc_perm, %struct.l_ipc_perm* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %4, align 8
  %45 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %80, label %48

48:                                               ; preds = %2
  %49 = load %struct.l_ipc_perm*, %struct.l_ipc_perm** %5, align 8
  %50 = getelementptr inbounds %struct.l_ipc_perm, %struct.l_ipc_perm* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %4, align 8
  %53 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %80, label %56

56:                                               ; preds = %48
  %57 = load %struct.l_ipc_perm*, %struct.l_ipc_perm** %5, align 8
  %58 = getelementptr inbounds %struct.l_ipc_perm, %struct.l_ipc_perm* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %4, align 8
  %61 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %80, label %64

64:                                               ; preds = %56
  %65 = load %struct.l_ipc_perm*, %struct.l_ipc_perm** %5, align 8
  %66 = getelementptr inbounds %struct.l_ipc_perm, %struct.l_ipc_perm* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %4, align 8
  %69 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %64
  %73 = load %struct.l_ipc_perm*, %struct.l_ipc_perm** %5, align 8
  %74 = getelementptr inbounds %struct.l_ipc_perm, %struct.l_ipc_perm* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %4, align 8
  %77 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %72, %64, %56, %48, %2
  %81 = load i32, i32* @EOVERFLOW, align 4
  store i32 %81, i32* %3, align 4
  br label %83

82:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %80
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
