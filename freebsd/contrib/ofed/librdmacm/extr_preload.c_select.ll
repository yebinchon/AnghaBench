; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.pollfd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @select(i32 %0, i32* %1, i32* %2, i32* %3, %struct.timeval* %4) #0 {
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
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.pollfd* @fds_alloc(i32 %14)
  store %struct.pollfd* %15, %struct.pollfd** %12, align 8
  %16 = load %struct.pollfd*, %struct.pollfd** %12, align 8
  %17 = icmp ne %struct.pollfd* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = call i32 @ERR(i32 %19)
  store i32 %20, i32* %6, align 4
  br label %61

21:                                               ; preds = %5
  %22 = load %struct.pollfd*, %struct.pollfd** %12, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @select_to_rpoll(%struct.pollfd* %22, i32* %7, i32* %23, i32* %24, i32* %25)
  %27 = load %struct.pollfd*, %struct.pollfd** %12, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.timeval*, %struct.timeval** %11, align 8
  %30 = call i32 @rs_convert_timeout(%struct.timeval* %29)
  %31 = call i32 @rpoll(%struct.pollfd* %27, i32 %28, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @FD_ZERO(i32* %35)
  br label %37

37:                                               ; preds = %34, %21
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @FD_ZERO(i32* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @FD_ZERO(i32* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %13, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.pollfd*, %struct.pollfd** %12, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @rpoll_to_select(%struct.pollfd* %53, i32 %54, i32* %55, i32* %56, i32* %57)
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %52, %49
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %18
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.pollfd* @fds_alloc(i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @select_to_rpoll(%struct.pollfd*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @rpoll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @rs_convert_timeout(%struct.timeval*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @rpoll_to_select(%struct.pollfd*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
