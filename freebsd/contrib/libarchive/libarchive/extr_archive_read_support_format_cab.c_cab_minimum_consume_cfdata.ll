; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_cab_minimum_consume_cfdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_cab_minimum_consume_cfdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.cab = type { i32, %struct.TYPE_4__*, %struct.cfdata* }
%struct.TYPE_4__ = type { i64 }
%struct.cfdata = type { i64, i64, i64, i64, i32 }

@COMPTYPE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive_read*, i64)* @cab_minimum_consume_cfdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cab_minimum_consume_cfdata(%struct.archive_read* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cab*, align 8
  %7 = alloca %struct.cfdata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %12 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.cab*
  store %struct.cab* %16, %struct.cab** %6, align 8
  %17 = load %struct.cab*, %struct.cab** %6, align 8
  %18 = getelementptr inbounds %struct.cab, %struct.cab* %17, i32 0, i32 2
  %19 = load %struct.cfdata*, %struct.cfdata** %18, align 8
  store %struct.cfdata* %19, %struct.cfdata** %7, align 8
  %20 = load i64, i64* %5, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.cab*, %struct.cab** %6, align 8
  %22 = getelementptr inbounds %struct.cab, %struct.cab* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @COMPTYPE_NONE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %2
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %31 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* %5, align 8
  store i64 %35, i64* %8, align 8
  br label %40

36:                                               ; preds = %28
  %37 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %38 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %36, %34
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = sub nsw i64 %42, %41
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %46 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %51 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %58 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  br label %106

61:                                               ; preds = %2
  %62 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %63 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %66 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %61
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i64, i64* %5, align 8
  store i64 %76, i64* %8, align 8
  br label %77

77:                                               ; preds = %75, %71
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = sub nsw i64 %79, %78
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %83 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %88 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 8
  br label %93

93:                                               ; preds = %77, %61
  %94 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %95 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %100 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %8, align 8
  %102 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %103 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  br label %105

104:                                              ; preds = %93
  store i64 0, i64* %8, align 8
  br label %105

105:                                              ; preds = %104, %98
  br label %106

106:                                              ; preds = %105, %40
  %107 = load i64, i64* %8, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %142

109:                                              ; preds = %106
  %110 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @cab_checksum_update(%struct.archive_read* %110, i64 %111)
  %113 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @__archive_read_consume(%struct.archive_read* %113, i64 %114)
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.cab*, %struct.cab** %6, align 8
  %118 = getelementptr inbounds %struct.cab, %struct.cab* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %116
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %118, align 8
  %123 = load i64, i64* %8, align 8
  %124 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %125 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %126, %123
  store i64 %127, i64* %125, align 8
  %128 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %129 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %109
  %133 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %134 = call i32 @cab_checksum_finish(%struct.archive_read* %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  store i64 %139, i64* %3, align 8
  br label %144

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140, %109
  br label %142

142:                                              ; preds = %141, %106
  %143 = load i64, i64* %9, align 8
  store i64 %143, i64* %3, align 8
  br label %144

144:                                              ; preds = %142, %137
  %145 = load i64, i64* %3, align 8
  ret i64 %145
}

declare dso_local i32 @cab_checksum_update(%struct.archive_read*, i64) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i32 @cab_checksum_finish(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
