; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-l2c.c_cvmx_l2c_config_perf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-l2c.c_cvmx_l2c_config_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_l2c_pfctl = type { i8*, [40 x i8] }
%union.cvmx_l2c_tadx_prf = type { i8*, [8 x i8] }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@OCTEON_CN5XXX = common dso_local global i32 0, align 4
@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@CVMX_L2C_PFCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"L2C performance counter events are different for this chip, mapping 'event' to cvmx_l2c_tad_event_t\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"L2C counters don't support clear on read for this chip\0A\00", align 1
@CVMX_L2C_TADS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_l2c_config_perf(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.cvmx_l2c_pfctl, align 8
  %8 = alloca %union.cvmx_l2c_tadx_prf, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @OCTEON_CN5XXX, align 4
  %11 = call i64 @OCTEON_IS_MODEL(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @OCTEON_CN3XXX, align 4
  %15 = call i64 @OCTEON_IS_MODEL(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %64

17:                                               ; preds = %13, %3
  %18 = load i32, i32* @CVMX_L2C_PFCTL, align 4
  %19 = call i8* @cvmx_read_csr(i32 %18)
  %20 = bitcast %union.cvmx_l2c_pfctl* %7 to i8**
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %50 [
    i32 0, label %22
    i32 1, label %31
    i32 2, label %40
    i32 3, label %49
  ]

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_3__*
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_3__*
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  br label %59

31:                                               ; preds = %17
  %32 = load i32, i32* %5, align 4
  %33 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_3__*
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  store i32 1, i32* %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_3__*
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  br label %59

40:                                               ; preds = %17
  %41 = load i32, i32* %5, align 4
  %42 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_3__*
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_3__*
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 7
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_3__*
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  br label %59

49:                                               ; preds = %17
  br label %50

50:                                               ; preds = %17, %49
  %51 = load i32, i32* %5, align 4
  %52 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_3__*
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 9
  store i32 %51, i32* %53, align 4
  %54 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_3__*
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 10
  store i32 1, i32* %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = bitcast %union.cvmx_l2c_pfctl* %7 to %struct.TYPE_3__*
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 11
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %50, %40, %31, %22
  %60 = load i32, i32* @CVMX_L2C_PFCTL, align 4
  %61 = bitcast %union.cvmx_l2c_pfctl* %7 to i8**
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @cvmx_write_csr(i32 %60, i8* %62)
  br label %104

64:                                               ; preds = %13
  %65 = call i32 @cvmx_warn(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @cvmx_warn_if(i32 %66, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 @CVMX_L2C_TADX_PRF(i32 0)
  %69 = call i8* @cvmx_read_csr(i32 %68)
  %70 = bitcast %union.cvmx_l2c_tadx_prf* %8 to i8**
  store i8* %69, i8** %70, align 8
  %71 = load i32, i32* %4, align 4
  switch i32 %71, label %84 [
    i32 0, label %72
    i32 1, label %76
    i32 2, label %80
    i32 3, label %85
  ]

72:                                               ; preds = %64
  %73 = load i32, i32* %5, align 4
  %74 = bitcast %union.cvmx_l2c_tadx_prf* %8 to %struct.TYPE_4__*
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %89

76:                                               ; preds = %64
  %77 = load i32, i32* %5, align 4
  %78 = bitcast %union.cvmx_l2c_tadx_prf* %8 to %struct.TYPE_4__*
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %89

80:                                               ; preds = %64
  %81 = load i32, i32* %5, align 4
  %82 = bitcast %union.cvmx_l2c_tadx_prf* %8 to %struct.TYPE_4__*
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  br label %89

84:                                               ; preds = %64
  br label %85

85:                                               ; preds = %64, %84
  %86 = load i32, i32* %5, align 4
  %87 = bitcast %union.cvmx_l2c_tadx_prf* %8 to %struct.TYPE_4__*
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %85, %80, %76, %72
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %100, %89
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @CVMX_L2C_TADS, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @CVMX_L2C_TADX_PRF(i32 %95)
  %97 = bitcast %union.cvmx_l2c_tadx_prf* %8 to i8**
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @cvmx_write_csr(i32 %96, i8* %98)
  br label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %90

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103, %59
  ret void
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @cvmx_warn(i8*) #1

declare dso_local i32 @cvmx_warn_if(i32, i8*) #1

declare dso_local i32 @CVMX_L2C_TADX_PRF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
