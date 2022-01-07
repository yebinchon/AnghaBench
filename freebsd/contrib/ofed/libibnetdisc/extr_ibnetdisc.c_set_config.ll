; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc.c_set_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc.c_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibnd_config = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@DEFAULT_MAX_SMP_ON_WIRE = common dso_local global i64 0, align 8
@DEFAULT_TIMEOUT = common dso_local global i64 0, align 8
@DEFAULT_RETRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibnd_config*, %struct.ibnd_config*)* @set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_config(%struct.ibnd_config* %0, %struct.ibnd_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibnd_config*, align 8
  %5 = alloca %struct.ibnd_config*, align 8
  store %struct.ibnd_config* %0, %struct.ibnd_config** %4, align 8
  store %struct.ibnd_config* %1, %struct.ibnd_config** %5, align 8
  %6 = load %struct.ibnd_config*, %struct.ibnd_config** %4, align 8
  %7 = icmp ne %struct.ibnd_config* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %46

11:                                               ; preds = %2
  %12 = load %struct.ibnd_config*, %struct.ibnd_config** %5, align 8
  %13 = icmp ne %struct.ibnd_config* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.ibnd_config*, %struct.ibnd_config** %4, align 8
  %16 = load %struct.ibnd_config*, %struct.ibnd_config** %5, align 8
  %17 = call i32 @memcpy(%struct.ibnd_config* %15, %struct.ibnd_config* %16, i32 24)
  br label %18

18:                                               ; preds = %14, %11
  %19 = load %struct.ibnd_config*, %struct.ibnd_config** %4, align 8
  %20 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* @DEFAULT_MAX_SMP_ON_WIRE, align 8
  %25 = load %struct.ibnd_config*, %struct.ibnd_config** %4, align 8
  %26 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.ibnd_config*, %struct.ibnd_config** %4, align 8
  %29 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* @DEFAULT_TIMEOUT, align 8
  %34 = load %struct.ibnd_config*, %struct.ibnd_config** %4, align 8
  %35 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.ibnd_config*, %struct.ibnd_config** %4, align 8
  %38 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i64, i64* @DEFAULT_RETRIES, align 8
  %43 = load %struct.ibnd_config*, %struct.ibnd_config** %4, align 8
  %44 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %36
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %8
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @memcpy(%struct.ibnd_config*, %struct.ibnd_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
