; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpit.c_vatpit_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpit.c_vatpit_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vatpit = type { %struct.TYPE_2__*, i32, i32, %struct.vm* }
%struct.TYPE_2__ = type { %struct.vatpit_callout_arg, i32 }
%struct.vatpit_callout_arg = type { i32, %struct.vatpit* }
%struct.vm = type { i32 }

@M_VATPIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vatpit lock\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@PIT_8254_FREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vatpit* @vatpit_init(%struct.vm* %0) #0 {
  %2 = alloca %struct.vm*, align 8
  %3 = alloca %struct.vatpit*, align 8
  %4 = alloca %struct.vatpit_callout_arg*, align 8
  %5 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %2, align 8
  %6 = load i32, i32* @M_VATPIT, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.vatpit* @malloc(i32 24, i32 %6, i32 %9)
  store %struct.vatpit* %10, %struct.vatpit** %3, align 8
  %11 = load %struct.vm*, %struct.vm** %2, align 8
  %12 = load %struct.vatpit*, %struct.vatpit** %3, align 8
  %13 = getelementptr inbounds %struct.vatpit, %struct.vatpit* %12, i32 0, i32 3
  store %struct.vm* %11, %struct.vm** %13, align 8
  %14 = load %struct.vatpit*, %struct.vatpit** %3, align 8
  %15 = getelementptr inbounds %struct.vatpit, %struct.vatpit* %14, i32 0, i32 2
  %16 = load i32, i32* @MTX_SPIN, align 4
  %17 = call i32 @mtx_init(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 %16)
  %18 = load i32, i32* @PIT_8254_FREQ, align 4
  %19 = load %struct.vatpit*, %struct.vatpit** %3, align 8
  %20 = getelementptr inbounds %struct.vatpit, %struct.vatpit* %19, i32 0, i32 1
  %21 = call i32 @FREQ2BT(i32 %18, i32* %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %47, %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = load %struct.vatpit*, %struct.vatpit** %3, align 8
  %27 = getelementptr inbounds %struct.vatpit, %struct.vatpit* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @callout_init(i32* %32, i32 1)
  %34 = load %struct.vatpit*, %struct.vatpit** %3, align 8
  %35 = getelementptr inbounds %struct.vatpit, %struct.vatpit* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store %struct.vatpit_callout_arg* %40, %struct.vatpit_callout_arg** %4, align 8
  %41 = load %struct.vatpit*, %struct.vatpit** %3, align 8
  %42 = load %struct.vatpit_callout_arg*, %struct.vatpit_callout_arg** %4, align 8
  %43 = getelementptr inbounds %struct.vatpit_callout_arg, %struct.vatpit_callout_arg* %42, i32 0, i32 1
  store %struct.vatpit* %41, %struct.vatpit** %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.vatpit_callout_arg*, %struct.vatpit_callout_arg** %4, align 8
  %46 = getelementptr inbounds %struct.vatpit_callout_arg, %struct.vatpit_callout_arg* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %25
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %22

50:                                               ; preds = %22
  %51 = load %struct.vatpit*, %struct.vatpit** %3, align 8
  ret %struct.vatpit* %51
}

declare dso_local %struct.vatpit* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @FREQ2BT(i32, i32*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
