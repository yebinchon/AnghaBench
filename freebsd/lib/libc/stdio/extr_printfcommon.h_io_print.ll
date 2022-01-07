; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printfcommon.h_io_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printfcommon.h_io_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_state = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i8*, i32 }

@NIOV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_state*, i32*, i32, i32)* @io_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_print(%struct.io_state* %0, i32* noalias %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.io_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.io_state* %0, %struct.io_state** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = load %struct.io_state*, %struct.io_state** %6, align 8
  %13 = getelementptr inbounds %struct.io_state, %struct.io_state* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.io_state*, %struct.io_state** %6, align 8
  %16 = getelementptr inbounds %struct.io_state, %struct.io_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i8* %11, i8** %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.io_state*, %struct.io_state** %6, align 8
  %23 = getelementptr inbounds %struct.io_state, %struct.io_state* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.io_state*, %struct.io_state** %6, align 8
  %26 = getelementptr inbounds %struct.io_state, %struct.io_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %21, i32* %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.io_state*, %struct.io_state** %6, align 8
  %33 = getelementptr inbounds %struct.io_state, %struct.io_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, %31
  store i32 %36, i32* %34, align 8
  %37 = load %struct.io_state*, %struct.io_state** %6, align 8
  %38 = getelementptr inbounds %struct.io_state, %struct.io_state* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load i64, i64* @NIOV, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %4
  %45 = load %struct.io_state*, %struct.io_state** %6, align 8
  %46 = getelementptr inbounds %struct.io_state, %struct.io_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.io_state*, %struct.io_state** %6, align 8
  %49 = getelementptr inbounds %struct.io_state, %struct.io_state* %48, i32 0, i32 0
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @__sprint(i32 %47, %struct.TYPE_4__* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %53

52:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %44
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @__sprint(i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
