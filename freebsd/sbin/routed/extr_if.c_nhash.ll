; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_if.c_nhash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_if.c_nhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface = type { i32 }

@nhash_tbl = common dso_local global %struct.interface** null, align 8
@NHASH_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.interface** (i8*)* @nhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.interface** @nhash(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %22, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %4
  %10 = load i32, i32* %3, align 4
  %11 = shl i32 %10, 1
  %12 = and i32 %11, 2147483647
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 31
  %15 = and i32 %14, 1
  %16 = or i32 %12, %15
  store i32 %16, i32* %3, align 4
  %17 = load i8*, i8** %2, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = load i32, i32* %3, align 4
  %21 = xor i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %9
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %2, align 8
  br label %4

25:                                               ; preds = %4
  %26 = load %struct.interface**, %struct.interface*** @nhash_tbl, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @NHASH_LEN, align 4
  %29 = srem i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.interface*, %struct.interface** %26, i64 %30
  ret %struct.interface** %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
