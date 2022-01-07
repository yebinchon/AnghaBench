; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_print_dev_ata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_print_dev_ata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_match_result = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"<%s %s>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_match_result*, i8*)* @print_dev_ata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_dev_ata(%struct.device_match_result* %0, i8* %1) #0 {
  %3 = alloca %struct.device_match_result*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [48 x i8], align 16
  %6 = alloca [16 x i8], align 16
  store %struct.device_match_result* %0, %struct.device_match_result** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = getelementptr inbounds [48 x i8], [48 x i8]* %5, i64 0, i64 0
  %8 = load %struct.device_match_result*, %struct.device_match_result** %3, align 8
  %9 = getelementptr inbounds %struct.device_match_result, %struct.device_match_result* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cam_strvis(i8* %7, i32 %11, i32 4, i32 48)
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %14 = load %struct.device_match_result*, %struct.device_match_result** %3, align 8
  %15 = getelementptr inbounds %struct.device_match_result, %struct.device_match_result* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cam_strvis(i8* %13, i32 %17, i32 4, i32 16)
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds [48 x i8], [48 x i8]* %5, i64 0, i64 0
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %22 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %21)
  ret i32 0
}

declare dso_local i32 @cam_strvis(i8*, i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
