; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_smbutil.c_interpret_dos_date.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_smbutil.c_interpret_dos_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.tm*)* @interpret_dos_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interpret_dos_date(i32 %0, %struct.tm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.tm* %1, %struct.tm** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 255
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 65280
  %13 = ashr i32 %12, 8
  %14 = and i32 %13, 255
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 16711680
  %17 = ashr i32 %16, 16
  %18 = and i32 %17, 255
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, -16777216
  %21 = lshr i32 %20, 24
  %22 = and i32 %21, 255
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 31
  %25 = mul nsw i32 2, %24
  %26 = load %struct.tm*, %struct.tm** %4, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 5
  %30 = and i32 %29, 255
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 7
  %33 = shl i32 %32, 3
  %34 = add nsw i32 %30, %33
  %35 = load %struct.tm*, %struct.tm** %4, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %37, 3
  %39 = and i32 %38, 255
  %40 = load %struct.tm*, %struct.tm** %4, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 31
  %44 = load %struct.tm*, %struct.tm** %4, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, 5
  %48 = and i32 %47, 255
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 1
  %51 = shl i32 %50, 3
  %52 = add nsw i32 %48, %51
  %53 = sub nsw i32 %52, 1
  %54 = load %struct.tm*, %struct.tm** %4, align 8
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 1
  %58 = and i32 %57, 255
  %59 = add nsw i32 %58, 80
  %60 = load %struct.tm*, %struct.tm** %4, align 8
  %61 = getelementptr inbounds %struct.tm, %struct.tm* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
