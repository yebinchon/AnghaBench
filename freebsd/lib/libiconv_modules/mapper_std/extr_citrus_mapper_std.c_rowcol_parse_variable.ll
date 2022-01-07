; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_std/extr_citrus_mapper_std.c_rowcol_parse_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_std/extr_citrus_mapper_std.c_rowcol_parse_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_mapper_std_rowcol = type { i32, i32, i32, %struct._citrus_mapper_std_linear_zone*, i8*, i8* }
%struct._citrus_mapper_std_linear_zone = type { i32 }
%struct._region = type { i32 }
%struct._citrus_mapper_std_rowcol_info_x = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@_CITRUS_MAPPER_STD_ROWCOL_MAX = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_mapper_std_rowcol*, %struct._region*)* @rowcol_parse_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rowcol_parse_variable(%struct._citrus_mapper_std_rowcol* %0, %struct._region* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._citrus_mapper_std_rowcol*, align 8
  %5 = alloca %struct._region*, align 8
  %6 = alloca %struct._citrus_mapper_std_rowcol_info_x*, align 8
  %7 = alloca %struct._citrus_mapper_std_linear_zone*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct._citrus_mapper_std_rowcol* %0, %struct._citrus_mapper_std_rowcol** %4, align 8
  store %struct._region* %1, %struct._region** %5, align 8
  %12 = load %struct._region*, %struct._region** %5, align 8
  %13 = call %struct._citrus_mapper_std_rowcol_info_x* @_region_head(%struct._region* %12)
  store %struct._citrus_mapper_std_rowcol_info_x* %13, %struct._citrus_mapper_std_rowcol_info_x** %6, align 8
  %14 = load %struct._citrus_mapper_std_rowcol_info_x*, %struct._citrus_mapper_std_rowcol_info_x** %6, align 8
  %15 = getelementptr inbounds %struct._citrus_mapper_std_rowcol_info_x, %struct._citrus_mapper_std_rowcol_info_x* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @be32toh(i32 %16)
  %18 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %19 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %18, i32 0, i32 5
  store i8* %17, i8** %19, align 8
  %20 = load %struct._citrus_mapper_std_rowcol_info_x*, %struct._citrus_mapper_std_rowcol_info_x** %6, align 8
  %21 = getelementptr inbounds %struct._citrus_mapper_std_rowcol_info_x, %struct._citrus_mapper_std_rowcol_info_x* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @be32toh(i32 %22)
  %24 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %25 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load %struct._citrus_mapper_std_rowcol_info_x*, %struct._citrus_mapper_std_rowcol_info_x** %6, align 8
  %27 = getelementptr inbounds %struct._citrus_mapper_std_rowcol_info_x, %struct._citrus_mapper_std_rowcol_info_x* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @be32toh(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %31, 1
  %33 = shl i32 1, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %40 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %43 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct._citrus_mapper_std_rowcol_info_x*, %struct._citrus_mapper_std_rowcol_info_x** %6, align 8
  %45 = getelementptr inbounds %struct._citrus_mapper_std_rowcol_info_x, %struct._citrus_mapper_std_rowcol_info_x* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @be32toh(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %50 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %52 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @_CITRUS_MAPPER_STD_ROWCOL_MAX, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %2
  %57 = load i32, i32* @EFTYPE, align 4
  store i32 %57, i32* %3, align 4
  br label %125

58:                                               ; preds = %2
  %59 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %60 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = call %struct._citrus_mapper_std_linear_zone* @malloc(i32 %64)
  %66 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %67 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %66, i32 0, i32 3
  store %struct._citrus_mapper_std_linear_zone* %65, %struct._citrus_mapper_std_linear_zone** %67, align 8
  %68 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %69 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %68, i32 0, i32 3
  %70 = load %struct._citrus_mapper_std_linear_zone*, %struct._citrus_mapper_std_linear_zone** %69, align 8
  %71 = icmp eq %struct._citrus_mapper_std_linear_zone* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load i32, i32* @ENOMEM, align 4
  store i32 %73, i32* %3, align 4
  br label %125

74:                                               ; preds = %58
  store i64 0, i64* %8, align 8
  %75 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %76 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %75, i32 0, i32 3
  %77 = load %struct._citrus_mapper_std_linear_zone*, %struct._citrus_mapper_std_linear_zone** %76, align 8
  store %struct._citrus_mapper_std_linear_zone* %77, %struct._citrus_mapper_std_linear_zone** %7, align 8
  br label %78

78:                                               ; preds = %119, %74
  %79 = load i64, i64* %8, align 8
  %80 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %81 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %79, %83
  br i1 %84, label %85, label %124

85:                                               ; preds = %78
  %86 = load %struct._citrus_mapper_std_rowcol_info_x*, %struct._citrus_mapper_std_rowcol_info_x** %6, align 8
  %87 = getelementptr inbounds %struct._citrus_mapper_std_rowcol_info_x, %struct._citrus_mapper_std_rowcol_info_x* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @be32toh(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %9, align 4
  %95 = load %struct._citrus_mapper_std_rowcol_info_x*, %struct._citrus_mapper_std_rowcol_info_x** %6, align 8
  %96 = getelementptr inbounds %struct._citrus_mapper_std_rowcol_info_x, %struct._citrus_mapper_std_rowcol_info_x* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i64, i64* %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @be32toh(i32 %101)
  %103 = ptrtoint i8* %102 to i32
  store i32 %103, i32* %10, align 4
  %104 = load %struct._citrus_mapper_std_linear_zone*, %struct._citrus_mapper_std_linear_zone** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @set_linear_zone(%struct._citrus_mapper_std_linear_zone* %104, i32 %105, i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %85
  %111 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %112 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %111, i32 0, i32 3
  %113 = load %struct._citrus_mapper_std_linear_zone*, %struct._citrus_mapper_std_linear_zone** %112, align 8
  %114 = call i32 @free(%struct._citrus_mapper_std_linear_zone* %113)
  %115 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %116 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %115, i32 0, i32 3
  store %struct._citrus_mapper_std_linear_zone* null, %struct._citrus_mapper_std_linear_zone** %116, align 8
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %3, align 4
  br label %125

118:                                              ; preds = %85
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %8, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %8, align 8
  %122 = load %struct._citrus_mapper_std_linear_zone*, %struct._citrus_mapper_std_linear_zone** %7, align 8
  %123 = getelementptr inbounds %struct._citrus_mapper_std_linear_zone, %struct._citrus_mapper_std_linear_zone* %122, i32 1
  store %struct._citrus_mapper_std_linear_zone* %123, %struct._citrus_mapper_std_linear_zone** %7, align 8
  br label %78

124:                                              ; preds = %78
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %110, %72, %56
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct._citrus_mapper_std_rowcol_info_x* @_region_head(%struct._region*) #1

declare dso_local i8* @be32toh(i32) #1

declare dso_local %struct._citrus_mapper_std_linear_zone* @malloc(i32) #1

declare dso_local i32 @set_linear_zone(%struct._citrus_mapper_std_linear_zone*, i32, i32) #1

declare dso_local i32 @free(%struct._citrus_mapper_std_linear_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
