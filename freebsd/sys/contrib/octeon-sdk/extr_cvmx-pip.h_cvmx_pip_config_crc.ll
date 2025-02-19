; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pip.h_cvmx_pip_config_crc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pip.h_cvmx_pip_config_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@OCTEON_CN38XX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32)* @cvmx_pip_config_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_pip_config_crc(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @OCTEON_CN38XX, align 4
  %12 = call i64 @OCTEON_IS_MODEL(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @OCTEON_CN58XX, align 4
  %16 = call i64 @OCTEON_IS_MODEL(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %14, %4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @CVMX_PIP_CRC_CTLX(i8* %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @cvmx_write_csr(i32 %27, i64 %29)
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @CVMX_PIP_CRC_IVX(i8* %35)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @cvmx_write_csr(i32 %36, i64 %38)
  br label %40

40:                                               ; preds = %18, %14
  ret void
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_PIP_CRC_CTLX(i8*) #1

declare dso_local i32 @CVMX_PIP_CRC_IVX(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
