; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_decode_traffic_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_decode_traffic_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_xtraffic = type { i32, i32, i32, i32 }
%struct.uni_msg = type { i32* }

@UNI_TRAFFIC_BEST_P = common dso_local global i64 0, align 8
@UNI_TRAFFIC_MOPT_P = common dso_local global i64 0, align 8
@UNI_TRAFFIC_FTAG = common dso_local global i32 0, align 4
@UNI_TRAFFIC_BTAG = common dso_local global i32 0, align 4
@UNI_TRAFFIC_FDISC = common dso_local global i32 0, align 4
@UNI_TRAFFIC_BDISC = common dso_local global i32 0, align 4
@TRAFFIC_BABR1 = common dso_local global i32 0, align 4
@TRAFFIC_BMBS0 = common dso_local global i32 0, align 4
@TRAFFIC_BMBS1 = common dso_local global i32 0, align 4
@TRAFFIC_BPCR0 = common dso_local global i32 0, align 4
@TRAFFIC_BPCR1 = common dso_local global i32 0, align 4
@TRAFFIC_BSCR0 = common dso_local global i32 0, align 4
@TRAFFIC_BSCR1 = common dso_local global i32 0, align 4
@TRAFFIC_FABR1 = common dso_local global i32 0, align 4
@TRAFFIC_FMBS0 = common dso_local global i32 0, align 4
@TRAFFIC_FPCR0 = common dso_local global i32 0, align 4
@TRAFFIC_FPCR1 = common dso_local global i32 0, align 4
@TRAFFIC_FSCR0 = common dso_local global i32 0, align 4
@TRAFFIC_FSCR1 = common dso_local global i32 0, align 4
@babr1 = common dso_local global i32 0, align 4
@bmbs0 = common dso_local global i32 0, align 4
@bmbs1 = common dso_local global i32 0, align 4
@bpcr0 = common dso_local global i32 0, align 4
@bpcr1 = common dso_local global i32 0, align 4
@bscr0 = common dso_local global i32 0, align 4
@bscr1 = common dso_local global i32 0, align 4
@fabr1 = common dso_local global i32 0, align 4
@fmbs0 = common dso_local global i32 0, align 4
@fpcr0 = common dso_local global i32 0, align 4
@fpcr1 = common dso_local global i32 0, align 4
@fscr0 = common dso_local global i32 0, align 4
@fscr1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_xtraffic*, %struct.uni_msg*, i64, i64*)* @decode_traffic_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_traffic_common(%struct.uni_xtraffic* %0, %struct.uni_msg* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uni_xtraffic*, align 8
  %7 = alloca %struct.uni_msg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.uni_xtraffic* %0, %struct.uni_xtraffic** %6, align 8
  store %struct.uni_msg* %1, %struct.uni_msg** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  br label %11

11:                                               ; preds = %94, %4
  %12 = load i64, i64* %8, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %8, align 8
  %14 = icmp ne i64 %12, 0
  br i1 %14, label %15, label %95

15:                                               ; preds = %11
  %16 = load %struct.uni_msg*, %struct.uni_msg** %7, align 8
  %17 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %17, align 8
  %20 = load i32, i32* %18, align 4
  store i32 %20, i32* %10, align 4
  switch i32 %20, label %21 [
    i32 129, label %23
    i32 128, label %28
  ]

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %96

23:                                               ; preds = %15
  %24 = load i64, i64* @UNI_TRAFFIC_BEST_P, align 8
  %25 = load i64*, i64** %9, align 8
  %26 = load i64, i64* %25, align 8
  %27 = or i64 %26, %24
  store i64 %27, i64* %25, align 8
  br label %94

28:                                               ; preds = %15
  %29 = load i64, i64* %8, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 -1, i32* %5, align 4
  br label %96

32:                                               ; preds = %28
  %33 = load i64, i64* %8, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %8, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UNI_TRAFFIC_MOPT_P, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %89, label %40

40:                                               ; preds = %32
  %41 = load i64, i64* @UNI_TRAFFIC_MOPT_P, align 8
  %42 = load i64*, i64** %9, align 8
  %43 = load i64, i64* %42, align 8
  %44 = or i64 %43, %41
  store i64 %44, i64* %42, align 8
  %45 = load %struct.uni_msg*, %struct.uni_msg** %7, align 8
  %46 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @UNI_TRAFFIC_FTAG, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %55 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.uni_msg*, %struct.uni_msg** %7, align 8
  %57 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @UNI_TRAFFIC_BTAG, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  %65 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %66 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.uni_msg*, %struct.uni_msg** %7, align 8
  %68 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @UNI_TRAFFIC_FDISC, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  %76 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %77 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.uni_msg*, %struct.uni_msg** %7, align 8
  %79 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @UNI_TRAFFIC_BDISC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 1, i32 0
  %87 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %88 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %40, %32
  %90 = load %struct.uni_msg*, %struct.uni_msg** %7, align 8
  %91 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %91, align 8
  br label %94

94:                                               ; preds = %89, %23
  br label %11

95:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %31, %22
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
