; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_pxe.c_pxe_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_pxe.c_pxe_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@PXENV_UNDI_SHUTDOWN = common dso_local global i32 0, align 4
@PXENV_UNLOAD_STACK = common dso_local global i32 0, align 4
@pxe_debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pxe_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxe_cleanup() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = call %struct.TYPE_7__* @bio_alloc(i32 8)
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = icmp ne %struct.TYPE_7__* %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = call i32 @bzero(%struct.TYPE_7__* %7, i32 8)
  %9 = load i32, i32* @PXENV_UNDI_SHUTDOWN, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = call i32 @pxe_call(i32 %9, %struct.TYPE_7__* %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = call i32 @bio_free(%struct.TYPE_7__* %12, i32 8)
  br label %14

14:                                               ; preds = %6, %0
  %15 = call %struct.TYPE_7__* @bio_alloc(i32 8)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %1, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %20 = call i32 @bzero(%struct.TYPE_7__* %19, i32 8)
  %21 = load i32, i32* @PXENV_UNLOAD_STACK, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %23 = call i32 @pxe_call(i32 %21, %struct.TYPE_7__* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %25 = call i32 @bio_free(%struct.TYPE_7__* %24, i32 8)
  br label %26

26:                                               ; preds = %18, %14
  ret void
}

declare dso_local %struct.TYPE_7__* @bio_alloc(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pxe_call(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @bio_free(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
