; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_encoder.c_pt_encoder_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_encoder.c_pt_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_encoder = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pt_config = type { i32 }

@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_encoder_init(%struct.pt_encoder* %0, %struct.pt_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_encoder*, align 8
  %5 = alloca %struct.pt_config*, align 8
  %6 = alloca i32, align 4
  store %struct.pt_encoder* %0, %struct.pt_encoder** %4, align 8
  store %struct.pt_config* %1, %struct.pt_config** %5, align 8
  %7 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %8 = icmp ne %struct.pt_encoder* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @pte_invalid, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %14 = call i32 @memset(%struct.pt_encoder* %13, i32 0, i32 8)
  %15 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %16 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %15, i32 0, i32 0
  %17 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %18 = call i32 @pt_config_from_user(%struct.TYPE_2__* %16, %struct.pt_config* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %30

23:                                               ; preds = %12
  %24 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %25 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pt_encoder*, %struct.pt_encoder** %4, align 8
  %29 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %23, %21, %9
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @memset(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @pt_config_from_user(%struct.TYPE_2__*, %struct.pt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
