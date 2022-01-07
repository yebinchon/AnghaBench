; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslwalks.c_AnAnalyzeStoreOperator.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslwalks.c_AnAnalyzeStoreOperator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i64 }

@AslGbl_EnableReferenceTypechecking = common dso_local global i32 0, align 4
@AML_DEBUG_OP = common dso_local global i64 0, align 8
@AML_LOCAL0 = common dso_local global i64 0, align 8
@AML_ARG6 = common dso_local global i64 0, align 8
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_INVALID_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Source [Reference], Target must be [Local/Arg/Debug]\00", align 1
@ANOBJ_IS_EXTERNAL = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i64 0, align 8
@AML_INT_NAMEPATH_OP = common dso_local global i64 0, align 8
@ASL_WARNING = common dso_local global i32 0, align 4
@ASL_MSG_DUPLICATE_ITEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Source is the same as Target\00", align 1
@ACPI_BTYPE_PACKAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Source is [Package], Target must be a package also\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Target is [Package], Source must be a package also\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @AnAnalyzeStoreOperator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AnAnalyzeStoreOperator(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %6, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %54 [
    i32 132, label %21
    i32 130, label %21
    i32 128, label %21
    i32 134, label %21
    i32 131, label %22
    i32 129, label %22
  ]

21:                                               ; preds = %1, %1, %1, %1
  br label %208

22:                                               ; preds = %1, %1
  %23 = load i32, i32* @AslGbl_EnableReferenceTypechecking, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %208

26:                                               ; preds = %22
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AML_DEBUG_OP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %208

34:                                               ; preds = %26
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AML_LOCAL0, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AML_ARG6, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41, %34
  %49 = load i32, i32* @ASL_ERROR, align 4
  %50 = load i32, i32* @ASL_MSG_INVALID_TYPE, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = call i32 @AslError(i32 %49, i32 %50, %struct.TYPE_8__* %51, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %48, %41
  br label %208

54:                                               ; preds = %1
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %61 [
    i32 133, label %60
    i32 132, label %60
    i32 129, label %60
    i32 131, label %60
    i32 128, label %60
  ]

60:                                               ; preds = %55, %55, %55, %55, %55
  br label %208

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %3, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = icmp ne %struct.TYPE_9__* %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %62
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @ANOBJ_IS_EXTERNAL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ACPI_TYPE_ANY, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %208

83:                                               ; preds = %76, %69, %62
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %4, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = icmp ne %struct.TYPE_9__* %88, null
  br i1 %89, label %90, label %104

90:                                               ; preds = %83
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ANOBJ_IS_EXTERNAL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ACPI_TYPE_ANY, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %208

104:                                              ; preds = %97, %90, %83
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %106 = icmp ne %struct.TYPE_9__* %105, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %104
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @AML_INT_NAMEPATH_OP, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %124, label %114

114:                                              ; preds = %107, %104
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = icmp ne %struct.TYPE_9__* %115, null
  br i1 %116, label %125, label %117

117:                                              ; preds = %114
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @AML_INT_NAMEPATH_OP, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %117, %107
  br label %208

125:                                              ; preds = %117, %114
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %127 = icmp ne %struct.TYPE_9__* %126, null
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %130 = icmp ne %struct.TYPE_9__* %129, null
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %134 = icmp eq %struct.TYPE_9__* %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load i32, i32* @ASL_WARNING, align 4
  %137 = load i32, i32* @ASL_MSG_DUPLICATE_ITEM, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %139 = call i32 @AslError(i32 %136, i32 %137, %struct.TYPE_8__* %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %208

140:                                              ; preds = %131
  br label %141

141:                                              ; preds = %140, %128, %125
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @AML_LOCAL0, align 8
  %147 = icmp sge i64 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %141
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @AML_ARG6, align 8
  %154 = icmp sle i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %208

156:                                              ; preds = %148, %141
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @AML_LOCAL0, align 8
  %162 = icmp sge i64 %160, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %156
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @AML_ARG6, align 8
  %169 = icmp sle i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  br label %208

171:                                              ; preds = %163, %156
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %173 = call i32 @AnGetBtype(%struct.TYPE_8__* %172)
  store i32 %173, i32* %7, align 4
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %175 = call i32 @AnGetBtype(%struct.TYPE_8__* %174)
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @ACPI_BTYPE_PACKAGE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %171
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @ACPI_BTYPE_PACKAGE, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = load i32, i32* @ASL_ERROR, align 4
  %187 = load i32, i32* @ASL_MSG_INVALID_TYPE, align 4
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %189 = call i32 @AslError(i32 %186, i32 %187, %struct.TYPE_8__* %188, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %190

190:                                              ; preds = %185, %180
  br label %208

191:                                              ; preds = %171
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @ACPI_BTYPE_PACKAGE, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %191
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @ACPI_BTYPE_PACKAGE, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %196
  %202 = load i32, i32* @ASL_ERROR, align 4
  %203 = load i32, i32* @ASL_MSG_INVALID_TYPE, align 4
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %205 = call i32 @AslError(i32 %202, i32 %203, %struct.TYPE_8__* %204, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %206

206:                                              ; preds = %201, %196
  br label %207

207:                                              ; preds = %206, %191
  br label %208

208:                                              ; preds = %21, %25, %33, %53, %60, %82, %103, %124, %135, %155, %170, %207, %190
  ret void
}

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_8__*, i8*) #1

declare dso_local i32 @AnGetBtype(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
