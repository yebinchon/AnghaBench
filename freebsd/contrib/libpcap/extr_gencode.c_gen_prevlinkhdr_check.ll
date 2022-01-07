; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_prevlinkhdr_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_prevlinkhdr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }

@OR_PREVLINKHDR = common dso_local global i32 0, align 4
@SUNATM_PKT_BEGIN_POS = common dso_local global i32 0, align 4
@BPF_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (%struct.TYPE_5__*)* @gen_prevlinkhdr_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_prevlinkhdr_check(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.block*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.block*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = call %struct.block* @gen_geneve_ll_check(%struct.TYPE_5__* %10)
  store %struct.block* %11, %struct.block** %2, align 8
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %25 [
    i32 128, label %16
  ]

16:                                               ; preds = %12
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = load i32, i32* @OR_PREVLINKHDR, align 4
  %19 = load i32, i32* @SUNATM_PKT_BEGIN_POS, align 4
  %20 = load i32, i32* @BPF_H, align 4
  %21 = call %struct.block* @gen_cmp(%struct.TYPE_5__* %17, i32 %18, i32 %19, i32 %20, i32 65280)
  store %struct.block* %21, %struct.block** %4, align 8
  %22 = load %struct.block*, %struct.block** %4, align 8
  %23 = call i32 @gen_not(%struct.block* %22)
  %24 = load %struct.block*, %struct.block** %4, align 8
  store %struct.block* %24, %struct.block** %2, align 8
  br label %26

25:                                               ; preds = %12
  store %struct.block* null, %struct.block** %2, align 8
  br label %26

26:                                               ; preds = %25, %16, %9
  %27 = load %struct.block*, %struct.block** %2, align 8
  ret %struct.block* %27
}

declare dso_local %struct.block* @gen_geneve_ll_check(%struct.TYPE_5__*) #1

declare dso_local %struct.block* @gen_cmp(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @gen_not(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
