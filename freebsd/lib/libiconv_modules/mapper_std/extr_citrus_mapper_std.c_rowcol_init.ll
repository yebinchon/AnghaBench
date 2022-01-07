; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_std/extr_citrus_mapper_std.c_rowcol_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_std/extr_citrus_mapper_std.c_rowcol_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_mapper_std = type { i32, %struct._citrus_mapper_std_rowcol, i32*, i32* }
%struct._citrus_mapper_std_rowcol = type { i32, i32, i32, %struct._region, %struct._citrus_mapper_std_linear_zone*, i8*, i8*, i8* }
%struct._region = type { i32 }
%struct._citrus_mapper_std_linear_zone = type { i32 }
%struct._citrus_mapper_std_rowcol_ext_ilseq_info_x = type { i32, i32 }

@rowcol_convert = common dso_local global i32 0, align 4
@rowcol_uninit = common dso_local global i32 0, align 4
@_CITRUS_MAPPER_STD_SYM_TABLE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4
@_CITRUS_MAPPER_STD_SYM_INFO = common dso_local global i32 0, align 4
@_CITRUS_MAPPER_STD_OOB_NONIDENTICAL = common dso_local global i8* null, align 8
@_CITRUS_MAPPER_STD_SYM_ROWCOL_EXT_ILSEQ = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_mapper_std*)* @rowcol_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rowcol_init(%struct._citrus_mapper_std* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._citrus_mapper_std*, align 8
  %4 = alloca %struct._citrus_mapper_std_linear_zone*, align 8
  %5 = alloca %struct._citrus_mapper_std_rowcol*, align 8
  %6 = alloca %struct._citrus_mapper_std_rowcol_ext_ilseq_info_x*, align 8
  %7 = alloca %struct._region, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct._citrus_mapper_std* %0, %struct._citrus_mapper_std** %3, align 8
  %11 = load %struct._citrus_mapper_std*, %struct._citrus_mapper_std** %3, align 8
  %12 = getelementptr inbounds %struct._citrus_mapper_std, %struct._citrus_mapper_std* %11, i32 0, i32 3
  store i32* @rowcol_convert, i32** %12, align 8
  %13 = load %struct._citrus_mapper_std*, %struct._citrus_mapper_std** %3, align 8
  %14 = getelementptr inbounds %struct._citrus_mapper_std, %struct._citrus_mapper_std* %13, i32 0, i32 2
  store i32* @rowcol_uninit, i32** %14, align 8
  %15 = load %struct._citrus_mapper_std*, %struct._citrus_mapper_std** %3, align 8
  %16 = getelementptr inbounds %struct._citrus_mapper_std, %struct._citrus_mapper_std* %15, i32 0, i32 1
  store %struct._citrus_mapper_std_rowcol* %16, %struct._citrus_mapper_std_rowcol** %5, align 8
  %17 = load %struct._citrus_mapper_std*, %struct._citrus_mapper_std** %3, align 8
  %18 = getelementptr inbounds %struct._citrus_mapper_std, %struct._citrus_mapper_std* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @_CITRUS_MAPPER_STD_SYM_TABLE, align 4
  %21 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %5, align 8
  %22 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %21, i32 0, i32 3
  %23 = call i32 @_db_lookup_by_s(i32 %19, i32 %20, %struct._region* %22, i32* null)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @ENOENT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @EFTYPE, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %2, align 4
  br label %175

34:                                               ; preds = %1
  %35 = load %struct._citrus_mapper_std*, %struct._citrus_mapper_std** %3, align 8
  %36 = getelementptr inbounds %struct._citrus_mapper_std, %struct._citrus_mapper_std* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @_CITRUS_MAPPER_STD_SYM_INFO, align 4
  %39 = call i32 @_db_lookup_by_s(i32 %37, i32 %38, %struct._region* %7, i32* null)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @ENOENT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @EFTYPE, align 4
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %2, align 4
  br label %175

50:                                               ; preds = %34
  %51 = call i32 @_region_size(%struct._region* %7)
  switch i32 %51, label %58 [
    i32 129, label %52
    i32 128, label %55
  ]

52:                                               ; preds = %50
  %53 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %5, align 8
  %54 = call i32 @rowcol_parse_variable_compat(%struct._citrus_mapper_std_rowcol* %53, %struct._region* %7)
  store i32 %54, i32* %10, align 4
  br label %60

55:                                               ; preds = %50
  %56 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %5, align 8
  %57 = call i32 @rowcol_parse_variable(%struct._citrus_mapper_std_rowcol* %56, %struct._region* %7)
  store i32 %57, i32* %10, align 4
  br label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @EFTYPE, align 4
  store i32 %59, i32* %2, align 4
  br label %175

60:                                               ; preds = %55, %52
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %2, align 4
  br label %175

65:                                               ; preds = %60
  %66 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %5, align 8
  %67 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %80 [
    i32 8, label %69
    i32 16, label %69
    i32 32, label %69
  ]

69:                                               ; preds = %65, %65, %65
  %70 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %5, align 8
  %71 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %5, align 8
  %74 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sdiv i32 32, %75
  %77 = icmp sle i32 %72, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %82

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %65, %79
  %81 = load i32, i32* @EFTYPE, align 4
  store i32 %81, i32* %2, align 4
  br label %175

82:                                               ; preds = %78
  %83 = load i8*, i8** @_CITRUS_MAPPER_STD_OOB_NONIDENTICAL, align 8
  %84 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %5, align 8
  %85 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  %86 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %5, align 8
  %87 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %86, i32 0, i32 7
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %5, align 8
  %90 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %89, i32 0, i32 5
  store i8* %88, i8** %90, align 8
  %91 = load %struct._citrus_mapper_std*, %struct._citrus_mapper_std** %3, align 8
  %92 = getelementptr inbounds %struct._citrus_mapper_std, %struct._citrus_mapper_std* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @_CITRUS_MAPPER_STD_SYM_ROWCOL_EXT_ILSEQ, align 4
  %95 = call i32 @_db_lookup_by_s(i32 %93, i32 %94, %struct._region* %7, i32* null)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %82
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @ENOENT, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %2, align 4
  br label %175

104:                                              ; preds = %98, %82
  %105 = call i32 @_region_size(%struct._region* %7)
  %106 = sext i32 %105 to i64
  %107 = icmp ult i64 %106, 8
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* @EFTYPE, align 4
  store i32 %109, i32* %2, align 4
  br label %175

110:                                              ; preds = %104
  %111 = load i32, i32* %10, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %110
  %114 = call %struct._citrus_mapper_std_rowcol_ext_ilseq_info_x* @_region_head(%struct._region* %7)
  store %struct._citrus_mapper_std_rowcol_ext_ilseq_info_x* %114, %struct._citrus_mapper_std_rowcol_ext_ilseq_info_x** %6, align 8
  %115 = load %struct._citrus_mapper_std_rowcol_ext_ilseq_info_x*, %struct._citrus_mapper_std_rowcol_ext_ilseq_info_x** %6, align 8
  %116 = getelementptr inbounds %struct._citrus_mapper_std_rowcol_ext_ilseq_info_x, %struct._citrus_mapper_std_rowcol_ext_ilseq_info_x* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @be32toh(i32 %117)
  %119 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %5, align 8
  %120 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %119, i32 0, i32 6
  store i8* %118, i8** %120, align 8
  %121 = load %struct._citrus_mapper_std_rowcol_ext_ilseq_info_x*, %struct._citrus_mapper_std_rowcol_ext_ilseq_info_x** %6, align 8
  %122 = getelementptr inbounds %struct._citrus_mapper_std_rowcol_ext_ilseq_info_x, %struct._citrus_mapper_std_rowcol_ext_ilseq_info_x* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @be32toh(i32 %123)
  %125 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %5, align 8
  %126 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %125, i32 0, i32 5
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %113, %110
  %128 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %5, align 8
  %129 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %9, align 8
  %132 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %5, align 8
  %133 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %132, i32 0, i32 4
  %134 = load %struct._citrus_mapper_std_linear_zone*, %struct._citrus_mapper_std_linear_zone** %133, align 8
  %135 = load i64, i64* %9, align 8
  %136 = add i64 %135, -1
  store i64 %136, i64* %9, align 8
  %137 = getelementptr inbounds %struct._citrus_mapper_std_linear_zone, %struct._citrus_mapper_std_linear_zone* %134, i64 %136
  store %struct._citrus_mapper_std_linear_zone* %137, %struct._citrus_mapper_std_linear_zone** %4, align 8
  %138 = load %struct._citrus_mapper_std_linear_zone*, %struct._citrus_mapper_std_linear_zone** %4, align 8
  %139 = getelementptr inbounds %struct._citrus_mapper_std_linear_zone, %struct._citrus_mapper_std_linear_zone* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %144, %127
  %142 = load i64, i64* %9, align 8
  %143 = icmp ugt i64 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %141
  %145 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %5, align 8
  %146 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %145, i32 0, i32 4
  %147 = load %struct._citrus_mapper_std_linear_zone*, %struct._citrus_mapper_std_linear_zone** %146, align 8
  %148 = load i64, i64* %9, align 8
  %149 = add i64 %148, -1
  store i64 %149, i64* %9, align 8
  %150 = getelementptr inbounds %struct._citrus_mapper_std_linear_zone, %struct._citrus_mapper_std_linear_zone* %147, i64 %149
  store %struct._citrus_mapper_std_linear_zone* %150, %struct._citrus_mapper_std_linear_zone** %4, align 8
  %151 = load %struct._citrus_mapper_std_linear_zone*, %struct._citrus_mapper_std_linear_zone** %4, align 8
  %152 = getelementptr inbounds %struct._citrus_mapper_std_linear_zone, %struct._citrus_mapper_std_linear_zone* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %8, align 4
  %155 = mul nsw i32 %154, %153
  store i32 %155, i32* %8, align 4
  br label %141

156:                                              ; preds = %141
  %157 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %5, align 8
  %158 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = sdiv i32 %159, 8
  %161 = load i32, i32* %8, align 4
  %162 = mul nsw i32 %161, %160
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @UINT32_MAX, align 4
  %165 = icmp sgt i32 %163, %164
  br i1 %165, label %172, label %166

166:                                              ; preds = %156
  %167 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %5, align 8
  %168 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %167, i32 0, i32 3
  %169 = call i32 @_region_size(%struct._region* %168)
  %170 = load i32, i32* %8, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %166, %156
  %173 = load i32, i32* @EFTYPE, align 4
  store i32 %173, i32* %2, align 4
  br label %175

174:                                              ; preds = %166
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %174, %172, %108, %102, %80, %63, %58, %48, %32
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @_db_lookup_by_s(i32, i32, %struct._region*, i32*) #1

declare dso_local i32 @_region_size(%struct._region*) #1

declare dso_local i32 @rowcol_parse_variable_compat(%struct._citrus_mapper_std_rowcol*, %struct._region*) #1

declare dso_local i32 @rowcol_parse_variable(%struct._citrus_mapper_std_rowcol*, %struct._region*) #1

declare dso_local %struct._citrus_mapper_std_rowcol_ext_ilseq_info_x* @_region_head(%struct._region*) #1

declare dso_local i8* @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
