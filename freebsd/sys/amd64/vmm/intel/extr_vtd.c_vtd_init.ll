; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vtd.c_vtd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vtd.c_vtd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtdmap = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }

@DRHD_MAX_UNITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"vtd.regmap.%d.addr\00", align 1
@vtdmaps = common dso_local global %struct.vtdmap** null, align 8
@ACPI_SIG_DMAR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ACPI_DMAR_TYPE_HARDWARE_UNIT = common dso_local global i64 0, align 8
@drhds = common dso_local global %struct.TYPE_9__** null, align 8
@drhd_num = common dso_local global i32 0, align 4
@max_domains = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"vtd_init: invalid caching mode\00", align 1
@ctx_tables = common dso_local global i32* null, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"ctx table (0x%0lx) not page aligned\00", align 1
@VTD_ROOT_PRESENT = common dso_local global i32 0, align 4
@root_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vtd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtd_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vtdmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %35, %0
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @DRHD_MAX_UNITS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @snprintf(i8* %20, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %24 = call i64 @getenv_ulong(i8* %23, i64* %10)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %38

27:                                               ; preds = %19
  %28 = load i64, i64* %10, align 8
  %29 = call i64 @PHYS_TO_DMAP(i64 %28)
  %30 = inttoptr i64 %29 to %struct.vtdmap*
  %31 = load %struct.vtdmap**, %struct.vtdmap*** @vtdmaps, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.vtdmap*, %struct.vtdmap** %31, i64 %33
  store %struct.vtdmap* %30, %struct.vtdmap** %34, align 8
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %15

38:                                               ; preds = %26, %15
  %39 = load i32, i32* %3, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %125

42:                                               ; preds = %38
  %43 = load i32, i32* @ACPI_SIG_DMAR, align 4
  %44 = bitcast %struct.TYPE_7__** %12 to i32**
  %45 = call i32 @AcpiGetTable(i32 %43, i32 0, i32** %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @ACPI_FAILURE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %1, align 4
  br label %186

51:                                               ; preds = %42
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %53 = bitcast %struct.TYPE_7__* %52 to i8*
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %53, i64 %58
  store i8* %59, i8** %8, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 %64, 4
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %113, %51
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ugt i64 %69, 16
  br i1 %70, label %71, label %119

71:                                               ; preds = %67
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = bitcast i8* %76 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %13, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %119

84:                                               ; preds = %71
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ACPI_DMAR_TYPE_HARDWARE_UNIT, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %119

91:                                               ; preds = %84
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %93 = bitcast %struct.TYPE_8__* %92 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %14, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %95 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @drhds, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %95, i64 %97
  store %struct.TYPE_9__* %94, %struct.TYPE_9__** %98, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @PHYS_TO_DMAP(i64 %101)
  %103 = inttoptr i64 %102 to %struct.vtdmap*
  %104 = load %struct.vtdmap**, %struct.vtdmap*** @vtdmaps, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.vtdmap*, %struct.vtdmap** %104, i64 %106
  store %struct.vtdmap* %103, %struct.vtdmap** %107, align 8
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* @DRHD_MAX_UNITS, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %91
  br label %119

113:                                              ; preds = %91
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sub nsw i32 %117, %116
  store i32 %118, i32* %4, align 4
  br label %67

119:                                              ; preds = %112, %90, %83, %67
  %120 = load i32, i32* %3, align 4
  %121 = icmp sle i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* @ENXIO, align 4
  store i32 %123, i32* %1, align 4
  br label %186

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %124, %41
  %126 = load i32, i32* %3, align 4
  store i32 %126, i32* @drhd_num, align 4
  store i32 65536, i32* @max_domains, align 4
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %152, %125
  %128 = load i32, i32* %2, align 4
  %129 = load i32, i32* @drhd_num, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %155

131:                                              ; preds = %127
  %132 = load %struct.vtdmap**, %struct.vtdmap*** @vtdmaps, align 8
  %133 = load i32, i32* %2, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.vtdmap*, %struct.vtdmap** %132, i64 %134
  %136 = load %struct.vtdmap*, %struct.vtdmap** %135, align 8
  store %struct.vtdmap* %136, %struct.vtdmap** %6, align 8
  %137 = load %struct.vtdmap*, %struct.vtdmap** %6, align 8
  %138 = getelementptr inbounds %struct.vtdmap, %struct.vtdmap* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @VTD_CAP_CM(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %131
  %143 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %131
  %145 = load %struct.vtdmap*, %struct.vtdmap** %6, align 8
  %146 = call i32 @vtd_max_domains(%struct.vtdmap* %145)
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* @max_domains, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load i32, i32* %5, align 4
  store i32 %150, i32* @max_domains, align 4
  br label %151

151:                                              ; preds = %149, %144
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %2, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %2, align 4
  br label %127

155:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %182, %155
  %157 = load i32, i32* %2, align 4
  %158 = icmp slt i32 %157, 256
  br i1 %158, label %159, label %185

159:                                              ; preds = %156
  %160 = load i32*, i32** @ctx_tables, align 8
  %161 = load i32, i32* %2, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @vtophys(i32 %164)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @PAGE_MASK, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %159
  %171 = load i32, i32* %7, align 4
  %172 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %170, %159
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @VTD_ROOT_PRESENT, align 4
  %176 = or i32 %174, %175
  %177 = load i32*, i32** @root_table, align 8
  %178 = load i32, i32* %2, align 4
  %179 = mul nsw i32 %178, 2
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  store i32 %176, i32* %181, align 4
  br label %182

182:                                              ; preds = %173
  %183 = load i32, i32* %2, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %2, align 4
  br label %156

185:                                              ; preds = %156
  store i32 0, i32* %1, align 4
  br label %186

186:                                              ; preds = %185, %122, %49
  %187 = load i32, i32* %1, align 4
  ret i32 %187
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @getenv_ulong(i8*, i64*) #1

declare dso_local i64 @PHYS_TO_DMAP(i64) #1

declare dso_local i32 @AcpiGetTable(i32, i32, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i64 @VTD_CAP_CM(i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @vtd_max_domains(%struct.vtdmap*) #1

declare dso_local i32 @vtophys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
