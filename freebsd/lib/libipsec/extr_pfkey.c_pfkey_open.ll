; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libipsec/extr_pfkey.c_pfkey_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libipsec/extr_pfkey.c_pfkey_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_KEY = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@PF_KEY_V2 = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@EIPSEC_NO_ERROR = common dso_local global i32 0, align 4
@__ipsec_errcode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfkey_open() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @PF_KEY, align 4
  %8 = load i32, i32* @SOCK_RAW, align 4
  %9 = load i32, i32* @PF_KEY_V2, align 4
  %10 = call i32 @socket(i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @strerror(i32 %13)
  %15 = call i32 @__ipsec_set_strerror(i32 %14)
  store i32 -1, i32* %1, align 4
  br label %59

16:                                               ; preds = %0
  store i32 131072, i32* %4, align 4
  store i32 4, i32* %6, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @SOL_SOCKET, align 4
  %19 = load i32, i32* @SO_SNDBUF, align 4
  %20 = call i32 @getsockopt(i32 %17, i32 %18, i32 %19, i32* %3, i32* %6)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23, %16
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @SOL_SOCKET, align 4
  %30 = load i32, i32* @SO_SNDBUF, align 4
  %31 = call i64 @setsockopt(i32 %28, i32 %29, i32 %30, i32* %4, i32 4)
  br label %32

32:                                               ; preds = %27, %23
  store i32 2097152, i32* %4, align 4
  store i32 4, i32* %6, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @SOL_SOCKET, align 4
  %35 = load i32, i32* @SO_RCVBUF, align 4
  %36 = call i32 @getsockopt(i32 %33, i32 %34, i32 %35, i32* %3, i32* %6)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 131072, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %32
  br label %41

41:                                               ; preds = %53, %40
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @SOL_SOCKET, align 4
  %48 = load i32, i32* @SO_RCVBUF, align 4
  %49 = call i64 @setsockopt(i32 %46, i32 %47, i32 %48, i32* %4, i32 4)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %56

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = sdiv i32 %54, 2
  store i32 %55, i32* %4, align 4
  br label %41

56:                                               ; preds = %51, %41
  %57 = load i32, i32* @EIPSEC_NO_ERROR, align 4
  store i32 %57, i32* @__ipsec_errcode, align 4
  %58 = load i32, i32* %2, align 4
  store i32 %58, i32* %1, align 4
  br label %59

59:                                               ; preds = %56, %12
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @__ipsec_set_strerror(i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
