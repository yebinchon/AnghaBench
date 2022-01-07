; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_p_branch_ins_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_p_branch_ins_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32 }
%struct.branchc = type { i64, i32, i32, i32 }

@OCH_ = common dso_local global i32 0, align 4
@OOR1 = common dso_local global i32 0, align 4
@OOR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, %struct.branchc*)* @p_branch_ins_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_branch_ins_offset(%struct.parse* %0, %struct.branchc* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca %struct.branchc*, align 8
  store %struct.parse* %0, %struct.parse** %3, align 8
  store %struct.branchc* %1, %struct.branchc** %4, align 8
  %5 = load %struct.branchc*, %struct.branchc** %4, align 8
  %6 = getelementptr inbounds %struct.branchc, %struct.branchc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load i32, i32* @OCH_, align 4
  %11 = load %struct.branchc*, %struct.branchc** %4, align 8
  %12 = getelementptr inbounds %struct.branchc, %struct.branchc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @INSERT(i32 %10, i32 %13)
  %15 = load %struct.branchc*, %struct.branchc** %4, align 8
  %16 = getelementptr inbounds %struct.branchc, %struct.branchc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.branchc*, %struct.branchc** %4, align 8
  %19 = getelementptr inbounds %struct.branchc, %struct.branchc* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.branchc*, %struct.branchc** %4, align 8
  %21 = getelementptr inbounds %struct.branchc, %struct.branchc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.branchc*, %struct.branchc** %4, align 8
  %24 = getelementptr inbounds %struct.branchc, %struct.branchc* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %9, %2
  %26 = load i32, i32* @OOR1, align 4
  %27 = load %struct.branchc*, %struct.branchc** %4, align 8
  %28 = getelementptr inbounds %struct.branchc, %struct.branchc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ASTERN(i32 %26, i32 %29)
  %31 = call i32 (...) @THERE()
  %32 = load %struct.branchc*, %struct.branchc** %4, align 8
  %33 = getelementptr inbounds %struct.branchc, %struct.branchc* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.branchc*, %struct.branchc** %4, align 8
  %35 = getelementptr inbounds %struct.branchc, %struct.branchc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @AHEAD(i32 %36)
  %38 = call i32 (...) @HERE()
  %39 = load %struct.branchc*, %struct.branchc** %4, align 8
  %40 = getelementptr inbounds %struct.branchc, %struct.branchc* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @OOR2, align 4
  %42 = call i32 @EMIT(i32 %41, i32 0)
  %43 = load %struct.branchc*, %struct.branchc** %4, align 8
  %44 = getelementptr inbounds %struct.branchc, %struct.branchc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  ret void
}

declare dso_local i32 @INSERT(i32, i32) #1

declare dso_local i32 @ASTERN(i32, i32) #1

declare dso_local i32 @THERE(...) #1

declare dso_local i32 @AHEAD(i32) #1

declare dso_local i32 @HERE(...) #1

declare dso_local i32 @EMIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
