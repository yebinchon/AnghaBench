; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_sfp_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_sfp_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32 }
%struct.i2c_info = type { i32, i64, %struct.ifreq* }

@SFF_8472_BASE = common dso_local global i32 0, align 4
@SFF_8472_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfp_status(i32 %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_info, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @memset(%struct.i2c_info* %7, i32 0, i32 24)
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %7, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %7, i32 0, i32 2
  store %struct.ifreq* %12, %struct.ifreq** %13, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @SFF_8472_BASE, align 4
  %15 = load i32, i32* @SFF_8472_ID, align 4
  %16 = ptrtoint i32* %8 to i32
  %17 = call i32 @read_i2c(%struct.i2c_info* %7, i32 %14, i32 %15, i32 1, i32 %16)
  %18 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %7, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %3
  br label %33

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %30 [
    i32 130, label %27
    i32 128, label %27
    i32 129, label %27
  ]

27:                                               ; preds = %25, %25, %25
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @print_qsfp_status(%struct.i2c_info* %7, i32 %28)
  br label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @print_sfp_status(%struct.i2c_info* %7, i32 %31)
  br label %33

33:                                               ; preds = %24, %30, %27
  ret void
}

declare dso_local i32 @memset(%struct.i2c_info*, i32, i32) #1

declare dso_local i32 @read_i2c(%struct.i2c_info*, i32, i32, i32, i32) #1

declare dso_local i32 @print_qsfp_status(%struct.i2c_info*, i32) #1

declare dso_local i32 @print_sfp_status(%struct.i2c_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
