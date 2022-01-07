; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vpmtmr.c_vpmtmr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vpmtmr.c_vpmtmr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vpmtmr = type { i32, i32, i64 }

@.str = private unnamed_addr constant [52 x i8] c"vpmtmr_handler: uptime went backwards: %#lx to %#lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vpmtmr_handler(%struct.vm* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.vpmtmr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %6
  store i32 -1, i32* %7, align 4
  br label %53

23:                                               ; preds = %19
  %24 = load %struct.vm*, %struct.vm** %8, align 8
  %25 = call %struct.vpmtmr* @vm_pmtmr(%struct.vm* %24)
  store %struct.vpmtmr* %25, %struct.vpmtmr** %14, align 8
  %26 = call i32 (...) @sbinuptime()
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load %struct.vpmtmr*, %struct.vpmtmr** %14, align 8
  %29 = getelementptr inbounds %struct.vpmtmr, %struct.vpmtmr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %27, %30
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp sge i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load %struct.vpmtmr*, %struct.vpmtmr** %14, align 8
  %36 = getelementptr inbounds %struct.vpmtmr, %struct.vpmtmr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @KASSERT(i32 %34, i8* %40)
  %42 = load %struct.vpmtmr*, %struct.vpmtmr** %14, align 8
  %43 = getelementptr inbounds %struct.vpmtmr, %struct.vpmtmr* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.vpmtmr*, %struct.vpmtmr** %14, align 8
  %47 = getelementptr inbounds %struct.vpmtmr, %struct.vpmtmr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %44, %50
  %52 = load i64*, i64** %13, align 8
  store i64 %51, i64* %52, align 8
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %23, %22
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local %struct.vpmtmr* @vm_pmtmr(%struct.vm*) #1

declare dso_local i32 @sbinuptime(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
