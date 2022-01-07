; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig_media.c_ifconfig_media_get_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig_media.c_ifconfig_media_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmediareq = type { i32, i32 }

@IFM_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"no carrier\00", align 1
@IFM_IEEE80211_STA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"associated\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ifconfig_media_get_status(%struct.ifmediareq* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ifmediareq*, align 8
  store %struct.ifmediareq* %0, %struct.ifmediareq** %3, align 8
  %4 = load %struct.ifmediareq*, %struct.ifmediareq** %3, align 8
  %5 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @IFM_TYPE(i32 %6)
  switch i32 %7, label %34 [
    i32 129, label %8
    i32 130, label %8
    i32 128, label %17
  ]

8:                                                ; preds = %1, %1
  %9 = load %struct.ifmediareq*, %struct.ifmediareq** %3, align 8
  %10 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFM_ACTIVE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %35

16:                                               ; preds = %8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %35

17:                                               ; preds = %1
  %18 = load %struct.ifmediareq*, %struct.ifmediareq** %3, align 8
  %19 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFM_ACTIVE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.ifmediareq*, %struct.ifmediareq** %3, align 8
  %26 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IFM_OPMODE(i32 %27)
  %29 = load i32, i32* @IFM_IEEE80211_STA, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %35

32:                                               ; preds = %24
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %35

33:                                               ; preds = %17
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %35

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %35

35:                                               ; preds = %34, %33, %32, %31, %16, %15
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

declare dso_local i32 @IFM_TYPE(i32) #1

declare dso_local i32 @IFM_OPMODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
