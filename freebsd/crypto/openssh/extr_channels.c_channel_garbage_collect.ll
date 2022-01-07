; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_garbage_collect.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_garbage_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 (%struct.ssh*, i32, i32*)* }

@.str = private unnamed_addr constant [28 x i8] c"channel %d: gc: notify user\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"channel %d: gc: user detached\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"channel %d: garbage collecting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssh*, %struct.TYPE_5__*)* @channel_garbage_collect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_garbage_collect(%struct.ssh* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = icmp eq %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %59

8:                                                ; preds = %2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32 (%struct.ssh*, i32, i32*)*, i32 (%struct.ssh*, i32, i32*)** %10, align 8
  %12 = icmp ne i32 (%struct.ssh*, i32, i32*)* %11, null
  br i1 %12, label %13, label %45

13:                                               ; preds = %8
  %14 = load %struct.ssh*, %struct.ssh** %3, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @chan_is_dead(%struct.ssh* %14, %struct.TYPE_5__* %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %59

22:                                               ; preds = %13
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @debug2(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32 (%struct.ssh*, i32, i32*)*, i32 (%struct.ssh*, i32, i32*)** %28, align 8
  %30 = load %struct.ssh*, %struct.ssh** %3, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 %29(%struct.ssh* %30, i32 %33, i32* null)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32 (%struct.ssh*, i32, i32*)*, i32 (%struct.ssh*, i32, i32*)** %36, align 8
  %38 = icmp ne i32 (%struct.ssh*, i32, i32*)* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  br label %59

40:                                               ; preds = %22
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @debug2(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %8
  %46 = load %struct.ssh*, %struct.ssh** %3, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = call i32 @chan_is_dead(%struct.ssh* %46, %struct.TYPE_5__* %47, i32 1)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %59

51:                                               ; preds = %45
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @debug2(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load %struct.ssh*, %struct.ssh** %3, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = call i32 @channel_free(%struct.ssh* %56, %struct.TYPE_5__* %57)
  br label %59

59:                                               ; preds = %51, %50, %39, %21, %7
  ret void
}

declare dso_local i32 @chan_is_dead(%struct.ssh*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @debug2(i8*, i32) #1

declare dso_local i32 @channel_free(%struct.ssh*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
