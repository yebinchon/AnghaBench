; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_file_descriptors.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_file_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.iso9660* }
%struct.iso9660 = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.isofile* }
%struct.isofile = type { %struct.TYPE_8__*, %struct.TYPE_8__, i32, %struct.isofile* }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { %struct.isofile* }

@LOGICAL_BLOCK_BITS = common dso_local global i64 0, align 8
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @write_file_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_file_descriptors(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.iso9660*, align 8
  %5 = alloca %struct.isofile*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %9 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %10 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %9, i32 0, i32 0
  %11 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  store %struct.iso9660* %11, %struct.iso9660** %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %13 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %19 = call i32 @make_boot_catalog(%struct.archive_write* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %2, align 4
  br label %153

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %27 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %61

31:                                               ; preds = %25
  %32 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %33 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.isofile*, %struct.isofile** %36, align 8
  store %struct.isofile* %37, %struct.isofile** %5, align 8
  %38 = load %struct.isofile*, %struct.isofile** %5, align 8
  %39 = getelementptr inbounds %struct.isofile, %struct.isofile* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %6, align 8
  %42 = load %struct.isofile*, %struct.isofile** %5, align 8
  %43 = getelementptr inbounds %struct.isofile, %struct.isofile* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %31
  %49 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @LOGICAL_BLOCK_BITS, align 8
  %53 = shl i64 %51, %52
  %54 = call i32 @write_file_contents(%struct.archive_write* %49, i64 %50, i64 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %2, align 4
  br label %153

59:                                               ; preds = %48
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %60

60:                                               ; preds = %59, %31
  br label %61

61:                                               ; preds = %60, %25
  %62 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %63 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.isofile*, %struct.isofile** %64, align 8
  store %struct.isofile* %65, %struct.isofile** %5, align 8
  br label %66

66:                                               ; preds = %132, %61
  %67 = load %struct.isofile*, %struct.isofile** %5, align 8
  %68 = icmp ne %struct.isofile* %67, null
  br i1 %68, label %69, label %136

69:                                               ; preds = %66
  %70 = load %struct.isofile*, %struct.isofile** %5, align 8
  %71 = getelementptr inbounds %struct.isofile, %struct.isofile* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %132

75:                                               ; preds = %69
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @LOGICAL_BLOCK_BITS, align 8
  %79 = shl i64 %77, %78
  %80 = add nsw i64 %76, %79
  %81 = load %struct.isofile*, %struct.isofile** %5, align 8
  %82 = getelementptr inbounds %struct.isofile, %struct.isofile* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %80, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %75
  %87 = load i64, i64* %6, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* @LOGICAL_BLOCK_BITS, align 8
  %94 = shl i64 %92, %93
  %95 = call i32 @write_file_contents(%struct.archive_write* %90, i64 %91, i64 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %2, align 4
  br label %153

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %86
  store i64 0, i64* %6, align 8
  %102 = load %struct.isofile*, %struct.isofile** %5, align 8
  %103 = getelementptr inbounds %struct.isofile, %struct.isofile* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %7, align 8
  br label %106

106:                                              ; preds = %101, %75
  %107 = load %struct.isofile*, %struct.isofile** %5, align 8
  %108 = getelementptr inbounds %struct.isofile, %struct.isofile* %107, i32 0, i32 1
  %109 = load %struct.isofile*, %struct.isofile** %5, align 8
  %110 = getelementptr inbounds %struct.isofile, %struct.isofile* %109, i32 0, i32 0
  store %struct.TYPE_8__* %108, %struct.TYPE_8__** %110, align 8
  br label %111

111:                                              ; preds = %126, %106
  %112 = load %struct.isofile*, %struct.isofile** %5, align 8
  %113 = getelementptr inbounds %struct.isofile, %struct.isofile* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %6, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* %6, align 8
  %119 = load %struct.isofile*, %struct.isofile** %5, align 8
  %120 = getelementptr inbounds %struct.isofile, %struct.isofile* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = load %struct.isofile*, %struct.isofile** %5, align 8
  %125 = getelementptr inbounds %struct.isofile, %struct.isofile* %124, i32 0, i32 0
  store %struct.TYPE_8__* %123, %struct.TYPE_8__** %125, align 8
  br label %126

126:                                              ; preds = %111
  %127 = load %struct.isofile*, %struct.isofile** %5, align 8
  %128 = getelementptr inbounds %struct.isofile, %struct.isofile* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = icmp ne %struct.TYPE_8__* %129, null
  br i1 %130, label %111, label %131

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131, %74
  %133 = load %struct.isofile*, %struct.isofile** %5, align 8
  %134 = getelementptr inbounds %struct.isofile, %struct.isofile* %133, i32 0, i32 3
  %135 = load %struct.isofile*, %struct.isofile** %134, align 8
  store %struct.isofile* %135, %struct.isofile** %5, align 8
  br label %66

136:                                              ; preds = %66
  %137 = load i64, i64* %6, align 8
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %136
  %140 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* %6, align 8
  %143 = load i64, i64* @LOGICAL_BLOCK_BITS, align 8
  %144 = shl i64 %142, %143
  %145 = call i32 @write_file_contents(%struct.archive_write* %140, i64 %141, i64 %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %2, align 4
  br label %153

150:                                              ; preds = %139
  br label %151

151:                                              ; preds = %150, %136
  %152 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %151, %148, %98, %57, %22
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @make_boot_catalog(%struct.archive_write*) #1

declare dso_local i32 @write_file_contents(%struct.archive_write*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
