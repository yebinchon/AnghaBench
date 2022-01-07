; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_msgctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_msgctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i64, i32 }
%struct.thread = type { i64* }
%struct.linux_msgctl_args = type { i32, i32, i32 }
%struct.l_msqid64_ds = type { i64, i32, i32, i32, i64, i64, i32, i64 }
%struct.msqid_ds = type { i32 }
%struct.l_msginfo = type { i64, i32, i32, i32, i64, i64, i32, i64 }

@LINUX_IPC_64 = common dso_local global i32 0, align 4
@msginfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_msgctl(%struct.thread* %0, %struct.linux_msgctl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_msgctl_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.l_msqid64_ds, align 8
  %9 = alloca %struct.msqid_ds, align 4
  %10 = alloca %struct.l_msginfo, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_msgctl_args* %1, %struct.linux_msgctl_args** %5, align 8
  %11 = call i32 @memset(%struct.l_msqid64_ds* %8, i32 0, i32 56)
  %12 = load %struct.linux_msgctl_args*, %struct.linux_msgctl_args** %5, align 8
  %13 = getelementptr inbounds %struct.linux_msgctl_args, %struct.linux_msgctl_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LINUX_IPC_64, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %76 [
    i32 132, label %19
    i32 128, label %19
    i32 129, label %57
    i32 130, label %58
    i32 131, label %75
  ]

19:                                               ; preds = %2, %2
  %20 = bitcast %struct.l_msginfo* %10 to %struct.l_msqid64_ds*
  %21 = call i32 @memset(%struct.l_msqid64_ds* %20, i32 0, i32 56)
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msginfo, i32 0, i32 0), align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msginfo, i32 0, i32 4), align 8
  %24 = mul nsw i64 %22, %23
  %25 = sdiv i64 %24, 1024
  %26 = getelementptr inbounds %struct.l_msginfo, %struct.l_msginfo* %10, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msginfo, i32 0, i32 4), align 8
  %28 = getelementptr inbounds %struct.l_msginfo, %struct.l_msginfo* %10, i32 0, i32 7
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msginfo, i32 0, i32 5), align 8
  %30 = getelementptr inbounds %struct.l_msginfo, %struct.l_msginfo* %10, i32 0, i32 6
  store i32 %29, i32* %30, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msginfo, i32 0, i32 4), align 8
  %32 = getelementptr inbounds %struct.l_msginfo, %struct.l_msginfo* %10, i32 0, i32 5
  store i64 %31, i64* %32, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msginfo, i32 0, i32 0), align 8
  %34 = getelementptr inbounds %struct.l_msginfo, %struct.l_msginfo* %10, i32 0, i32 4
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msginfo, i32 0, i32 3), align 8
  %36 = getelementptr inbounds %struct.l_msginfo, %struct.l_msginfo* %10, i32 0, i32 3
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msginfo, i32 0, i32 2), align 4
  %38 = getelementptr inbounds %struct.l_msginfo, %struct.l_msginfo* %10, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msginfo, i32 0, i32 1), align 8
  %40 = getelementptr inbounds %struct.l_msginfo, %struct.l_msginfo* %10, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = bitcast %struct.l_msginfo* %10 to %struct.l_msqid64_ds*
  %42 = load %struct.linux_msgctl_args*, %struct.linux_msgctl_args** %5, align 8
  %43 = getelementptr inbounds %struct.linux_msgctl_args, %struct.linux_msgctl_args* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PTRIN(i32 %44)
  %46 = call i32 @copyout(%struct.l_msqid64_ds* %41, i32 %45, i32 56)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %19
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msginfo, i32 0, i32 0), align 8
  %51 = load %struct.thread*, %struct.thread** %4, align 8
  %52 = getelementptr inbounds %struct.thread, %struct.thread* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  store i64 %50, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %19
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %122

57:                                               ; preds = %2
  br label %78

58:                                               ; preds = %2
  %59 = load %struct.linux_msgctl_args*, %struct.linux_msgctl_args** %5, align 8
  %60 = getelementptr inbounds %struct.linux_msgctl_args, %struct.linux_msgctl_args* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @LINUX_IPC_64, align 4
  %63 = and i32 %61, %62
  %64 = load %struct.linux_msgctl_args*, %struct.linux_msgctl_args** %5, align 8
  %65 = getelementptr inbounds %struct.linux_msgctl_args, %struct.linux_msgctl_args* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @PTRIN(i32 %66)
  %68 = call i32 @linux_msqid_pullup(i32 %63, %struct.l_msqid64_ds* %8, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %58
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %122

73:                                               ; preds = %58
  %74 = call i32 @linux_to_bsd_msqid_ds(%struct.l_msqid64_ds* %8, %struct.msqid_ds* %9)
  br label %78

75:                                               ; preds = %2
  br label %78

76:                                               ; preds = %2
  %77 = load i32, i32* @EINVAL, align 4
  store i32 %77, i32* %3, align 4
  br label %122

78:                                               ; preds = %75, %73, %57
  %79 = load %struct.thread*, %struct.thread** %4, align 8
  %80 = load %struct.linux_msgctl_args*, %struct.linux_msgctl_args** %5, align 8
  %81 = getelementptr inbounds %struct.linux_msgctl_args, %struct.linux_msgctl_args* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @kern_msgctl(%struct.thread* %79, i32 %82, i32 %83, %struct.msqid_ds* %9)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %78
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %88, 131
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @EACCES, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @EPERM, align 4
  store i32 %95, i32* %3, align 4
  br label %122

96:                                               ; preds = %90, %87
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 131
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @EINVAL, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99, %96
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %3, align 4
  br label %122

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %78
  %107 = load i32, i32* %7, align 4
  %108 = icmp eq i32 %107, 129
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = call i32 @bsd_to_linux_msqid_ds(%struct.msqid_ds* %9, %struct.l_msqid64_ds* %8)
  %111 = load %struct.linux_msgctl_args*, %struct.linux_msgctl_args** %5, align 8
  %112 = getelementptr inbounds %struct.linux_msgctl_args, %struct.linux_msgctl_args* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @LINUX_IPC_64, align 4
  %115 = and i32 %113, %114
  %116 = load %struct.linux_msgctl_args*, %struct.linux_msgctl_args** %5, align 8
  %117 = getelementptr inbounds %struct.linux_msgctl_args, %struct.linux_msgctl_args* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @PTRIN(i32 %118)
  %120 = call i32 @linux_msqid_pushdown(i32 %115, %struct.l_msqid64_ds* %8, i32 %119)
  store i32 %120, i32* %3, align 4
  br label %122

121:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %109, %103, %94, %76, %71, %55
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @memset(%struct.l_msqid64_ds*, i32, i32) #1

declare dso_local i32 @copyout(%struct.l_msqid64_ds*, i32, i32) #1

declare dso_local i32 @PTRIN(i32) #1

declare dso_local i32 @linux_msqid_pullup(i32, %struct.l_msqid64_ds*, i32) #1

declare dso_local i32 @linux_to_bsd_msqid_ds(%struct.l_msqid64_ds*, %struct.msqid_ds*) #1

declare dso_local i32 @kern_msgctl(%struct.thread*, i32, i32, %struct.msqid_ds*) #1

declare dso_local i32 @bsd_to_linux_msqid_ds(%struct.msqid_ds*, %struct.l_msqid64_ds*) #1

declare dso_local i32 @linux_msqid_pushdown(i32, %struct.l_msqid64_ds*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
