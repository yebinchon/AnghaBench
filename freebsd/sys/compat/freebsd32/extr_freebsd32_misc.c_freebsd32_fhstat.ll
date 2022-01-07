; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_fhstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_fhstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_fhstat_args = type { i32, i32 }
%struct.stat = type { i32 }
%struct.stat32 = type { i32 }
%struct.fhandle = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_fhstat(%struct.thread* %0, %struct.freebsd32_fhstat_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_fhstat_args*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.stat32, align 4
  %8 = alloca %struct.fhandle, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_fhstat_args* %1, %struct.freebsd32_fhstat_args** %5, align 8
  %10 = load %struct.freebsd32_fhstat_args*, %struct.freebsd32_fhstat_args** %5, align 8
  %11 = getelementptr inbounds %struct.freebsd32_fhstat_args, %struct.freebsd32_fhstat_args* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @copyin(i32 %12, %struct.fhandle* %8, i32 4)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = getelementptr inbounds %struct.fhandle, %struct.fhandle* %8, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kern_fhstat(%struct.thread* %19, i32 %21, %struct.stat* %6)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %18
  %28 = call i32 @copy_stat(%struct.stat* %6, %struct.stat32* %7)
  %29 = load %struct.freebsd32_fhstat_args*, %struct.freebsd32_fhstat_args** %5, align 8
  %30 = getelementptr inbounds %struct.freebsd32_fhstat_args, %struct.freebsd32_fhstat_args* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @copyout(%struct.stat32* %7, i32 %31, i32 4)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %25, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @copyin(i32, %struct.fhandle*, i32) #1

declare dso_local i32 @kern_fhstat(%struct.thread*, i32, %struct.stat*) #1

declare dso_local i32 @copy_stat(%struct.stat*, %struct.stat32*) #1

declare dso_local i32 @copyout(%struct.stat32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
