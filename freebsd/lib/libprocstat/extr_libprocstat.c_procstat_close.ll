; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i64, i32, i32 }

@PROCSTAT_KVM = common dso_local global i64 0, align 8
@PROCSTAT_CORE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procstat_close(%struct.procstat* %0) #0 {
  %2 = alloca %struct.procstat*, align 8
  store %struct.procstat* %0, %struct.procstat** %2, align 8
  %3 = load %struct.procstat*, %struct.procstat** %2, align 8
  %4 = call i32 @assert(%struct.procstat* %3)
  %5 = load %struct.procstat*, %struct.procstat** %2, align 8
  %6 = getelementptr inbounds %struct.procstat, %struct.procstat* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PROCSTAT_KVM, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.procstat*, %struct.procstat** %2, align 8
  %12 = getelementptr inbounds %struct.procstat, %struct.procstat* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @kvm_close(i32 %13)
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.procstat*, %struct.procstat** %2, align 8
  %17 = getelementptr inbounds %struct.procstat, %struct.procstat* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PROCSTAT_CORE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.procstat*, %struct.procstat** %2, align 8
  %23 = getelementptr inbounds %struct.procstat, %struct.procstat* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @procstat_core_close(i32 %24)
  br label %26

26:                                               ; preds = %21, %15
  br label %27

27:                                               ; preds = %26, %10
  %28 = load %struct.procstat*, %struct.procstat** %2, align 8
  %29 = call i32 @procstat_freeargv(%struct.procstat* %28)
  %30 = load %struct.procstat*, %struct.procstat** %2, align 8
  %31 = call i32 @procstat_freeenvv(%struct.procstat* %30)
  %32 = load %struct.procstat*, %struct.procstat** %2, align 8
  %33 = call i32 @free(%struct.procstat* %32)
  ret void
}

declare dso_local i32 @assert(%struct.procstat*) #1

declare dso_local i32 @kvm_close(i32) #1

declare dso_local i32 @procstat_core_close(i32) #1

declare dso_local i32 @procstat_freeargv(%struct.procstat*) #1

declare dso_local i32 @procstat_freeenvv(%struct.procstat*) #1

declare dso_local i32 @free(%struct.procstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
