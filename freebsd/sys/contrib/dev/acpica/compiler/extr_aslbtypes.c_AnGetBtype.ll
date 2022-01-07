; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslbtypes.c_AnGetBtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslbtypes.c_AnGetBtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32, i64, %struct.TYPE_11__*, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Null Op in AnGetBtype\0A\00", align 1
@ACPI_UINT32_MAX = common dso_local global i64 0, align 8
@PARSEOP_NAMESEG = common dso_local global i64 0, align 8
@PARSEOP_NAMESTRING = common dso_local global i64 0, align 8
@PARSEOP_METHODCALL = common dso_local global i64 0, align 8
@PARSEOP_CREATEWORDFIELD = common dso_local global i64 0, align 8
@PARSEOP_CREATEDWORDFIELD = common dso_local global i64 0, align 8
@PARSEOP_CREATEQWORDFIELD = common dso_local global i64 0, align 8
@PARSEOP_CREATEBYTEFIELD = common dso_local global i64 0, align 8
@PARSEOP_CREATEBITFIELD = common dso_local global i64 0, align 8
@PARSEOP_CREATEFIELD = common dso_local global i64 0, align 8
@PARSEOP_CONDREFOF = common dso_local global i64 0, align 8
@ASL_DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"No attached Nsnode: [%s] at line %u name [%s], ignoring typecheck. Parent [%s]\0A\00", align 1
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_COMPILER_INTERNAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"could not map type\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"null Op pointer\00", align 1
@OP_METHOD_TYPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AnGetBtype(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = icmp ne %struct.TYPE_13__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* @ACPI_UINT32_MAX, align 8
  store i64 %11, i64* %2, align 8
  br label %200

12:                                               ; preds = %1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PARSEOP_NAMESEG, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %33, label %19

19:                                               ; preds = %12
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PARSEOP_NAMESTRING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PARSEOP_METHODCALL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %193

33:                                               ; preds = %26, %19, %12
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 7
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %4, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = icmp ne %struct.TYPE_14__* %38, null
  br i1 %39, label %137, label %40

40:                                               ; preds = %33
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PARSEOP_CREATEWORDFIELD, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %110, label %50

50:                                               ; preds = %40
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PARSEOP_CREATEDWORDFIELD, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %110, label %60

60:                                               ; preds = %50
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PARSEOP_CREATEQWORDFIELD, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %110, label %70

70:                                               ; preds = %60
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PARSEOP_CREATEBYTEFIELD, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %110, label %80

80:                                               ; preds = %70
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PARSEOP_CREATEBITFIELD, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %110, label %90

90:                                               ; preds = %80
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PARSEOP_CREATEFIELD, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %110, label %100

100:                                              ; preds = %90
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PARSEOP_CONDREFOF, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %100, %90, %80, %70, %60, %50, %40
  %111 = load i64, i64* @ACPI_UINT32_MAX, align 8
  %112 = sub nsw i64 %111, 1
  store i64 %112, i64* %2, align 8
  br label %200

113:                                              ; preds = %100
  %114 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @DbgPrint(i32 %114, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %122, i32 %126, i32 %133)
  %135 = load i64, i64* @ACPI_UINT32_MAX, align 8
  %136 = sub nsw i64 %135, 1
  store i64 %136, i64* %2, align 8
  br label %200

137:                                              ; preds = %33
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @AnMapEtypeToBtype(i32 %140)
  store i64 %141, i64* %6, align 8
  %142 = load i64, i64* %6, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %137
  %145 = load i32, i32* @ASL_ERROR, align 4
  %146 = load i32, i32* @ASL_MSG_COMPILER_INTERNAL, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %148 = call i32 @AslError(i32 %145, i32 %146, %struct.TYPE_13__* %147, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %149

149:                                              ; preds = %144, %137
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @PARSEOP_METHODCALL, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %192

156:                                              ; preds = %149
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  store %struct.TYPE_13__* %159, %struct.TYPE_13__** %5, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %161 = icmp ne %struct.TYPE_13__* %160, null
  br i1 %161, label %175, label %162

162:                                              ; preds = %156
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %164 = call i64 @AnIsInternalMethod(%struct.TYPE_13__* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %168 = call i64 @AnGetInternalMethodReturnType(%struct.TYPE_13__* %167)
  store i64 %168, i64* %2, align 8
  br label %200

169:                                              ; preds = %162
  %170 = load i32, i32* @ASL_ERROR, align 4
  %171 = load i32, i32* @ASL_MSG_COMPILER_INTERNAL, align 4
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %173 = call i32 @AslError(i32 %170, i32 %171, %struct.TYPE_13__* %172, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %174 = load i64, i64* @ACPI_UINT32_MAX, align 8
  store i64 %174, i64* %2, align 8
  br label %200

175:                                              ; preds = %156
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @OP_METHOD_TYPED, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %175
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  store i64 %187, i64* %6, align 8
  br label %191

188:                                              ; preds = %175
  %189 = load i64, i64* @ACPI_UINT32_MAX, align 8
  %190 = sub nsw i64 %189, 1
  store i64 %190, i64* %2, align 8
  br label %200

191:                                              ; preds = %183
  br label %192

192:                                              ; preds = %191, %149
  br label %198

193:                                              ; preds = %26
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %6, align 8
  br label %198

198:                                              ; preds = %193, %192
  %199 = load i64, i64* %6, align 8
  store i64 %199, i64* %2, align 8
  br label %200

200:                                              ; preds = %198, %188, %169, %166, %113, %110, %9
  %201 = load i64, i64* %2, align 8
  ret i64 %201
}

declare dso_local i32 @AcpiOsPrintf(i8*) #1

declare dso_local i32 @DbgPrint(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @AnMapEtypeToBtype(i32) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_13__*, i8*) #1

declare dso_local i64 @AnIsInternalMethod(%struct.TYPE_13__*) #1

declare dso_local i64 @AnGetInternalMethodReturnType(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
