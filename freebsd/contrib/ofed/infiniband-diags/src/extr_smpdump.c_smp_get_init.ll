; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_smpdump.c_smp_get_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_smpdump.c_smp_get_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drsmp = type { i32, i32, i32, i32, i32, i64, i32 }

@IB_SMI_CLASS = common dso_local global i32 0, align 4
@drmad_tid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_get_init(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drsmp*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @umad_get_mad(i8* %10)
  %12 = inttoptr i64 %11 to %struct.drsmp*
  store %struct.drsmp* %12, %struct.drsmp** %9, align 8
  %13 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %14 = call i32 @memset(%struct.drsmp* %13, i32 0, i32 40)
  %15 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %16 = getelementptr inbounds %struct.drsmp, %struct.drsmp* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* @IB_SMI_CLASS, align 4
  %18 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %19 = getelementptr inbounds %struct.drsmp, %struct.drsmp* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %21 = getelementptr inbounds %struct.drsmp, %struct.drsmp* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %23 = getelementptr inbounds %struct.drsmp, %struct.drsmp* %22, i32 0, i32 2
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = call i64 @htons(i64 %25)
  %27 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %28 = getelementptr inbounds %struct.drsmp, %struct.drsmp* %27, i32 0, i32 5
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @htonl(i32 %29)
  %31 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %32 = getelementptr inbounds %struct.drsmp, %struct.drsmp* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @drmad_tid, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @drmad_tid, align 4
  %35 = call i32 @htonll(i32 %33)
  %36 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %37 = getelementptr inbounds %struct.drsmp, %struct.drsmp* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @umad_set_addr(i8* %38, i32 %39, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i64 @umad_get_mad(i8*) #1

declare dso_local i32 @memset(%struct.drsmp*, i32, i32) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htonll(i32) #1

declare dso_local i32 @umad_set_addr(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
