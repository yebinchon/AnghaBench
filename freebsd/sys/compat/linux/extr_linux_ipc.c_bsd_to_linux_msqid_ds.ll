; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_bsd_to_linux_msqid_ds.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_bsd_to_linux_msqid_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msqid_ds = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.l_msqid64_ds = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msqid_ds*, %struct.l_msqid64_ds*)* @bsd_to_linux_msqid_ds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bsd_to_linux_msqid_ds(%struct.msqid_ds* %0, %struct.l_msqid64_ds* %1) #0 {
  %3 = alloca %struct.msqid_ds*, align 8
  %4 = alloca %struct.l_msqid64_ds*, align 8
  store %struct.msqid_ds* %0, %struct.msqid_ds** %3, align 8
  store %struct.l_msqid64_ds* %1, %struct.l_msqid64_ds** %4, align 8
  %5 = load %struct.msqid_ds*, %struct.msqid_ds** %3, align 8
  %6 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %5, i32 0, i32 8
  %7 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %4, align 8
  %8 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %7, i32 0, i32 8
  %9 = call i32 @bsd_to_linux_ipc_perm(i32* %6, i32* %8)
  %10 = load %struct.msqid_ds*, %struct.msqid_ds** %3, align 8
  %11 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %4, align 8
  %14 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 4
  %15 = load %struct.msqid_ds*, %struct.msqid_ds** %3, align 8
  %16 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %4, align 8
  %19 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load %struct.msqid_ds*, %struct.msqid_ds** %3, align 8
  %21 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %4, align 8
  %24 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load %struct.msqid_ds*, %struct.msqid_ds** %3, align 8
  %26 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %4, align 8
  %29 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.msqid_ds*, %struct.msqid_ds** %3, align 8
  %31 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %4, align 8
  %34 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.msqid_ds*, %struct.msqid_ds** %3, align 8
  %36 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %4, align 8
  %39 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.msqid_ds*, %struct.msqid_ds** %3, align 8
  %41 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %4, align 8
  %44 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.msqid_ds*, %struct.msqid_ds** %3, align 8
  %46 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.l_msqid64_ds*, %struct.l_msqid64_ds** %4, align 8
  %49 = getelementptr inbounds %struct.l_msqid64_ds, %struct.l_msqid64_ds* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  ret void
}

declare dso_local i32 @bsd_to_linux_ipc_perm(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
