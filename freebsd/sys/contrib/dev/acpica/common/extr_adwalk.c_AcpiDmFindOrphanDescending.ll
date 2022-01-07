; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_adwalk.c_AcpiDmFindOrphanDescending.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_adwalk.c_AcpiDmFindOrphanDescending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@AML_CLASS_EXECUTE = common dso_local global i32 0, align 4
@AML_CLASS_CREATE = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_ALIAS = common dso_local global i32 0, align 4
@AML_INT_METHODCALL_OP = common dso_local global i32 0, align 4
@AML_IF_OP = common dso_local global i32 0, align 4
@AML_WHILE_OP = common dso_local global i32 0, align 4
@AML_RETURN_OP = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@Path = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i8*)* @AcpiDmFindOrphanDescending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiDmFindOrphanDescending(%struct.TYPE_12__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @AE_OK, align 4
  store i32 %16, i32* %4, align 4
  br label %181

17:                                               ; preds = %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %178 [
    i32 128, label %22
    i32 129, label %83
  ]

22:                                               ; preds = %17
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %9, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 129
  br i1 %32, label %33, label %82

33:                                               ; preds = %22
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %82, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %10, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %45 = icmp ne %struct.TYPE_12__* %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %54 = call i32 @AcpiDmAddOpToExternalList(%struct.TYPE_12__* %47, i32 %52, i32 %53, i32 0, i32 0)
  %55 = load i32, i32* @AE_OK, align 4
  store i32 %55, i32* %4, align 4
  br label %181

56:                                               ; preds = %39
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %58 = call i32 @AcpiDmInspectPossibleArgs(i32 2, i32 1, %struct.TYPE_12__* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp sle i32 %59, 1
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @AcpiDmAddOpToExternalList(%struct.TYPE_12__* %62, i32 %67, i32 %68, i32 %69, i32 0)
  %71 = load i32, i32* @AE_OK, align 4
  store i32 %71, i32* %4, align 4
  br label %181

72:                                               ; preds = %56
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @AcpiDmAddOpToExternalList(%struct.TYPE_12__* %73, i32 %78, i32 %79, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %72, %33, %22
  br label %179

83:                                               ; preds = %17
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  store %struct.TYPE_12__* %87, %struct.TYPE_12__** %11, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.TYPE_13__* @AcpiPsGetOpcodeInfo(i32 %91)
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %8, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @AML_CLASS_EXECUTE, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %177

98:                                               ; preds = %83
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @AML_CLASS_CREATE, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %177

104:                                              ; preds = %98
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ACPI_TYPE_LOCAL_ALIAS, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %177

110:                                              ; preds = %104
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @AML_INT_METHODCALL_OP, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %177

117:                                              ; preds = %110
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %177, label %123

123:                                              ; preds = %117
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %125 = call i32 @AcpiDmInspectPossibleArgs(i32 0, i32 0, %struct.TYPE_12__* %124)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %167

128:                                              ; preds = %123
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @AML_IF_OP, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %149, label %135

135:                                              ; preds = %128
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @AML_WHILE_OP, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %149, label %142

142:                                              ; preds = %135
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @AML_RETURN_OP, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %166

149:                                              ; preds = %142, %135, %128
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %156 = icmp eq %struct.TYPE_12__* %154, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %149
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %165 = call i32 @AcpiDmAddOpToExternalList(%struct.TYPE_12__* %158, i32 %163, i32 %164, i32 0, i32 0)
  br label %179

166:                                              ; preds = %149, %142
  br label %167

167:                                              ; preds = %166, %123
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %175 = load i32, i32* %12, align 4
  %176 = call i32 @AcpiDmAddOpToExternalList(%struct.TYPE_12__* %168, i32 %173, i32 %174, i32 %175, i32 0)
  br label %177

177:                                              ; preds = %167, %117, %110, %104, %98, %83
  br label %179

178:                                              ; preds = %17
  br label %179

179:                                              ; preds = %178, %177, %157, %82
  %180 = load i32, i32* @AE_OK, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %179, %61, %46, %15
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @AcpiDmAddOpToExternalList(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @AcpiDmInspectPossibleArgs(i32, i32, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @AcpiPsGetOpcodeInfo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
