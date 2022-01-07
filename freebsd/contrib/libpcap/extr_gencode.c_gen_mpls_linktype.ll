; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_mpls_linktype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_mpls_linktype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

@OR_LINKPL = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (i32*, i32)* @gen_mpls_linktype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_mpls_linktype(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.block*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.block*, align 8
  %7 = alloca %struct.block*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %35 [
    i32 129, label %9
    i32 128, label %22
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @OR_LINKPL, align 4
  %12 = load i32, i32* @BPF_B, align 4
  %13 = call %struct.block* @gen_mcmp(i32* %10, i32 %11, i32 -2, i32 %12, i32 1, i32 1)
  store %struct.block* %13, %struct.block** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @OR_LINKPL, align 4
  %16 = load i32, i32* @BPF_B, align 4
  %17 = call %struct.block* @gen_mcmp(i32* %14, i32 %15, i32 0, i32 %16, i32 64, i32 240)
  store %struct.block* %17, %struct.block** %7, align 8
  %18 = load %struct.block*, %struct.block** %6, align 8
  %19 = load %struct.block*, %struct.block** %7, align 8
  %20 = call i32 @gen_and(%struct.block* %18, %struct.block* %19)
  %21 = load %struct.block*, %struct.block** %7, align 8
  store %struct.block* %21, %struct.block** %3, align 8
  br label %37

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @OR_LINKPL, align 4
  %25 = load i32, i32* @BPF_B, align 4
  %26 = call %struct.block* @gen_mcmp(i32* %23, i32 %24, i32 -2, i32 %25, i32 1, i32 1)
  store %struct.block* %26, %struct.block** %6, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @OR_LINKPL, align 4
  %29 = load i32, i32* @BPF_B, align 4
  %30 = call %struct.block* @gen_mcmp(i32* %27, i32 %28, i32 0, i32 %29, i32 96, i32 240)
  store %struct.block* %30, %struct.block** %7, align 8
  %31 = load %struct.block*, %struct.block** %6, align 8
  %32 = load %struct.block*, %struct.block** %7, align 8
  %33 = call i32 @gen_and(%struct.block* %31, %struct.block* %32)
  %34 = load %struct.block*, %struct.block** %7, align 8
  store %struct.block* %34, %struct.block** %3, align 8
  br label %37

35:                                               ; preds = %2
  %36 = call i32 (...) @abort() #3
  unreachable

37:                                               ; preds = %22, %9
  %38 = load %struct.block*, %struct.block** %3, align 8
  ret %struct.block* %38
}

declare dso_local %struct.block* @gen_mcmp(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
