; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/powerpc/dtrace/extr_fasttrap_isa.c_fasttrap_branch_taken.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/powerpc/dtrace/extr_fasttrap_isa.c_fasttrap_branch_taken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.reg*)* @fasttrap_branch_taken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fasttrap_branch_taken(i32 %0, i32 %1, %struct.reg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.reg*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.reg* %2, %struct.reg** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 20
  %11 = icmp eq i32 %10, 20
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %52

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %13
  %18 = load %struct.reg*, %struct.reg** %7, align 8
  %19 = getelementptr inbounds %struct.reg, %struct.reg* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.reg*, %struct.reg** %7, align 8
  %23 = getelementptr inbounds %struct.reg, %struct.reg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 16
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %17
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 1
  %34 = xor i32 %31, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %52

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %38, %13
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.reg*, %struct.reg** %7, align 8
  %42 = getelementptr inbounds %struct.reg, %struct.reg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 31, %44
  %46 = ashr i32 %43, %45
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %47, 3
  %49 = xor i32 %46, %48
  %50 = xor i32 %49, 1
  %51 = or i32 %40, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %39, %30, %12
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
