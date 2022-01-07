; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_elf_machdep.c_amd64_lower_shared_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_elf_machdep.c_amd64_lower_shared_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysentvec = type { i32, i32, i32, i32 }

@hw_lower_amd64_sharedpage = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amd64_lower_shared_page(%struct.sysentvec* %0) #0 {
  %2 = alloca %struct.sysentvec*, align 8
  store %struct.sysentvec* %0, %struct.sysentvec** %2, align 8
  %3 = load i64, i64* @hw_lower_amd64_sharedpage, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = load i64, i64* @PAGE_SIZE, align 8
  %7 = load %struct.sysentvec*, %struct.sysentvec** %2, align 8
  %8 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = sub nsw i64 %10, %6
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load i64, i64* @PAGE_SIZE, align 8
  %14 = load %struct.sysentvec*, %struct.sysentvec** %2, align 8
  %15 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %17, %13
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = load %struct.sysentvec*, %struct.sysentvec** %2, align 8
  %22 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %24, %20
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 4
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = load %struct.sysentvec*, %struct.sysentvec** %2, align 8
  %29 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  br label %34

34:                                               ; preds = %5, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
