; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_print_dev_semb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_print_dev_semb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_match_result = type { i32 }
%struct.sep_identify_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"<%s %s %s %s>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_match_result*, i8*)* @print_dev_semb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_dev_semb(%struct.device_match_result* %0, i8* %1) #0 {
  %3 = alloca %struct.device_match_result*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sep_identify_data*, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca [48 x i8], align 16
  %8 = alloca [16 x i8], align 16
  %9 = alloca [5 x i8], align 1
  store %struct.device_match_result* %0, %struct.device_match_result** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.device_match_result*, %struct.device_match_result** %3, align 8
  %11 = getelementptr inbounds %struct.device_match_result, %struct.device_match_result* %10, i32 0, i32 0
  %12 = bitcast i32* %11 to %struct.sep_identify_data*
  store %struct.sep_identify_data* %12, %struct.sep_identify_data** %5, align 8
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %14 = load %struct.sep_identify_data*, %struct.sep_identify_data** %5, align 8
  %15 = getelementptr inbounds %struct.sep_identify_data, %struct.sep_identify_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cam_strvis(i8* %13, i32 %16, i32 4, i32 16)
  %18 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  %19 = load %struct.sep_identify_data*, %struct.sep_identify_data** %5, align 8
  %20 = getelementptr inbounds %struct.sep_identify_data, %struct.sep_identify_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cam_strvis(i8* %18, i32 %21, i32 4, i32 48)
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %24 = load %struct.sep_identify_data*, %struct.sep_identify_data** %5, align 8
  %25 = getelementptr inbounds %struct.sep_identify_data, %struct.sep_identify_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cam_strvis(i8* %23, i32 %26, i32 4, i32 16)
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %29 = load %struct.sep_identify_data*, %struct.sep_identify_data** %5, align 8
  %30 = getelementptr inbounds %struct.sep_identify_data, %struct.sep_identify_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cam_strvis(i8* %28, i32 %31, i32 4, i32 5)
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %35 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %38 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %35, i8* %36, i8* %37)
  ret i32 0
}

declare dso_local i32 @cam_strvis(i8*, i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
