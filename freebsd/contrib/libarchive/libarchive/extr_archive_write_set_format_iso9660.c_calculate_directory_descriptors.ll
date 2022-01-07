; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_calculate_directory_descriptors.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_calculate_directory_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso9660 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vdd = type { i64, i32 }
%struct.isoent = type { %struct.isofile*, %struct.TYPE_5__, %struct.isoent** }
%struct.isofile = type { %struct.TYPE_6__*, %struct.TYPE_6__, %struct.isofile* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }

@DIR_REC_SELF = common dso_local global i32 0, align 4
@DIR_REC_PARENT = common dso_local global i32 0, align 4
@VDD_JOLIET = common dso_local global i64 0, align 8
@DIR_REC_NORMAL = common dso_local global i32 0, align 4
@LOGICAL_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iso9660*, %struct.vdd*, %struct.isoent*, i32)* @calculate_directory_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_directory_descriptors(%struct.iso9660* %0, %struct.vdd* %1, %struct.isoent* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iso9660*, align 8
  %7 = alloca %struct.vdd*, align 8
  %8 = alloca %struct.isoent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.isoent**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.isoent*, align 8
  %15 = alloca %struct.isofile*, align 8
  %16 = alloca i32, align 4
  store %struct.iso9660* %0, %struct.iso9660** %6, align 8
  store %struct.vdd* %1, %struct.vdd** %7, align 8
  store %struct.isoent* %2, %struct.isoent** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %12, align 4
  %17 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %18 = load %struct.isoent*, %struct.isoent** %8, align 8
  %19 = load i32, i32* @DIR_REC_SELF, align 4
  %20 = load %struct.vdd*, %struct.vdd** %7, align 8
  %21 = getelementptr inbounds %struct.vdd, %struct.vdd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @get_dir_rec_size(%struct.iso9660* %17, %struct.isoent* %18, i32 %19, i64 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %25 = load %struct.isoent*, %struct.isoent** %8, align 8
  %26 = load i32, i32* @DIR_REC_PARENT, align 4
  %27 = load %struct.vdd*, %struct.vdd** %7, align 8
  %28 = getelementptr inbounds %struct.vdd, %struct.vdd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @get_dir_rec_size(%struct.iso9660* %24, %struct.isoent* %25, i32 %26, i64 %29)
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %11, align 4
  %33 = load %struct.isoent*, %struct.isoent** %8, align 8
  %34 = getelementptr inbounds %struct.isoent, %struct.isoent* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %4
  %39 = load %struct.vdd*, %struct.vdd** %7, align 8
  %40 = getelementptr inbounds %struct.vdd, %struct.vdd* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VDD_JOLIET, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %46 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  %53 = load %struct.vdd*, %struct.vdd** %7, align 8
  %54 = getelementptr inbounds %struct.vdd, %struct.vdd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %52, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50, %4
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %5, align 4
  br label %132

59:                                               ; preds = %50, %44, %38
  %60 = load %struct.isoent*, %struct.isoent** %8, align 8
  %61 = getelementptr inbounds %struct.isoent, %struct.isoent* %60, i32 0, i32 2
  %62 = load %struct.isoent**, %struct.isoent*** %61, align 8
  store %struct.isoent** %62, %struct.isoent*** %10, align 8
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %127, %59
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.isoent*, %struct.isoent** %8, align 8
  %66 = getelementptr inbounds %struct.isoent, %struct.isoent* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %64, %68
  br i1 %69, label %70, label %130

70:                                               ; preds = %63
  %71 = load %struct.isoent**, %struct.isoent*** %10, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.isoent*, %struct.isoent** %71, i64 %73
  %75 = load %struct.isoent*, %struct.isoent** %74, align 8
  store %struct.isoent* %75, %struct.isoent** %14, align 8
  %76 = load %struct.isoent*, %struct.isoent** %14, align 8
  %77 = getelementptr inbounds %struct.isoent, %struct.isoent* %76, i32 0, i32 0
  %78 = load %struct.isofile*, %struct.isofile** %77, align 8
  store %struct.isofile* %78, %struct.isofile** %15, align 8
  %79 = load %struct.isofile*, %struct.isofile** %15, align 8
  %80 = getelementptr inbounds %struct.isofile, %struct.isofile* %79, i32 0, i32 2
  %81 = load %struct.isofile*, %struct.isofile** %80, align 8
  %82 = icmp ne %struct.isofile* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %70
  %84 = load %struct.isofile*, %struct.isofile** %15, align 8
  %85 = getelementptr inbounds %struct.isofile, %struct.isofile* %84, i32 0, i32 2
  %86 = load %struct.isofile*, %struct.isofile** %85, align 8
  store %struct.isofile* %86, %struct.isofile** %15, align 8
  br label %87

87:                                               ; preds = %83, %70
  %88 = load %struct.isofile*, %struct.isofile** %15, align 8
  %89 = getelementptr inbounds %struct.isofile, %struct.isofile* %88, i32 0, i32 1
  %90 = load %struct.isofile*, %struct.isofile** %15, align 8
  %91 = getelementptr inbounds %struct.isofile, %struct.isofile* %90, i32 0, i32 0
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %91, align 8
  br label %92

92:                                               ; preds = %121, %87
  %93 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %94 = load %struct.isoent*, %struct.isoent** %14, align 8
  %95 = load i32, i32* @DIR_REC_NORMAL, align 4
  %96 = load %struct.vdd*, %struct.vdd** %7, align 8
  %97 = getelementptr inbounds %struct.vdd, %struct.vdd* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @get_dir_rec_size(%struct.iso9660* %93, %struct.isoent* %94, i32 %95, i64 %98)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %92
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %11, align 4
  br label %113

109:                                              ; preds = %92
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %109, %105
  %114 = load %struct.isofile*, %struct.isofile** %15, align 8
  %115 = getelementptr inbounds %struct.isofile, %struct.isofile* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load %struct.isofile*, %struct.isofile** %15, align 8
  %120 = getelementptr inbounds %struct.isofile, %struct.isofile* %119, i32 0, i32 0
  store %struct.TYPE_6__* %118, %struct.TYPE_6__** %120, align 8
  br label %121

121:                                              ; preds = %113
  %122 = load %struct.isofile*, %struct.isofile** %15, align 8
  %123 = getelementptr inbounds %struct.isofile, %struct.isofile* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = icmp ne %struct.TYPE_6__* %124, null
  br i1 %125, label %92, label %126

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  br label %63

130:                                              ; preds = %63
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %130, %57
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @get_dir_rec_size(%struct.iso9660*, %struct.isoent*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
