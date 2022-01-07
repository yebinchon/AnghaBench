; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.h_handle_to_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.h_handle_to_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32** }

@vchiq_states = common dso_local global %struct.TYPE_3__** null, align 8
@VCHIQ_MAX_SERVICES = common dso_local global i32 0, align 4
@VCHIQ_MAX_STATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @handle_to_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @handle_to_service(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @vchiq_states, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @VCHIQ_MAX_SERVICES, align 4
  %8 = sdiv i32 %6, %7
  %9 = load i32, i32* @VCHIQ_MAX_STATES, align 4
  %10 = sub nsw i32 %9, 1
  %11 = and i32 %8, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %5, i64 %12
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %29

18:                                               ; preds = %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @VCHIQ_MAX_SERVICES, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %22, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %21, i64 %26
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %2, align 8
  br label %29

29:                                               ; preds = %18, %17
  %30 = load i32*, i32** %2, align 8
  ret i32* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
