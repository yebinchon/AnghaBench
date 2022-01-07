; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_peer_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_peer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32 }

@MDF_MCAST = common dso_local global i32 0, align 4
@MDF_BCAST = common dso_local global i32 0, align 4
@MDF_POOL = common dso_local global i32 0, align 4
@MDF_ACAST = common dso_local global i32 0, align 4
@MDF_UCAST = common dso_local global i32 0, align 4
@FLAG_CONFIG = common dso_local global i32 0, align 4
@mode_ntpdate = common dso_local global i64 0, align 8
@FLAG_IBURST = common dso_local global i32 0, align 4
@FLAG_PREEMPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.peer* @peer_config(i32* %0, i8* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i8* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i8* %1, i8** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i8* %11, i8** %24, align 8
  %26 = load i32, i32* %17, align 4
  switch i32 %26, label %55 [
    i32 129, label %27
    i32 128, label %36
  ]

27:                                               ; preds = %12
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @IS_MCAST(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @MDF_MCAST, align 4
  store i32 %32, i32* %25, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @MDF_BCAST, align 4
  store i32 %34, i32* %25, align 4
  br label %35

35:                                               ; preds = %33, %31
  br label %57

36:                                               ; preds = %12
  %37 = load i8*, i8** %14, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @SOCK_UNSPEC(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @MDF_POOL, align 4
  store i32 %44, i32* %25, align 4
  br label %54

45:                                               ; preds = %39, %36
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @IS_MCAST(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @MDF_ACAST, align 4
  store i32 %50, i32* %25, align 4
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @MDF_UCAST, align 4
  store i32 %52, i32* %25, align 4
  br label %53

53:                                               ; preds = %51, %49
  br label %54

54:                                               ; preds = %53, %43
  br label %57

55:                                               ; preds = %12
  %56 = load i32, i32* @MDF_UCAST, align 4
  store i32 %56, i32* %25, align 4
  br label %57

57:                                               ; preds = %55, %54, %35
  %58 = load i32, i32* @FLAG_CONFIG, align 4
  %59 = load i32, i32* %21, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %21, align 4
  %61 = load i64, i64* @mode_ntpdate, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @FLAG_IBURST, align 4
  %65 = load i32, i32* %21, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %21, align 4
  br label %67

67:                                               ; preds = %63, %57
  %68 = load i32, i32* @MDF_ACAST, align 4
  %69 = load i32, i32* @MDF_POOL, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %25, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i32, i32* @FLAG_PREEMPT, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %21, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %21, align 4
  br label %79

79:                                               ; preds = %74, %67
  %80 = load i32*, i32** %13, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* %25, align 4
  %90 = load i32, i32* %22, align 4
  %91 = load i32, i32* %23, align 4
  %92 = load i8*, i8** %24, align 8
  %93 = call %struct.peer* @newpeer(i32* %80, i8* %81, i32* %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i8* %92)
  ret %struct.peer* %93
}

declare dso_local i32 @IS_MCAST(i32*) #1

declare dso_local i32 @SOCK_UNSPEC(i32*) #1

declare dso_local %struct.peer* @newpeer(i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
