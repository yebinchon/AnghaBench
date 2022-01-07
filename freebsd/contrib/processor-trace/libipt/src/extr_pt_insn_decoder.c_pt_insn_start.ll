; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@pts_ip_suppressed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_insn_decoder*, i32)* @pt_insn_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_insn_start(%struct.pt_insn_decoder* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_insn_decoder*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_insn_decoder* %0, %struct.pt_insn_decoder** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %7 = icmp ne %struct.pt_insn_decoder* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @pte_internal, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %30

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %3, align 4
  br label %30

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %19 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @pts_ip_suppressed, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %26 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %16
  %28 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %29 = call i32 @pt_insn_check_ip_event(%struct.pt_insn_decoder* %28, i32* null, i32* null)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %14, %8
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @pt_insn_check_ip_event(%struct.pt_insn_decoder*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
