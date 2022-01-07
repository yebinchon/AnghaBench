; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MACSEC/extr_fm_macsec_secy.c_FmMacsecSecYCreateSc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MACSEC/extr_fm_macsec_secy.c_FmMacsecSecYCreateSc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_16__*, i32, i32, i32, i32, %struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }

@E_OK = common dso_local global i32 0, align 4
@e_SC_RX = common dso_local global i64 0, align 8
@NUM_OF_RX_SC = common dso_local global i64 0, align 8
@NUM_OF_TX_SC = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"FM MACSEC SECY SC\00", align 1
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"FM MACSEC SECY RX SC\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"FM MACSEC SECY TX SC\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_16__*, i8*, i8*, i64)* @FmMacsecSecYCreateSc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @FmMacsecSecYCreateSc(%struct.TYPE_16__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__, align 8
  %16 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* @E_OK, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = call i32 @ASSERT_COND(%struct.TYPE_16__* %18)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = call i32 @ASSERT_COND(%struct.TYPE_16__* %22)
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @e_SC_RX, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %4
  %28 = call i32 @memset(%struct.TYPE_14__* %15, i32 0, i32 56)
  %29 = load i64, i64* @NUM_OF_RX_SC, align 8
  %30 = sub i64 %29, 1
  store i64 %30, i64* %13, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 11
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %10, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %12, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 3
  store i32 %39, i32* %40, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 9
  store i32 %43, i32* %44, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 7
  store i32 %51, i32* %52, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  store i8* %53, i8** %54, align 8
  %55 = bitcast %struct.TYPE_14__* %15 to i8*
  store i8* %55, i8** %11, align 8
  br label %85

56:                                               ; preds = %4
  %57 = call i32 @memset(%struct.TYPE_14__* %16, i32 0, i32 56)
  %58 = load i64, i64* @NUM_OF_TX_SC, align 8
  %59 = sub i64 %58, 1
  store i64 %59, i64* %13, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 7
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  store %struct.TYPE_15__* %62, %struct.TYPE_15__** %10, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %12, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 6
  store i32 %68, i32* %69, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 5
  store i32 %72, i32* %73, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 4
  store i32 %76, i32* %77, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 3
  store i32 %80, i32* %81, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  store i8* %82, i8** %83, align 8
  %84 = bitcast %struct.TYPE_14__* %16 to i8*
  store i8* %84, i8** %11, align 8
  br label %85

85:                                               ; preds = %56, %27
  store i64 0, i64* %13, align 8
  br label %86

86:                                               ; preds = %99, %85
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %92 = load i64, i64* %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  br label %102

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %13, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %13, align 8
  br label %86

102:                                              ; preds = %97, %86
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* %12, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* @MAJOR, align 4
  %108 = load i32, i32* @E_FULL, align 4
  %109 = call i32 @REPORT_ERROR(i32 %107, i32 %108, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %175

110:                                              ; preds = %102
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* @e_SC_RX, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %140

114:                                              ; preds = %110
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %116 = load i64, i64* %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = bitcast i8* %120 to %struct.TYPE_14__*
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = bitcast i8* %124 to %struct.TYPE_14__*
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  store i8* %123, i8** %126, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = bitcast i8* %130 to %struct.TYPE_14__*
  %132 = call i32 @FmMacsecCreateRxSc(%struct.TYPE_16__* %129, %struct.TYPE_14__* %131)
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* @E_OK, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %114
  %136 = load i32, i32* @MAJOR, align 4
  %137 = load i32, i32* @E_NO_MEMORY, align 4
  %138 = call i32 @REPORT_ERROR(i32 %136, i32 %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %175

139:                                              ; preds = %114
  br label %166

140:                                              ; preds = %110
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %142 = load i64, i64* %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i8*, i8** %11, align 8
  %147 = bitcast i8* %146 to %struct.TYPE_14__*
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = load i8*, i8** %11, align 8
  %151 = bitcast i8* %150 to %struct.TYPE_14__*
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  store i8* %149, i8** %152, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  %156 = load i8*, i8** %11, align 8
  %157 = bitcast i8* %156 to %struct.TYPE_14__*
  %158 = call i32 @FmMacsecCreateTxSc(%struct.TYPE_16__* %155, %struct.TYPE_14__* %157)
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* @E_OK, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %140
  %162 = load i32, i32* @MAJOR, align 4
  %163 = load i32, i32* @E_NO_MEMORY, align 4
  %164 = call i32 @REPORT_ERROR(i32 %162, i32 %163, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %175

165:                                              ; preds = %140
  br label %166

166:                                              ; preds = %165, %139
  %167 = load i64, i64* @TRUE, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %169 = load i64, i64* %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  store i64 %167, i64* %171, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %173 = load i64, i64* %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i64 %173
  store %struct.TYPE_15__* %174, %struct.TYPE_15__** %5, align 8
  br label %175

175:                                              ; preds = %166, %161, %135, %106
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  ret %struct.TYPE_15__* %176
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_16__*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @FmMacsecCreateRxSc(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @FmMacsecCreateTxSc(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
