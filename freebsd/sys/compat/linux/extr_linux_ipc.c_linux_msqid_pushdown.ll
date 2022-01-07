; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_msqid_pushdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_msqid_pushdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l_msqid64_ds = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.l_msqid_ds = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }

@LINUX_IPC_64 = common dso_local global i64 0, align 8
@SV_LP64 = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.l_msqid64_ds*, i32)* @linux_msqid_pushdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_msqid_pushdown(i64 %0, %struct.l_msqid64_ds* %1, i32 %2) #0 {
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
  %18 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %19 = bitcast %struct.l_msqid64_ds* %18 to %struct.l_msqid_ds*
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @copyout(%struct.l_msqid_ds* %19, i32 %20, i32 80)
  store i32 %21, i32* %4, align 4
  br label %128

22:                                               ; preds = %13
  %23 = call i32 @bzero(%struct.l_msqid_ds* %8, i32 80)
  %24 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %25 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %24, i32 0, i32 10
  %26 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 10
  %27 = call i32 @linux_ipc64_perm_to_ipc_perm(i32* %25, i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %128

32:                                               ; preds = %22
  %33 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %34 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %38 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  %41 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %42 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 2
  store i64 %43, i64* %44, align 8
  %45 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %46 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @USHRT_MAX, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %32
  %51 = load i64, i64* @USHRT_MAX, align 8
  %52 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 3
  store i64 %51, i64* %52, align 8
  br label %58

53:                                               ; preds = %32
  %54 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %55 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 3
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %53, %50
  %59 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %60 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 4
  store i64 %61, i64* %62, align 8
  %63 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %64 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @USHRT_MAX, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i64, i64* @USHRT_MAX, align 8
  %70 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 5
  store i64 %69, i64* %70, align 8
  br label %76

71:                                               ; preds = %58
  %72 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %73 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 5
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %71, %68
  %77 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %78 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %77, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @USHRT_MAX, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i64, i64* @USHRT_MAX, align 8
  %84 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 6
  store i64 %83, i64* %84, align 8
  br label %90

85:                                               ; preds = %76
  %86 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %87 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 6
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %85, %82
  %91 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %92 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 7
  store i64 %93, i64* %94, align 8
  %95 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %96 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 9
  store i32 %97, i32* %98, align 4
  %99 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %100 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 8
  store i32 %101, i32* %102, align 8
  %103 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %106 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %123, label %109

109:                                              ; preds = %90
  %110 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %113 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.l_msqid_ds, %struct.l_msqid_ds* %8, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %6, align 8
  %120 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %118, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %116, %109, %90
  %124 = load i32, i32* @EOVERFLOW, align 4
  store i32 %124, i32* %4, align 4
  br label %128

125:                                              ; preds = %116
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @copyout(%struct.l_msqid_ds* %8, i32 %126, i32 80)
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %125, %123, %30, %17
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i64 @SV_CURPROC_FLAG(i32) #1

declare dso_local i32 @copyout(%struct.l_msqid_ds*, i32, i32) #1

declare dso_local i32 @bzero(%struct.l_msqid_ds*, i32) #1

declare dso_local i32 @linux_ipc64_perm_to_ipc_perm(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
