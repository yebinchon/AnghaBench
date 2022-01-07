; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_pxe.c_pxe_netif_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_pxe.c_pxe_netif_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32 }
%struct.TYPE_6__ = type { i64 }

@PXENV_UNDI_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"undi close failed: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netif*)* @pxe_netif_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxe_netif_end(%struct.netif* %0) #0 {
  %2 = alloca %struct.netif*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.netif* %0, %struct.netif** %2, align 8
  %4 = call %struct.TYPE_6__* @bio_alloc(i32 8)
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = call i32 @bzero(%struct.TYPE_6__* %8, i32 8)
  %10 = load i32, i32* @PXENV_UNDI_CLOSE, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = call i32 @pxe_call(i32 %10, %struct.TYPE_6__* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %7
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %22

22:                                               ; preds = %17, %7
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = call i32 @bio_free(%struct.TYPE_6__* %23, i32 8)
  br label %25

25:                                               ; preds = %22, %1
  ret void
}

declare dso_local %struct.TYPE_6__* @bio_alloc(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @pxe_call(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @bio_free(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
