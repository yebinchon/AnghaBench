; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_print_sfp_vendor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_print_sfp_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_info = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"vendor: %s PN: %s SN: %s DATE: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_info*, i8*, i64)* @print_sfp_vendor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sfp_vendor(%struct.i2c_info* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.i2c_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [80 x i8], align 16
  store %struct.i2c_info* %0, %struct.i2c_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %9 = call i32 @memset(i8* %8, i32 0, i32 80)
  %10 = load %struct.i2c_info*, %struct.i2c_info** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load %struct.i2c_info*, %struct.i2c_info** %4, align 8
  %16 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %17 = call i32 @get_qsfp_vendor_name(%struct.i2c_info* %15, i8* %16, i32 20)
  %18 = load %struct.i2c_info*, %struct.i2c_info** %4, align 8
  %19 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 20
  %20 = call i32 @get_qsfp_vendor_pn(%struct.i2c_info* %18, i8* %19, i32 20)
  %21 = load %struct.i2c_info*, %struct.i2c_info** %4, align 8
  %22 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 40
  %23 = call i32 @get_qsfp_vendor_sn(%struct.i2c_info* %21, i8* %22, i32 20)
  %24 = load %struct.i2c_info*, %struct.i2c_info** %4, align 8
  %25 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 60
  %26 = call i32 @get_qsfp_vendor_date(%struct.i2c_info* %24, i8* %25, i32 20)
  br label %40

27:                                               ; preds = %3
  %28 = load %struct.i2c_info*, %struct.i2c_info** %4, align 8
  %29 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %30 = call i32 @get_sfp_vendor_name(%struct.i2c_info* %28, i8* %29, i32 20)
  %31 = load %struct.i2c_info*, %struct.i2c_info** %4, align 8
  %32 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 20
  %33 = call i32 @get_sfp_vendor_pn(%struct.i2c_info* %31, i8* %32, i32 20)
  %34 = load %struct.i2c_info*, %struct.i2c_info** %4, align 8
  %35 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 40
  %36 = call i32 @get_sfp_vendor_sn(%struct.i2c_info* %34, i8* %35, i32 20)
  %37 = load %struct.i2c_info*, %struct.i2c_info** %4, align 8
  %38 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 60
  %39 = call i32 @get_sfp_vendor_date(%struct.i2c_info* %37, i8* %38, i32 20)
  br label %40

40:                                               ; preds = %27, %14
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %44 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 20
  %45 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 40
  %46 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 60
  %47 = call i32 @snprintf(i8* %41, i64 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %44, i8* %45, i8* %46)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @get_qsfp_vendor_name(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_qsfp_vendor_pn(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_qsfp_vendor_sn(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_qsfp_vendor_date(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_sfp_vendor_name(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_sfp_vendor_pn(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_sfp_vendor_sn(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_sfp_vendor_date(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
