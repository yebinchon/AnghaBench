; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_FM_PORT_RemoveCongestionGrps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_FM_PORT_RemoveCongestionGrps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@FMAN_PORT_CG_MAP_NUM = common dso_local global i32 0, align 4
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@e_FM_PORT_TYPE_RX_10G = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_RX = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_OH_OFFLINE_PARSING = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Available for Rx & OP ports only\00", align 1
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"fman_port_remove_congestion_grps\00", align 1
@E_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FM_PORT_RemoveCongestionGrps(i64 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %5, align 8
  %14 = load i32, i32* @FMAN_PORT_CG_MAP_NUM, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = load i32, i32* @E_INVALID_HANDLE, align 4
  %20 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__* %18, i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @e_FM_PORT_TYPE_RX_10G, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @e_FM_PORT_TYPE_RX, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @e_FM_PORT_TYPE_OH_OFFLINE_PARSING, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @MAJOR, align 4
  %40 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %41 = call i32 @RETURN_ERROR(i32 %39, i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %32, %26, %2
  %43 = load i32, i32* @FMAN_PORT_CG_MAP_NUM, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memset(i64* %17, i32 0, i32 %46)
  store i64 0, i64* %8, align 8
  br label %48

48:                                               ; preds = %92, %42
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %95

54:                                               ; preds = %48
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 32
  store i32 %61, i32* %7, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = srem i32 %67, 32
  store i32 %68, i32* %6, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 4
  br i1 %73, label %74, label %84

74:                                               ; preds = %54
  %75 = load i32, i32* %6, align 4
  %76 = shl i32 1, %75
  %77 = sext i32 %76 to i64
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 7, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %17, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = or i64 %82, %77
  store i64 %83, i64* %81, align 8
  br label %91

84:                                               ; preds = %54
  %85 = load i32, i32* %6, align 4
  %86 = shl i32 1, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %17, i64 0
  %89 = load i64, i64* %88, align 16
  %90 = or i64 %89, %87
  store i64 %90, i64* %88, align 16
  br label %91

91:                                               ; preds = %84, %74
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %8, align 8
  br label %48

95:                                               ; preds = %48
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = call i32 @fman_port_remove_congestion_grps(i32* %97, i64* %17)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* @MAJOR, align 4
  %103 = load i32, i32* @E_INVALID_VALUE, align 4
  %104 = call i32 @RETURN_ERROR(i32 %102, i32 %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %105

105:                                              ; preds = %101, %95
  %106 = load i64, i64* @E_OK, align 8
  %107 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %107)
  ret i64 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @fman_port_remove_congestion_grps(i32*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
