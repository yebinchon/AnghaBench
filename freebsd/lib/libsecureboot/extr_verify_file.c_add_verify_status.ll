; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_verify_file.c_add_verify_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_verify_file.c_add_verify_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.verify_status = type { i32, i32, i32, %struct.verify_status* }
%struct.stat = type { i32, i32 }

@verified_files = common dso_local global %struct.verify_status* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_verify_status(%struct.stat* %0, i32 %1) #0 {
  %3 = alloca %struct.stat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.verify_status*, align 8
  store %struct.stat* %0, %struct.stat** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.verify_status* @malloc(i32 24)
  store %struct.verify_status* %6, %struct.verify_status** %5, align 8
  %7 = load %struct.verify_status*, %struct.verify_status** @verified_files, align 8
  %8 = load %struct.verify_status*, %struct.verify_status** %5, align 8
  %9 = getelementptr inbounds %struct.verify_status, %struct.verify_status* %8, i32 0, i32 3
  store %struct.verify_status* %7, %struct.verify_status** %9, align 8
  %10 = load %struct.stat*, %struct.stat** %3, align 8
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.verify_status*, %struct.verify_status** %5, align 8
  %14 = getelementptr inbounds %struct.verify_status, %struct.verify_status* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.stat*, %struct.stat** %3, align 8
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.verify_status*, %struct.verify_status** %5, align 8
  %19 = getelementptr inbounds %struct.verify_status, %struct.verify_status* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.verify_status*, %struct.verify_status** %5, align 8
  %22 = getelementptr inbounds %struct.verify_status, %struct.verify_status* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.verify_status*, %struct.verify_status** %5, align 8
  store %struct.verify_status* %23, %struct.verify_status** @verified_files, align 8
  ret void
}

declare dso_local %struct.verify_status* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
