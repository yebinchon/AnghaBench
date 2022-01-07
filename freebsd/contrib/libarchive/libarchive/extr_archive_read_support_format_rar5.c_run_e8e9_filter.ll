; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_run_e8e9_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_run_e8e9_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rar5 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64, i32, i32 }
%struct.filter_info = type { i32, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rar5*, %struct.filter_info*, i32)* @run_e8e9_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_e8e9_filter(%struct.rar5* %0, %struct.filter_info* %1, i32 %2) #0 {
  %4 = alloca %struct.rar5*, align 8
  %5 = alloca %struct.filter_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rar5* %0, %struct.rar5** %4, align 8
  store %struct.filter_info* %1, %struct.filter_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 16777216, i32* %7, align 4
  %13 = load %struct.rar5*, %struct.rar5** %4, align 8
  %14 = getelementptr inbounds %struct.rar5, %struct.rar5* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rar5*, %struct.rar5** %4, align 8
  %18 = getelementptr inbounds %struct.rar5, %struct.rar5* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.rar5*, %struct.rar5** %4, align 8
  %22 = getelementptr inbounds %struct.rar5, %struct.rar5* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.rar5*, %struct.rar5** %4, align 8
  %26 = getelementptr inbounds %struct.rar5, %struct.rar5* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %30 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = load %struct.rar5*, %struct.rar5** %4, align 8
  %34 = getelementptr inbounds %struct.rar5, %struct.rar5* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %38 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %42 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  %45 = call i32 @circular_memcpy(i32 %16, i32* %20, i64 %24, i32 %32, i32 %44)
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %144, %3
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %49 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 4
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %145

53:                                               ; preds = %46
  %54 = load %struct.rar5*, %struct.rar5** %4, align 8
  %55 = getelementptr inbounds %struct.rar5, %struct.rar5* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.rar5*, %struct.rar5** %4, align 8
  %59 = getelementptr inbounds %struct.rar5, %struct.rar5* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %63 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  %68 = add nsw i32 %65, %66
  %69 = sext i32 %68 to i64
  %70 = load %struct.rar5*, %struct.rar5** %4, align 8
  %71 = getelementptr inbounds %struct.rar5, %struct.rar5* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = and i64 %69, %73
  %75 = getelementptr inbounds i32, i32* %57, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 232
  br i1 %78, label %85, label %79

79:                                               ; preds = %53
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %144

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, 233
  br i1 %84, label %85, label %144

85:                                               ; preds = %82, %53
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %88 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %86, %89
  %91 = srem i32 %90, 16777216
  store i32 %91, i32* %11, align 4
  %92 = load %struct.rar5*, %struct.rar5** %4, align 8
  %93 = load %struct.rar5*, %struct.rar5** %4, align 8
  %94 = getelementptr inbounds %struct.rar5, %struct.rar5* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %98 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %96, %99
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = load %struct.rar5*, %struct.rar5** %4, align 8
  %105 = getelementptr inbounds %struct.rar5, %struct.rar5* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = and i64 %103, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32 @read_filter_data(%struct.rar5* %92, i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = and i32 %111, -2147483648
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %85
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %115, %116
  %118 = and i32 %117, -2147483648
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load %struct.rar5*, %struct.rar5** %4, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 16777216
  %125 = call i32 @write_filter_data(%struct.rar5* %121, i32 %122, i32 %124)
  br label %126

126:                                              ; preds = %120, %114
  br label %141

127:                                              ; preds = %85
  %128 = load i32, i32* %10, align 4
  %129 = sub nsw i32 %128, 16777216
  %130 = and i32 %129, -2147483648
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %12, align 4
  %136 = load %struct.rar5*, %struct.rar5** %4, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @write_filter_data(%struct.rar5* %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %132, %127
  br label %141

141:                                              ; preds = %140, %126
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 4
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %141, %82, %79
  br label %46

145:                                              ; preds = %46
  %146 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %146
}

declare dso_local i32 @circular_memcpy(i32, i32*, i64, i32, i32) #1

declare dso_local i32 @read_filter_data(%struct.rar5*, i32) #1

declare dso_local i32 @write_filter_data(%struct.rar5*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
