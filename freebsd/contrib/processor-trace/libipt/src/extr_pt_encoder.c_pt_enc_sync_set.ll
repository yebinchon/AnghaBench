; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_encoder.c_pt_enc_sync_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_encoder.c_pt_enc_sync_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_encoder = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@pte_invalid = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_enc_sync_set(%struct.pt_encoder* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.pt_encoder* %0, %struct.pt_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %10 = icmp ne %struct.pt_encoder* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @pte_invalid, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %16 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %20 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ult i32* %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %14
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ult i32* %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %14
  %35 = load i32, i32* @pte_eos, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %30
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %40 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %34, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
