; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_CreateManipActionShadow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_CreateManipActionShadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, i64*, i64*, %struct.TYPE_17__*, %struct.TYPE_16__, %struct.TYPE_17__*, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { i64* }

@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [83 x i8] c"New Hdr Manip configuration requires larger size than current one (command table).\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"New Hdr Manip configuration requires larger size than current one (data).\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"New Hdr Manip configuration can not contain h_NextManip.\00", align 1
@.str.3 = private unnamed_addr constant [96 x i8] c"New Hdr Manip configuration in a chained manipulation requires different size than current one.\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"New Hdr Manip configuration differs in dontParseAfterManip value.\00", align 1
@FALSE = common dso_local global i32 0, align 4
@e_MANIP_HMCT = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @CreateManipActionShadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CreateManipActionShadow(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  store i64* null, i64** %8, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %10, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %12, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = call i64 @CalculateTableSize(%struct.TYPE_16__* %18, i64* %9, i64* %7)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @MINOR, align 4
  %24 = load i64, i64* %11, align 8
  %25 = load i8*, i8** @NO_MSG, align 8
  %26 = call i32 @RETURN_ERROR(i32 %23, i64 %24, i8* %25)
  br label %27

27:                                               ; preds = %22, %2
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* @MINOR, align 4
  %35 = load i64, i64* @E_INVALID_VALUE, align 8
  %36 = call i32 @RETURN_ERROR(i32 %34, i64 %35, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @MINOR, align 4
  %45 = load i64, i64* @E_INVALID_VALUE, align 8
  %46 = call i32 @RETURN_ERROR(i32 %44, i64 %45, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @MINOR, align 4
  %54 = load i64, i64* @E_INVALID_VALUE, align 8
  %55 = call i32 @RETURN_ERROR(i32 %53, i64 %54, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = call i64 @MANIP_IS_UNIFIED(%struct.TYPE_17__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* @MINOR, align 4
  %68 = load i64, i64* @E_INVALID_VALUE, align 8
  %69 = call i32 @RETURN_ERROR(i32 %67, i64 %68, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %60, %56
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %73, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %70
  %81 = load i32, i32* @MINOR, align 4
  %82 = load i64, i64* @E_INVALID_VALUE, align 8
  %83 = call i32 @RETURN_ERROR(i32 %81, i64 %82, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  br label %84

84:                                               ; preds = %80, %70
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %92 = call i64 @MANIP_IS_UNIFIED(%struct.TYPE_17__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %126, label %94

94:                                               ; preds = %84
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = call i64 @PTR_MOVE(i64* %97, i32 16)
  %99 = inttoptr i64 %98 to i64*
  store i64* %99, i64** %6, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 3
  %102 = load i64*, i64** %101, align 8
  %103 = icmp ne i64* %102, null
  br i1 %103, label %104, label %117

104:                                              ; preds = %94
  %105 = load i64*, i64** %6, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 3
  %108 = load i64*, i64** %107, align 8
  %109 = call i32 @PTR_TO_UINT(i64* %108)
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 4
  %112 = load i64*, i64** %111, align 8
  %113 = call i32 @PTR_TO_UINT(i64* %112)
  %114 = sub nsw i32 %109, %113
  %115 = call i64 @PTR_MOVE(i64* %105, i32 %114)
  %116 = inttoptr i64 %115 to i64*
  store i64* %116, i64** %8, align 8
  br label %117

117:                                              ; preds = %104, %94
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %120 = load i64*, i64** %6, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 3
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* @FALSE, align 4
  %125 = call i32 @BuildHmct(%struct.TYPE_17__* %118, %struct.TYPE_16__* %119, i64* %120, i64* %123, i32 %124)
  br label %189

126:                                              ; preds = %84
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %128 = load i32, i32* @e_MANIP_HMCT, align 4
  %129 = call i64 @GetManipInfo(%struct.TYPE_17__* %127, i32 %128)
  %130 = inttoptr i64 %129 to i64*
  store i64* %130, i64** %5, align 8
  %131 = load i64*, i64** %5, align 8
  %132 = call i32 @ASSERT_COND(i64* %131)
  br label %133

133:                                              ; preds = %137, %126
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %135 = call i64 @MANIP_IS_UNIFIED_NON_LAST(%struct.TYPE_17__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 7
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %139, align 8
  store %struct.TYPE_17__* %140, %struct.TYPE_17__** %12, align 8
  br label %133

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %177, %141
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %144 = icmp ne %struct.TYPE_17__* %143, null
  br i1 %144, label %145, label %188

145:                                              ; preds = %142
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 4
  %151 = load i64*, i64** %150, align 8
  %152 = call i32 @PTR_TO_UINT(i64* %151)
  %153 = add nsw i32 16, %152
  %154 = load i64*, i64** %5, align 8
  %155 = call i32 @PTR_TO_UINT(i64* %154)
  %156 = sub nsw i32 %153, %155
  %157 = call i64 @PTR_MOVE(i64* %148, i32 %156)
  %158 = inttoptr i64 %157 to i64*
  store i64* %158, i64** %6, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 3
  %161 = load i64*, i64** %160, align 8
  %162 = icmp ne i64* %161, null
  br i1 %162, label %163, label %177

163:                                              ; preds = %145
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i64*, i64** %165, align 8
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 3
  %169 = load i64*, i64** %168, align 8
  %170 = call i32 @PTR_TO_UINT(i64* %169)
  %171 = add nsw i32 16, %170
  %172 = load i64*, i64** %5, align 8
  %173 = call i32 @PTR_TO_UINT(i64* %172)
  %174 = sub nsw i32 %171, %173
  %175 = call i64 @PTR_MOVE(i64* %166, i32 %174)
  %176 = inttoptr i64 %175 to i64*
  store i64* %176, i64** %8, align 8
  br label %177

177:                                              ; preds = %163, %145
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 6
  %181 = load i64*, i64** %6, align 8
  %182 = load i64*, i64** %8, align 8
  %183 = load i32, i32* @FALSE, align 4
  %184 = call i32 @BuildHmct(%struct.TYPE_17__* %178, %struct.TYPE_16__* %180, i64* %181, i64* %182, i32 %183)
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 5
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %186, align 8
  store %struct.TYPE_17__* %187, %struct.TYPE_17__** %12, align 8
  br label %142

188:                                              ; preds = %142
  br label %189

189:                                              ; preds = %188, %117
  %190 = load i64, i64* @E_OK, align 8
  ret i64 %190
}

declare dso_local i64 @CalculateTableSize(%struct.TYPE_16__*, i64*, i64*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i64 @MANIP_IS_UNIFIED(%struct.TYPE_17__*) #1

declare dso_local i64 @PTR_MOVE(i64*, i32) #1

declare dso_local i32 @PTR_TO_UINT(i64*) #1

declare dso_local i32 @BuildHmct(%struct.TYPE_17__*, %struct.TYPE_16__*, i64*, i64*, i32) #1

declare dso_local i64 @GetManipInfo(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ASSERT_COND(i64*) #1

declare dso_local i64 @MANIP_IS_UNIFIED_NON_LAST(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
