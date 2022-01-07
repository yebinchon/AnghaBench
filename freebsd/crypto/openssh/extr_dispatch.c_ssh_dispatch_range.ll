; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_dispatch.c_ssh_dispatch_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_dispatch.c_ssh_dispatch_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32** }

@DISPATCH_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssh_dispatch_range(%struct.ssh* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.ssh* %0, %struct.ssh** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i64, i64* %6, align 8
  store i64 %10, i64* %9, align 8
  br label %11

11:                                               ; preds = %27, %4
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ule i64 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @DISPATCH_MAX, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %30

20:                                               ; preds = %15
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.ssh*, %struct.ssh** %5, align 8
  %23 = getelementptr inbounds %struct.ssh, %struct.ssh* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds i32*, i32** %24, i64 %25
  store i32* %21, i32** %26, align 8
  br label %27

27:                                               ; preds = %20
  %28 = load i64, i64* %9, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %9, align 8
  br label %11

30:                                               ; preds = %19, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
