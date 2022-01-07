; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbobject.c_AcpiDbDisplayInternalObject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbobject.c_AcpiDbDisplayInternalObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__**, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { %struct.TYPE_20__* }
%struct.TYPE_16__ = type { %struct.TYPE_20__* }

@.str = private unnamed_addr constant [4 x i8] c"%p \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"<Null Object>\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"<Parser>  \00", align 1
@ACPI_TYPE_LOCAL_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c" Type %X [Invalid Type]\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%X \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c" Uninitialized WHERE pointer\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Unknown index target type\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Uninitialized reference subobject pointer\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%2.2X\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"<Obj>            \00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"<Not a valid ACPI Object Descriptor> [%s]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDbDisplayInternalObject(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %7 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_20__* %6)
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %9 = icmp ne %struct.TYPE_20__* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %186

12:                                               ; preds = %2
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_20__* %13)
  switch i32 %14, label %180 [
    i32 138, label %15
    i32 140, label %17
    i32 139, label %20
  ]

15:                                               ; preds = %12
  %16 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %184

17:                                               ; preds = %12
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %19 = call i32 @AcpiDbDecodeNode(%struct.TYPE_20__* %18)
  br label %184

20:                                               ; preds = %12
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ACPI_TYPE_LOCAL_MAX, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  br label %186

31:                                               ; preds = %20
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %175 [
    i32 129, label %36
  ]

36:                                               ; preds = %31
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %38 = call i32 @AcpiUtGetReferenceName(%struct.TYPE_20__* %37)
  %39 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %168 [
    i32 134, label %44
    i32 137, label %68
    i32 135, label %92
    i32 132, label %132
    i32 133, label %160
    i32 136, label %166
    i32 131, label %166
  ]

44:                                               ; preds = %36
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 %48)
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = icmp ne %struct.TYPE_19__* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %44
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  store %struct.TYPE_20__* %62, %struct.TYPE_20__** %3, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %64 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_20__* %63)
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %66 = call i32 @AcpiDbDecodeInternalObject(%struct.TYPE_20__* %65)
  br label %67

67:                                               ; preds = %52, %44
  br label %174

68:                                               ; preds = %36
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 %72)
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %75 = icmp ne %struct.TYPE_19__* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %68
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  store %struct.TYPE_20__* %86, %struct.TYPE_20__** %3, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %88 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_20__* %87)
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %90 = call i32 @AcpiDbDecodeInternalObject(%struct.TYPE_20__* %89)
  br label %91

91:                                               ; preds = %76, %68
  br label %174

92:                                               ; preds = %36
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  switch i32 %96, label %129 [
    i32 130, label %97
    i32 128, label %108
  ]

97:                                               ; preds = %92
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %100, align 8
  %102 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_20__* %101)
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  %107 = call i32 @AcpiDbDecodeInternalObject(%struct.TYPE_20__* %106)
  br label %131

108:                                              ; preds = %92
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %111, align 8
  %113 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_20__** %112)
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %116, align 8
  %118 = icmp ne %struct.TYPE_20__** %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %108
  %120 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %128

121:                                              ; preds = %108
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %124, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %125, align 8
  %127 = call i32 @AcpiDbDecodeInternalObject(%struct.TYPE_20__* %126)
  br label %128

128:                                              ; preds = %121, %119
  br label %131

129:                                              ; preds = %92
  %130 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %128, %97
  br label %174

132:                                              ; preds = %36
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = icmp ne %struct.TYPE_20__* %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %132
  %139 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %174

140:                                              ; preds = %132
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %143, align 8
  %145 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_20__* %144)
  switch i32 %145, label %158 [
    i32 140, label %146
    i32 139, label %152
  ]

146:                                              ; preds = %140
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  %151 = call i32 @AcpiDbDecodeNode(%struct.TYPE_20__* %150)
  br label %159

152:                                              ; preds = %140
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %155, align 8
  %157 = call i32 @AcpiDbDecodeInternalObject(%struct.TYPE_20__* %156)
  br label %159

158:                                              ; preds = %140
  br label %159

159:                                              ; preds = %158, %152, %146
  br label %174

160:                                              ; preds = %36
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %163, align 8
  %165 = call i32 @AcpiDbDecodeNode(%struct.TYPE_20__* %164)
  br label %174

166:                                              ; preds = %36, %36
  %167 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %174

168:                                              ; preds = %36
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %168, %166, %160, %159, %138, %131, %91, %67
  br label %179

175:                                              ; preds = %31
  %176 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %178 = call i32 @AcpiDbDecodeInternalObject(%struct.TYPE_20__* %177)
  br label %179

179:                                              ; preds = %175, %174
  br label %184

180:                                              ; preds = %12
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %182 = call i32 @AcpiUtGetDescriptorName(%struct.TYPE_20__* %181)
  %183 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %180, %179, %17, %15
  %185 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %28, %10
  ret void
}

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_20__*) #1

declare dso_local i32 @AcpiDbDecodeNode(%struct.TYPE_20__*) #1

declare dso_local i32 @AcpiUtGetReferenceName(%struct.TYPE_20__*) #1

declare dso_local i32 @AcpiDbDecodeInternalObject(%struct.TYPE_20__*) #1

declare dso_local i32 @AcpiUtGetDescriptorName(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
