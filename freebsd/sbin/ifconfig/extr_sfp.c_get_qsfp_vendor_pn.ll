; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_get_qsfp_vendor_pn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_get_qsfp_vendor_pn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_info = type { i32 }

@SFF_8436_BASE = common dso_local global i32 0, align 4
@SFF_8436_PN_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_info*, i8*, i64)* @get_qsfp_vendor_pn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_qsfp_vendor_pn(%struct.i2c_info* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.i2c_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [17 x i8], align 16
  store %struct.i2c_info* %0, %struct.i2c_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = getelementptr inbounds [17 x i8], [17 x i8]* %7, i64 0, i64 0
  %9 = call i32 @memset(i8* %8, i32 0, i32 17)
  %10 = load %struct.i2c_info*, %struct.i2c_info** %4, align 8
  %11 = load i32, i32* @SFF_8436_BASE, align 4
  %12 = load i32, i32* @SFF_8436_PN_START, align 4
  %13 = getelementptr inbounds [17 x i8], [17 x i8]* %7, i64 0, i64 0
  %14 = bitcast i8* %13 to i32*
  %15 = call i32 @read_i2c(%struct.i2c_info* %10, i32 %11, i32 %12, i32 16, i32* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds [17 x i8], [17 x i8]* %7, i64 0, i64 0
  %19 = call i32 @convert_sff_name(i8* %16, i64 %17, i8* %18)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @read_i2c(%struct.i2c_info*, i32, i32, i32, i32*) #1

declare dso_local i32 @convert_sff_name(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
