; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_geneve_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_geneve_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

@GENEVE_PORT = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@Q_DST = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@BPF_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (i32*, %struct.block* (i32*, i32, i32, i32)*, i32, i32)* @gen_geneve_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_geneve_check(i32* %0, %struct.block* (i32*, i32, i32, i32)* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.block* (i32*, i32, i32, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.block*, align 8
  %10 = alloca %struct.block*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.block* (i32*, i32, i32, i32)* %1, %struct.block* (i32*, i32, i32, i32)** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.block* (i32*, i32, i32, i32)*, %struct.block* (i32*, i32, i32, i32)** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @GENEVE_PORT, align 4
  %14 = load i32, i32* @IPPROTO_UDP, align 4
  %15 = load i32, i32* @Q_DST, align 4
  %16 = call %struct.block* %11(i32* %12, i32 %13, i32 %14, i32 %15)
  store %struct.block* %16, %struct.block** %9, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @BPF_B, align 4
  %20 = call %struct.block* @gen_mcmp(i32* %17, i32 %18, i32 8, i32 %19, i32 0, i32 192)
  store %struct.block* %20, %struct.block** %10, align 8
  %21 = load %struct.block*, %struct.block** %9, align 8
  %22 = load %struct.block*, %struct.block** %10, align 8
  %23 = call i32 @gen_and(%struct.block* %21, %struct.block* %22)
  %24 = load %struct.block*, %struct.block** %10, align 8
  store %struct.block* %24, %struct.block** %9, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 %28, 8
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @BPF_W, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call %struct.block* @gen_mcmp(i32* %30, i32 %31, i32 12, i32 %32, i32 %33, i32 -256)
  store %struct.block* %34, %struct.block** %10, align 8
  %35 = load %struct.block*, %struct.block** %9, align 8
  %36 = load %struct.block*, %struct.block** %10, align 8
  %37 = call i32 @gen_and(%struct.block* %35, %struct.block* %36)
  %38 = load %struct.block*, %struct.block** %10, align 8
  store %struct.block* %38, %struct.block** %9, align 8
  br label %39

39:                                               ; preds = %27, %4
  %40 = load %struct.block*, %struct.block** %9, align 8
  ret %struct.block* %40
}

declare dso_local %struct.block* @gen_mcmp(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
