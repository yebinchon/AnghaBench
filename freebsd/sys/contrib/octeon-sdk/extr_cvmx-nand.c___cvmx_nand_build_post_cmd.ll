; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-nand.c___cvmx_nand_build_post_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-nand.c___cvmx_nand_build_post_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@CVMX_NDF_DRBELL = common dso_local global i32 0, align 4
@CVMX_NAND_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @__cvmx_nand_build_post_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__cvmx_nand_build_post_cmd() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = call i32 (...) @CVMX_NAND_LOG_CALLED()
  %5 = call i32 @memset(%struct.TYPE_8__* %3, i32 0, i32 8)
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 3, i32* %7, align 4
  %8 = bitcast %struct.TYPE_8__* %3 to i64*
  %9 = load i64, i64* %8, align 4
  %10 = call i64 @cvmx_nand_submit(i64 %9)
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i64, i64* %2, align 8
  %15 = call i32 @CVMX_NAND_RETURN(i64 %14)
  br label %16

16:                                               ; preds = %13, %0
  %17 = call i32 @memset(%struct.TYPE_8__* %3, i32 0, i32 8)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 15, i32* %19, align 4
  %20 = bitcast %struct.TYPE_8__* %3 to i64*
  %21 = load i64, i64* %20, align 4
  %22 = call i64 @cvmx_nand_submit(i64 %21)
  store i64 %22, i64* %2, align 8
  %23 = load i64, i64* %2, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i64, i64* %2, align 8
  %27 = call i32 @CVMX_NAND_RETURN(i64 %26)
  br label %28

28:                                               ; preds = %25, %16
  %29 = load i32, i32* @CVMX_NDF_DRBELL, align 4
  %30 = call i32 @cvmx_write_csr(i32 %29, i32 1)
  %31 = load i64, i64* @CVMX_NAND_SUCCESS, align 8
  %32 = call i32 @CVMX_NAND_RETURN(i64 %31)
  %33 = load i64, i64* %1, align 8
  ret i64 %33
}

declare dso_local i32 @CVMX_NAND_LOG_CALLED(...) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @cvmx_nand_submit(i64) #1

declare dso_local i32 @CVMX_NAND_RETURN(i64) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
