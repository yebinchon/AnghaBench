; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pip.h_cvmx_pip_get_bsel_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pip.h_cvmx_pip_get_bsel_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { i64 }

@OCTEON_FEATURE_BIT_EXTRACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @cvmx_pip_get_bsel_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_pip_get_bsel_tag(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @cvmx_pip_get_bsel_table_index(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @cvmx_wqe_get_port(i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 3
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* @OCTEON_FEATURE_BIT_EXTRACTOR, align 4
  %18 = call i32 @octeon_has_feature(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %56

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @CVMX_PIP_BSEL_TBL_ENTX(i32 %22)
  %24 = call i8* @cvmx_read_csr(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @CVMX_PIP_BSEL_EXT_CFGX(i32 %26)
  %28 = call i8* @cvmx_read_csr(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @CVMX_PIP_PRT_TAGX(i32 %30)
  %32 = call i8* @cvmx_read_csr(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %21
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %21
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 8
  %50 = and i32 %49, 65280
  %51 = or i32 %45, %50
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 %52, 16
  %54 = and i32 %53, -65536
  %55 = or i32 %51, %54
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %42, %20
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @cvmx_pip_get_bsel_table_index(i32*) #1

declare dso_local i32 @cvmx_wqe_get_port(i32*) #1

declare dso_local i32 @octeon_has_feature(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_PIP_BSEL_TBL_ENTX(i32) #1

declare dso_local i32 @CVMX_PIP_BSEL_EXT_CFGX(i32) #1

declare dso_local i32 @CVMX_PIP_PRT_TAGX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
