; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifmedia.c_setmediamode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifmedia.c_setmediamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.afswtch = type { i32 }
%struct.ifmediareq = type { i32, i32* }

@ifr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@name = common dso_local global i32 0, align 4
@IFM_MMASK = common dso_local global i32 0, align 4
@setifmediacallback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @setmediamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setmediamode(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  %9 = alloca %struct.ifmediareq*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.ifmediareq* @ifmedia_getstate(i32 %11)
  store %struct.ifmediareq* %12, %struct.ifmediareq** %9, align 8
  %13 = load %struct.ifmediareq*, %struct.ifmediareq** %9, align 8
  %14 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IFM_TYPE(i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @get_media_mode(i32 %18, i8* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ifr, i32 0, i32 1), align 4
  %22 = load i32, i32* @name, align 4
  %23 = call i32 @strlcpy(i32 %21, i32 %22, i32 4)
  %24 = load %struct.ifmediareq*, %struct.ifmediareq** %9, align 8
  %25 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IFM_MMASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ifr, i32 0, i32 0), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ifr, i32 0, i32 0), align 4
  %33 = load %struct.ifmediareq*, %struct.ifmediareq** %9, align 8
  %34 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @setifmediacallback, align 4
  %36 = load %struct.ifmediareq*, %struct.ifmediareq** %9, align 8
  %37 = bitcast %struct.ifmediareq* %36 to i8*
  %38 = call i32 @callback_register(i32 %35, i8* %37)
  ret void
}

declare dso_local %struct.ifmediareq* @ifmedia_getstate(i32) #1

declare dso_local i32 @get_media_mode(i32, i8*) #1

declare dso_local i32 @IFM_TYPE(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @callback_register(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
