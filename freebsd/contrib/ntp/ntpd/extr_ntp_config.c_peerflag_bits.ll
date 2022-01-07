; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_peerflag_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_peerflag_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"peerflag_bits: option-token=%d\00", align 1
@FLAG_SKEY = common dso_local global i32 0, align 4
@FLAG_BURST = common dso_local global i32 0, align 4
@FLAG_IBURST = common dso_local global i32 0, align 4
@FLAG_NOSELECT = common dso_local global i32 0, align 4
@FLAG_PREEMPT = common dso_local global i32 0, align 4
@FLAG_PREFER = common dso_local global i32 0, align 4
@FLAG_TRUE = common dso_local global i32 0, align 4
@FLAG_XLEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @peerflag_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @peerflag_bits(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.TYPE_8__* @HEAD_PFIFO(i32 %7)
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %4, align 8
  br label %9

9:                                                ; preds = %56, %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %60

12:                                               ; preds = %9
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %17 [
    i32 135, label %23
    i32 134, label %27
    i32 133, label %31
    i32 132, label %35
    i32 131, label %39
    i32 130, label %43
    i32 129, label %47
    i32 128, label %51
  ]

17:                                               ; preds = %12
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @fatal_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %12, %17
  %24 = load i32, i32* @FLAG_SKEY, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %55

27:                                               ; preds = %12
  %28 = load i32, i32* @FLAG_BURST, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %55

31:                                               ; preds = %12
  %32 = load i32, i32* @FLAG_IBURST, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %55

35:                                               ; preds = %12
  %36 = load i32, i32* @FLAG_NOSELECT, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %55

39:                                               ; preds = %12
  %40 = load i32, i32* @FLAG_PREEMPT, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %55

43:                                               ; preds = %12
  %44 = load i32, i32* @FLAG_PREFER, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %55

47:                                               ; preds = %12
  %48 = load i32, i32* @FLAG_TRUE, align 4
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %55

51:                                               ; preds = %12
  %52 = load i32, i32* @FLAG_XLEAVE, align 4
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %47, %43, %39, %35, %31, %27, %23
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %4, align 8
  br label %9

60:                                               ; preds = %9
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_8__* @HEAD_PFIFO(i32) #1

declare dso_local i32 @fatal_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
