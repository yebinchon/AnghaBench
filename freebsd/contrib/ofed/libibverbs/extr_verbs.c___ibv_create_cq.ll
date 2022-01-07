; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_create_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { i32 }
%struct.ibv_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ibv_cq* (%struct.ibv_context.0*, i32, %struct.ibv_comp_channel*, i32)* }
%struct.ibv_context.0 = type opaque
%struct.ibv_comp_channel = type opaque
%struct.ibv_comp_channel.1 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_cq* @__ibv_create_cq(%struct.ibv_context* %0, i32 %1, i8* %2, %struct.ibv_comp_channel.1* %3, i32 %4) #0 {
  %6 = alloca %struct.ibv_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ibv_comp_channel.1*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ibv_cq*, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.ibv_comp_channel.1* %3, %struct.ibv_comp_channel.1** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %13 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ibv_cq* (%struct.ibv_context.0*, i32, %struct.ibv_comp_channel*, i32)*, %struct.ibv_cq* (%struct.ibv_context.0*, i32, %struct.ibv_comp_channel*, i32)** %14, align 8
  %16 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %17 = bitcast %struct.ibv_context* %16 to %struct.ibv_context.0*
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ibv_comp_channel.1*, %struct.ibv_comp_channel.1** %9, align 8
  %20 = bitcast %struct.ibv_comp_channel.1* %19 to %struct.ibv_comp_channel*
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.ibv_cq* %15(%struct.ibv_context.0* %17, i32 %18, %struct.ibv_comp_channel* %20, i32 %21)
  store %struct.ibv_cq* %22, %struct.ibv_cq** %11, align 8
  %23 = load %struct.ibv_cq*, %struct.ibv_cq** %11, align 8
  %24 = icmp ne %struct.ibv_cq* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load %struct.ibv_cq*, %struct.ibv_cq** %11, align 8
  %27 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %28 = load %struct.ibv_comp_channel.1*, %struct.ibv_comp_channel.1** %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @verbs_init_cq(%struct.ibv_cq* %26, %struct.ibv_context* %27, %struct.ibv_comp_channel.1* %28, i8* %29)
  br label %31

31:                                               ; preds = %25, %5
  %32 = load %struct.ibv_cq*, %struct.ibv_cq** %11, align 8
  ret %struct.ibv_cq* %32
}

declare dso_local i32 @verbs_init_cq(%struct.ibv_cq*, %struct.ibv_context*, %struct.ibv_comp_channel.1*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
