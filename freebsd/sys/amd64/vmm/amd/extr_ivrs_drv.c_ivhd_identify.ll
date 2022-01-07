; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_ivrs_drv.c_ivhd_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_ivrs_drv.c_ivhd_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"ivhd\00", align 1
@ACPI_SIG_IVRS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"AMD-Vi: IVRS Info VAsize = %d PAsize = %d GVAsize = %d flags:%b\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\10\01EFRSup\00", align 1
@ivhd_count_iter = common dso_local global i32 0, align 4
@ivhd_count = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"ivhd%d is NULL\0A\00", align 1
@ivhd_hdrs = common dso_local global %struct.TYPE_9__** null, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ivhd_devs = common dso_local global i32** null, align 8
@ACPI_DEV_BASE_ORDER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"AMD-Vi: cant find ivhd%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @ivhd_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivhd_identify(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %11 = call i64 @acpi_disabled(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %173

14:                                               ; preds = %2
  %15 = load i32, i32* @ACPI_SIG_IVRS, align 4
  %16 = bitcast %struct.TYPE_8__** %5 to i32**
  %17 = call i32 @AcpiGetTable(i32 %15, i32 1, i32** %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @ACPI_FAILURE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %173

22:                                               ; preds = %14
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %173

29:                                               ; preds = %22
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @REG_BITS(i32 %33, i32 21, i32 15)
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @REG_BITS(i32 %35, i32 14, i32 8)
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @REG_BITS(i32 %37, i32 7, i32 5)
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @REG_BITS(i32 %39, i32 22, i32 22)
  %41 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36, i32 %38, i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @ivhd_count_iter, align 4
  %43 = call i32 @ivrs_hdr_iterate_tbl(i32 %42, i32* null)
  %44 = load i32, i32* @ivhd_count, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %29
  br label %173

47:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %65, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @ivhd_count, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = call %struct.TYPE_9__* @ivhd_find_by_index(i32 %53)
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %6, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 @KASSERT(%struct.TYPE_9__* %55, i8* %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @ivhd_hdrs, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %61, i64 %63
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %64, align 8
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %48

68:                                               ; preds = %48
  %69 = load i32, i32* @ivhd_count, align 4
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %104, %68
  %72 = load i32, i32* %8, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %107

74:                                               ; preds = %71
  %75 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @ivhd_hdrs, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %75, i64 %78
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @ivhd_hdrs, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %82, i64 %84
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = call i64 @ivhd_is_newer(i32* %81, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %74
  %91 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @ivhd_hdrs, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %91, i64 %93
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @ivhd_hdrs, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %96, i64 %99
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** %100, align 8
  %101 = load i32, i32* @ivhd_count, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* @ivhd_count, align 4
  br label %103

103:                                              ; preds = %90, %74
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %8, align 4
  br label %71

107:                                              ; preds = %71
  %108 = load i32, i32* @ivhd_count, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 4, %109
  %111 = trunc i64 %110 to i32
  %112 = load i32, i32* @M_DEVBUF, align 4
  %113 = load i32, i32* @M_WAITOK, align 4
  %114 = load i32, i32* @M_ZERO, align 4
  %115 = or i32 %113, %114
  %116 = call i32** @malloc(i32 %111, i32 %112, i32 %115)
  store i32** %116, i32*** @ivhd_devs, align 8
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %168, %107
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @ivhd_count, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %171

121:                                              ; preds = %117
  %122 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @ivhd_hdrs, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %122, i64 %124
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  store %struct.TYPE_9__* %126, %struct.TYPE_9__** %6, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i8*
  %131 = call i32 @KASSERT(%struct.TYPE_9__* %127, i8* %130)
  %132 = load i32, i32* %4, align 4
  %133 = load i64, i64* @ACPI_DEV_BASE_ORDER, align 8
  %134 = add nsw i64 %133, 100
  %135 = load i32, i32* %8, align 4
  %136 = call i32* @BUS_ADD_CHILD(i32 %132, i64 %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %135)
  %137 = load i32**, i32*** @ivhd_devs, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  store i32* %136, i32** %140, align 8
  %141 = load i32**, i32*** @ivhd_devs, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %165

147:                                              ; preds = %121
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i32* @device_find_child(i32 %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %149)
  %151 = load i32**, i32*** @ivhd_devs, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  store i32* %150, i32** %154, align 8
  %155 = load i32**, i32*** @ivhd_devs, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %147
  %162 = load i32, i32* %8, align 4
  %163 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %162)
  br label %171

164:                                              ; preds = %147
  br label %165

165:                                              ; preds = %164, %121
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  br label %117

171:                                              ; preds = %161, %117
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* @ivhd_count, align 4
  br label %173

173:                                              ; preds = %171, %46, %28, %21, %13
  ret void
}

declare dso_local i64 @acpi_disabled(i8*) #1

declare dso_local i32 @AcpiGetTable(i32, i32, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @REG_BITS(i32, i32, i32) #1

declare dso_local i32 @ivrs_hdr_iterate_tbl(i32, i32*) #1

declare dso_local %struct.TYPE_9__* @ivhd_find_by_index(i32) #1

declare dso_local i32 @KASSERT(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @ivhd_is_newer(i32*, i32*) #1

declare dso_local i32** @malloc(i32, i32, i32) #1

declare dso_local i32* @BUS_ADD_CHILD(i32, i64, i8*, i32) #1

declare dso_local i32* @device_find_child(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
