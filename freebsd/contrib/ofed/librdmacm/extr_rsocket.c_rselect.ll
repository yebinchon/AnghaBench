; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rselect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.pollfd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rselect(i32 %0, i32* %1, i32* %2, i32* %3, %struct.timeval* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.timeval*, align 8
  %12 = alloca %struct.pollfd*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.timeval* %4, %struct.timeval** %11, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call %struct.pollfd* @rs_select_to_poll(i32* %7, i32* %14, i32* %15, i32* %16)
  store %struct.pollfd* %17, %struct.pollfd** %12, align 8
  %18 = load %struct.pollfd*, %struct.pollfd** %12, align 8
  %19 = icmp ne %struct.pollfd* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @ERR(i32 %21)
  store i32 %22, i32* %6, align 4
  br label %60

23:                                               ; preds = %5
  %24 = load %struct.pollfd*, %struct.pollfd** %12, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.timeval*, %struct.timeval** %11, align 8
  %27 = call i32 @rs_convert_timeout(%struct.timeval* %26)
  %28 = call i32 @rpoll(%struct.pollfd* %24, i32 %25, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @FD_ZERO(i32* %32)
  br label %34

34:                                               ; preds = %31, %23
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @FD_ZERO(i32* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32*, i32** %10, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @FD_ZERO(i32* %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %13, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.pollfd*, %struct.pollfd** %12, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @rs_poll_to_select(i32 %50, %struct.pollfd* %51, i32* %52, i32* %53, i32* %54)
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %49, %46
  %57 = load %struct.pollfd*, %struct.pollfd** %12, align 8
  %58 = call i32 @free(%struct.pollfd* %57)
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %20
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.pollfd* @rs_select_to_poll(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @rpoll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @rs_convert_timeout(%struct.timeval*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @rs_poll_to_select(i32, %struct.pollfd*, i32*, i32*, i32*) #1

declare dso_local i32 @free(%struct.pollfd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
