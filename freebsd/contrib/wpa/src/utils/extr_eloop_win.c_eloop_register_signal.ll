; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_eloop_win.c_eloop_register_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_eloop_win.c_eloop_register_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.eloop_signal* }
%struct.eloop_signal = type { i32, i64, i32, i8* }

@eloop = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eloop_register_signal(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eloop_signal*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.eloop_signal*, %struct.eloop_signal** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 1), align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %11 = add nsw i32 %10, 1
  %12 = call %struct.eloop_signal* @os_realloc_array(%struct.eloop_signal* %9, i32 %11, i32 32)
  store %struct.eloop_signal* %12, %struct.eloop_signal** %8, align 8
  %13 = load %struct.eloop_signal*, %struct.eloop_signal** %8, align 8
  %14 = icmp eq %struct.eloop_signal* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %43

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.eloop_signal*, %struct.eloop_signal** %8, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.eloop_signal, %struct.eloop_signal* %18, i64 %20
  %22 = getelementptr inbounds %struct.eloop_signal, %struct.eloop_signal* %21, i32 0, i32 0
  store i32 %17, i32* %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.eloop_signal*, %struct.eloop_signal** %8, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.eloop_signal, %struct.eloop_signal* %24, i64 %26
  %28 = getelementptr inbounds %struct.eloop_signal, %struct.eloop_signal* %27, i32 0, i32 3
  store i8* %23, i8** %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.eloop_signal*, %struct.eloop_signal** %8, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.eloop_signal, %struct.eloop_signal* %30, i64 %32
  %34 = getelementptr inbounds %struct.eloop_signal, %struct.eloop_signal* %33, i32 0, i32 2
  store i32 %29, i32* %34, align 8
  %35 = load %struct.eloop_signal*, %struct.eloop_signal** %8, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.eloop_signal, %struct.eloop_signal* %35, i64 %37
  %39 = getelementptr inbounds %struct.eloop_signal, %struct.eloop_signal* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %42 = load %struct.eloop_signal*, %struct.eloop_signal** %8, align 8
  store %struct.eloop_signal* %42, %struct.eloop_signal** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 1), align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %16, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.eloop_signal* @os_realloc_array(%struct.eloop_signal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
