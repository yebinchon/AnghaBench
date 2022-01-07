; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_setup_directory_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_setup_directory_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso9660 = type { i32 }
%struct.vdd = type { i32, i64, %struct.isoent* }
%struct.isoent = type { i32, %struct.isoent*, %struct.isoent*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.isoent* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iso9660*, i32, %struct.vdd*)* @isoent_setup_directory_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isoent_setup_directory_location(%struct.iso9660* %0, i32 %1, %struct.vdd* %2) #0 {
  %4 = alloca %struct.iso9660*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vdd*, align 8
  %7 = alloca %struct.isoent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iso9660* %0, %struct.iso9660** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vdd* %2, %struct.vdd** %6, align 8
  %10 = load %struct.vdd*, %struct.vdd** %6, align 8
  %11 = getelementptr inbounds %struct.vdd, %struct.vdd* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.vdd*, %struct.vdd** %6, align 8
  %13 = getelementptr inbounds %struct.vdd, %struct.vdd* %12, i32 0, i32 2
  %14 = load %struct.isoent*, %struct.isoent** %13, align 8
  store %struct.isoent* %14, %struct.isoent** %7, align 8
  br label %15

15:                                               ; preds = %95, %3
  %16 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %17 = load %struct.vdd*, %struct.vdd** %6, align 8
  %18 = load %struct.isoent*, %struct.isoent** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @calculate_directory_descriptors(%struct.iso9660* %16, %struct.vdd* %17, %struct.isoent* %18, i32 %19)
  %21 = load %struct.isoent*, %struct.isoent** %7, align 8
  %22 = getelementptr inbounds %struct.isoent, %struct.isoent* %21, i32 0, i32 4
  store i64 %20, i64* %22, align 8
  %23 = load %struct.isoent*, %struct.isoent** %7, align 8
  %24 = getelementptr inbounds %struct.isoent, %struct.isoent* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.vdd*, %struct.vdd** %6, align 8
  %27 = getelementptr inbounds %struct.vdd, %struct.vdd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, %25
  store i64 %29, i64* %27, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.isoent*, %struct.isoent** %7, align 8
  %32 = getelementptr inbounds %struct.isoent, %struct.isoent* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.isoent*, %struct.isoent** %7, align 8
  %34 = getelementptr inbounds %struct.isoent, %struct.isoent* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = load %struct.isoent*, %struct.isoent** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @extra_setup_location(%struct.isoent* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.vdd*, %struct.vdd** %6, align 8
  %46 = getelementptr inbounds %struct.vdd, %struct.vdd* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.isoent*, %struct.isoent** %7, align 8
  %53 = getelementptr inbounds %struct.isoent, %struct.isoent* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.isoent*, %struct.isoent** %54, align 8
  %56 = icmp ne %struct.isoent* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %15
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  %60 = load %struct.vdd*, %struct.vdd** %6, align 8
  %61 = getelementptr inbounds %struct.vdd, %struct.vdd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load %struct.isoent*, %struct.isoent** %7, align 8
  %66 = getelementptr inbounds %struct.isoent, %struct.isoent* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.isoent*, %struct.isoent** %67, align 8
  store %struct.isoent* %68, %struct.isoent** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %95

71:                                               ; preds = %57, %15
  br label %72

72:                                               ; preds = %93, %71
  %73 = load %struct.isoent*, %struct.isoent** %7, align 8
  %74 = load %struct.isoent*, %struct.isoent** %7, align 8
  %75 = getelementptr inbounds %struct.isoent, %struct.isoent* %74, i32 0, i32 2
  %76 = load %struct.isoent*, %struct.isoent** %75, align 8
  %77 = icmp ne %struct.isoent* %73, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = load %struct.isoent*, %struct.isoent** %7, align 8
  %80 = getelementptr inbounds %struct.isoent, %struct.isoent* %79, i32 0, i32 1
  %81 = load %struct.isoent*, %struct.isoent** %80, align 8
  %82 = icmp eq %struct.isoent* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.isoent*, %struct.isoent** %7, align 8
  %85 = getelementptr inbounds %struct.isoent, %struct.isoent* %84, i32 0, i32 2
  %86 = load %struct.isoent*, %struct.isoent** %85, align 8
  store %struct.isoent* %86, %struct.isoent** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %8, align 4
  br label %93

89:                                               ; preds = %78
  %90 = load %struct.isoent*, %struct.isoent** %7, align 8
  %91 = getelementptr inbounds %struct.isoent, %struct.isoent* %90, i32 0, i32 1
  %92 = load %struct.isoent*, %struct.isoent** %91, align 8
  store %struct.isoent* %92, %struct.isoent** %7, align 8
  br label %94

93:                                               ; preds = %83
  br label %72

94:                                               ; preds = %89, %72
  br label %95

95:                                               ; preds = %94, %64
  %96 = load %struct.isoent*, %struct.isoent** %7, align 8
  %97 = load %struct.isoent*, %struct.isoent** %7, align 8
  %98 = getelementptr inbounds %struct.isoent, %struct.isoent* %97, i32 0, i32 2
  %99 = load %struct.isoent*, %struct.isoent** %98, align 8
  %100 = icmp ne %struct.isoent* %96, %99
  br i1 %100, label %15, label %101

101:                                              ; preds = %95
  ret void
}

declare dso_local i64 @calculate_directory_descriptors(%struct.iso9660*, %struct.vdd*, %struct.isoent*, i32) #1

declare dso_local i32 @extra_setup_location(%struct.isoent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
