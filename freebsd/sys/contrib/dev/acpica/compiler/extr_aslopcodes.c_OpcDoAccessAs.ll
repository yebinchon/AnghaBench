; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslopcodes.c_OpcDoAccessAs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslopcodes.c_OpcDoAccessAs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i8*, %struct.TYPE_5__, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32 }

@AML_RAW_DATA_BYTE = common dso_local global i8* null, align 8
@PARSEOP_RAW_DATA = common dso_local global i8* null, align 8
@PARSEOP_DEFAULT_ARG = common dso_local global i64 0, align 8
@AML_FIELD_ATTRIB_BYTES = common dso_local global i64 0, align 8
@AML_FIELD_ATTRIB_RAW_BYTES = common dso_local global i64 0, align 8
@AML_FIELD_ATTRIB_RAW_PROCESS_BYTES = common dso_local global i64 0, align 8
@AML_FIELD_EXT_ACCESS_OP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @OpcDoAccessAs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OpcDoAccessAs(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %3, align 8
  %14 = load i8*, i8** @AML_RAW_DATA_BYTE, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i8* %14, i8** %17, align 8
  %18 = load i8*, i8** @PARSEOP_RAW_DATA, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i64 %19, i64* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %4, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PARSEOP_DEFAULT_ARG, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %33, %1
  %39 = load i8*, i8** @AML_RAW_DATA_BYTE, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i8* %39, i8** %42, align 8
  %43 = load i8*, i8** @PARSEOP_RAW_DATA, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i64 %44, i64* %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @AML_FIELD_ATTRIB_BYTES, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %38
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @AML_FIELD_ATTRIB_RAW_BYTES, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @AML_FIELD_ATTRIB_RAW_PROCESS_BYTES, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %100

66:                                               ; preds = %61, %57, %38
  %67 = load i8*, i8** @AML_FIELD_EXT_ACCESS_OP, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  store i8* %67, i8** %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %5, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = icmp ne %struct.TYPE_7__* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %66
  br label %100

78:                                               ; preds = %66
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PARSEOP_DEFAULT_ARG, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 16, i32* %89, align 8
  br label %90

90:                                               ; preds = %85, %78
  %91 = load i8*, i8** @AML_RAW_DATA_BYTE, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  store i8* %91, i8** %94, align 8
  %95 = load i8*, i8** @PARSEOP_RAW_DATA, align 8
  %96 = ptrtoint i8* %95 to i64
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i64 %96, i64* %99, align 8
  br label %100

100:                                              ; preds = %90, %77, %65
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
