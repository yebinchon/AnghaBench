; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utdelete.c_AcpiUtUpdateObjectReference.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utdelete.c_AcpiUtUpdateObjectReference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_32__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_22__*, %struct.TYPE_22__* }
%struct.TYPE_30__ = type { %struct.TYPE_22__*, %struct.TYPE_22__* }
%struct.TYPE_29__ = type { %struct.TYPE_22__* }
%struct.TYPE_28__ = type { %struct.TYPE_22__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i64, %struct.TYPE_22__** }
%struct.TYPE_25__ = type { %struct.TYPE_22__** }
%struct.TYPE_24__ = type { %struct.TYPE_22__** }
%struct.TYPE_23__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }

@AE_OK = common dso_local global i32 0, align 4
@UtUpdateObjectReference = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@ACPI_DB_ALLOCATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Object %p is NS handle\0A\00", align 1
@ACPI_NUM_NOTIFY_TYPES = common dso_local global i64 0, align 8
@ACPI_REFCLASS_INDEX = common dso_local global i32 0, align 4
@ACPI_REFCLASS_NAME = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not update object reference count\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiUtUpdateObjectReference(%struct.TYPE_22__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @AE_OK, align 4
  store i32 %12, i32* %6, align 4
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %8, align 8
  %13 = load i32, i32* @UtUpdateObjectReference, align 4
  %14 = call i32 @ACPI_FUNCTION_NAME(i32 %13)
  br label %15

15:                                               ; preds = %193, %2
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %17 = icmp ne %struct.TYPE_22__* %16, null
  br i1 %17, label %18, label %194

18:                                               ; preds = %15
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %20 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_22__* %19)
  %21 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %26 = ptrtoint %struct.TYPE_22__* %25 to i32
  %27 = call i32 @ACPI_DEBUG_PRINT(i32 %26)
  %28 = load i32, i32* @AE_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %209

29:                                               ; preds = %18
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %172 [
    i32 139, label %34
    i32 131, label %34
    i32 132, label %34
    i32 128, label %34
    i32 133, label %67
    i32 140, label %109
    i32 134, label %114
    i32 137, label %119
    i32 136, label %135
    i32 135, label %151
    i32 130, label %171
  ]

34:                                               ; preds = %29, %29, %29, %29
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %63, %34
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @ACPI_NUM_NOTIFY_TYPES, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %43, i64 %44
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %45, align 8
  store %struct.TYPE_22__* %46, %struct.TYPE_22__** %9, align 8
  br label %47

47:                                               ; preds = %50, %39
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %49 = icmp ne %struct.TYPE_22__* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %54, i64 %55
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %56, align 8
  store %struct.TYPE_22__* %57, %struct.TYPE_22__** %8, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @AcpiUtUpdateRefCount(%struct.TYPE_22__* %58, i32 %59)
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %61, %struct.TYPE_22__** %9, align 8
  br label %47

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %11, align 8
  br label %35

66:                                               ; preds = %35
  br label %173

67:                                               ; preds = %29
  store i64 0, i64* %11, align 8
  br label %68

68:                                               ; preds = %105, %67
  %69 = load i64, i64* %11, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %69, %73
  br i1 %74, label %75, label %108

75:                                               ; preds = %68
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %79, i64 %80
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  store %struct.TYPE_22__* %82, %struct.TYPE_22__** %8, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %84 = icmp ne %struct.TYPE_22__* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %75
  br label %105

86:                                               ; preds = %75
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %95 [
    i32 138, label %91
    i32 129, label %91
    i32 141, label %91
  ]

91:                                               ; preds = %86, %86, %86
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @AcpiUtUpdateRefCount(%struct.TYPE_22__* %92, i32 %93)
  br label %104

95:                                               ; preds = %86
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @AcpiUtCreateUpdateStateAndPush(%struct.TYPE_22__* %96, i32 %97, %struct.TYPE_23__** %7)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @ACPI_FAILURE(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %196

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %91
  br label %105

105:                                              ; preds = %104, %85
  %106 = load i64, i64* %11, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %11, align 8
  br label %68

108:                                              ; preds = %68
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %8, align 8
  br label %173

109:                                              ; preds = %29
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %112, align 8
  store %struct.TYPE_22__* %113, %struct.TYPE_22__** %8, align 8
  br label %173

114:                                              ; preds = %29
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %117, align 8
  store %struct.TYPE_22__* %118, %struct.TYPE_22__** %8, align 8
  br label %173

119:                                              ; preds = %29
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %122, align 8
  store %struct.TYPE_22__* %123, %struct.TYPE_22__** %8, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @AcpiUtCreateUpdateStateAndPush(%struct.TYPE_22__* %127, i32 %128, %struct.TYPE_23__** %7)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @ACPI_FAILURE(i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %119
  br label %196

134:                                              ; preds = %119
  br label %173

135:                                              ; preds = %29
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %138, align 8
  store %struct.TYPE_22__* %139, %struct.TYPE_22__** %8, align 8
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @AcpiUtCreateUpdateStateAndPush(%struct.TYPE_22__* %143, i32 %144, %struct.TYPE_23__** %7)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @ACPI_FAILURE(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %135
  br label %196

150:                                              ; preds = %135
  br label %173

151:                                              ; preds = %29
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @ACPI_REFCLASS_INDEX, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %165, label %158

158:                                              ; preds = %151
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @ACPI_REFCLASS_NAME, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %158, %151
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %168, align 8
  store %struct.TYPE_22__* %169, %struct.TYPE_22__** %8, align 8
  br label %170

170:                                              ; preds = %165, %158
  br label %173

171:                                              ; preds = %29
  br label %172

172:                                              ; preds = %29, %171
  br label %173

173:                                              ; preds = %172, %170, %150, %134, %114, %109, %108, %66
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @AcpiUtUpdateRefCount(%struct.TYPE_22__* %174, i32 %175)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %178 = icmp ne %struct.TYPE_22__* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %180, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %8, align 8
  br label %193

181:                                              ; preds = %173
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %183 = icmp ne %struct.TYPE_23__* %182, null
  br i1 %183, label %184, label %192

184:                                              ; preds = %181
  %185 = call %struct.TYPE_23__* @AcpiUtPopGenericState(%struct.TYPE_23__** %7)
  store %struct.TYPE_23__* %185, %struct.TYPE_23__** %10, align 8
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %188, align 8
  store %struct.TYPE_22__* %189, %struct.TYPE_22__** %4, align 8
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %191 = call i32 @AcpiUtDeleteGenericState(%struct.TYPE_23__* %190)
  br label %192

192:                                              ; preds = %184, %181
  br label %193

193:                                              ; preds = %192, %179
  br label %15

194:                                              ; preds = %15
  %195 = load i32, i32* @AE_OK, align 4
  store i32 %195, i32* %3, align 4
  br label %209

196:                                              ; preds = %149, %133, %102
  %197 = load i32, i32* @AE_INFO, align 4
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([40 x i8]* @.str.1 to i32))
  br label %200

200:                                              ; preds = %203, %196
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %202 = icmp ne %struct.TYPE_23__* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = call %struct.TYPE_23__* @AcpiUtPopGenericState(%struct.TYPE_23__** %7)
  store %struct.TYPE_23__* %204, %struct.TYPE_23__** %10, align 8
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %206 = call i32 @AcpiUtDeleteGenericState(%struct.TYPE_23__* %205)
  br label %200

207:                                              ; preds = %200
  %208 = load i32, i32* %6, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %207, %194, %23
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_22__*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiUtUpdateRefCount(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @AcpiUtCreateUpdateStateAndPush(%struct.TYPE_22__*, i32, %struct.TYPE_23__**) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local %struct.TYPE_23__* @AcpiUtPopGenericState(%struct.TYPE_23__**) #1

declare dso_local i32 @AcpiUtDeleteGenericState(%struct.TYPE_23__*) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
