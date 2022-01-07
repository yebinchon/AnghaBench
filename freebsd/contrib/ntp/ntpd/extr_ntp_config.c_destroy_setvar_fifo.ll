; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_destroy_setvar_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_destroy_setvar_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }

@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @destroy_setvar_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_setvar_fifo(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = icmp ne %struct.TYPE_7__* %4, null
  br i1 %5, label %6, label %34

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %20, %6
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = load i32, i32* @link, align 4
  %11 = bitcast %struct.TYPE_7__* %9 to { %struct.TYPE_7__*, %struct.TYPE_7__* }*
  %12 = getelementptr inbounds { %struct.TYPE_7__*, %struct.TYPE_7__* }, { %struct.TYPE_7__*, %struct.TYPE_7__* }* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds { %struct.TYPE_7__*, %struct.TYPE_7__* }, { %struct.TYPE_7__*, %struct.TYPE_7__* }* %11, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = call i32 @UNLINK_FIFO(%struct.TYPE_7__* %8, %struct.TYPE_7__* %13, %struct.TYPE_7__* %15, i32 %10)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = icmp eq %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  br label %31

20:                                               ; preds = %7
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = call i32 @free(%struct.TYPE_7__* %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = call i32 @free(%struct.TYPE_7__* %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = call i32 @free(%struct.TYPE_7__* %29)
  br label %7

31:                                               ; preds = %19
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = call i32 @free(%struct.TYPE_7__* %32)
  br label %34

34:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @UNLINK_FIFO(%struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
