; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_directory_descriptors.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_directory_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.vdd = type { i64, i32, %struct.isoent* }
%struct.isoent = type { %struct.isoent*, %struct.isoent*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.isoent* }
%struct.TYPE_3__ = type { %struct.extr_rec* }
%struct.extr_rec = type { i32, i32, %struct.extr_rec* }

@VDD_JOLIET = common dso_local global i64 0, align 8
@LOGICAL_BLOCK_SIZE = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.vdd*)* @write_directory_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_directory_descriptors(%struct.archive_write* %0, %struct.vdd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.vdd*, align 8
  %6 = alloca %struct.isoent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.extr_rec*, align 8
  %10 = alloca i8*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.vdd* %1, %struct.vdd** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.vdd*, %struct.vdd** %5, align 8
  %12 = getelementptr inbounds %struct.vdd, %struct.vdd* %11, i32 0, i32 2
  %13 = load %struct.isoent*, %struct.isoent** %12, align 8
  store %struct.isoent* %13, %struct.isoent** %6, align 8
  br label %14

14:                                               ; preds = %118, %2
  %15 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %16 = load %struct.vdd*, %struct.vdd** %5, align 8
  %17 = load %struct.isoent*, %struct.isoent** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @_write_directory_descriptors(%struct.archive_write* %15, %struct.vdd* %16, %struct.isoent* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %126

24:                                               ; preds = %14
  %25 = load %struct.vdd*, %struct.vdd** %5, align 8
  %26 = getelementptr inbounds %struct.vdd, %struct.vdd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VDD_JOLIET, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %74

30:                                               ; preds = %24
  %31 = load %struct.isoent*, %struct.isoent** %6, align 8
  %32 = getelementptr inbounds %struct.isoent, %struct.isoent* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.extr_rec*, %struct.extr_rec** %33, align 8
  store %struct.extr_rec* %34, %struct.extr_rec** %9, align 8
  br label %35

35:                                               ; preds = %69, %30
  %36 = load %struct.extr_rec*, %struct.extr_rec** %9, align 8
  %37 = icmp ne %struct.extr_rec* %36, null
  br i1 %37, label %38, label %73

38:                                               ; preds = %35
  %39 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %40 = call i8* @wb_buffptr(%struct.archive_write* %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.extr_rec*, %struct.extr_rec** %9, align 8
  %43 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.extr_rec*, %struct.extr_rec** %9, align 8
  %46 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @memcpy(i8* %41, i32 %44, i32 %47)
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.extr_rec*, %struct.extr_rec** %9, align 8
  %51 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  %55 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %56 = load %struct.extr_rec*, %struct.extr_rec** %9, align 8
  %57 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %55, %58
  %60 = call i32 @memset(i8* %54, i32 0, i32 %59)
  %61 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %62 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %63 = call i32 @wb_consume(%struct.archive_write* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %38
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %126

68:                                               ; preds = %38
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.extr_rec*, %struct.extr_rec** %9, align 8
  %71 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %70, i32 0, i32 2
  %72 = load %struct.extr_rec*, %struct.extr_rec** %71, align 8
  store %struct.extr_rec* %72, %struct.extr_rec** %9, align 8
  br label %35

73:                                               ; preds = %35
  br label %74

74:                                               ; preds = %73, %24
  %75 = load %struct.isoent*, %struct.isoent** %6, align 8
  %76 = getelementptr inbounds %struct.isoent, %struct.isoent* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.isoent*, %struct.isoent** %77, align 8
  %79 = icmp ne %struct.isoent* %78, null
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  %83 = load %struct.vdd*, %struct.vdd** %5, align 8
  %84 = getelementptr inbounds %struct.vdd, %struct.vdd* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load %struct.isoent*, %struct.isoent** %6, align 8
  %89 = getelementptr inbounds %struct.isoent, %struct.isoent* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.isoent*, %struct.isoent** %90, align 8
  store %struct.isoent* %91, %struct.isoent** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %118

94:                                               ; preds = %80, %74
  br label %95

95:                                               ; preds = %116, %94
  %96 = load %struct.isoent*, %struct.isoent** %6, align 8
  %97 = load %struct.isoent*, %struct.isoent** %6, align 8
  %98 = getelementptr inbounds %struct.isoent, %struct.isoent* %97, i32 0, i32 1
  %99 = load %struct.isoent*, %struct.isoent** %98, align 8
  %100 = icmp ne %struct.isoent* %96, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %95
  %102 = load %struct.isoent*, %struct.isoent** %6, align 8
  %103 = getelementptr inbounds %struct.isoent, %struct.isoent* %102, i32 0, i32 0
  %104 = load %struct.isoent*, %struct.isoent** %103, align 8
  %105 = icmp eq %struct.isoent* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.isoent*, %struct.isoent** %6, align 8
  %108 = getelementptr inbounds %struct.isoent, %struct.isoent* %107, i32 0, i32 1
  %109 = load %struct.isoent*, %struct.isoent** %108, align 8
  store %struct.isoent* %109, %struct.isoent** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %7, align 4
  br label %116

112:                                              ; preds = %101
  %113 = load %struct.isoent*, %struct.isoent** %6, align 8
  %114 = getelementptr inbounds %struct.isoent, %struct.isoent* %113, i32 0, i32 0
  %115 = load %struct.isoent*, %struct.isoent** %114, align 8
  store %struct.isoent* %115, %struct.isoent** %6, align 8
  br label %117

116:                                              ; preds = %106
  br label %95

117:                                              ; preds = %112, %95
  br label %118

118:                                              ; preds = %117, %87
  %119 = load %struct.isoent*, %struct.isoent** %6, align 8
  %120 = load %struct.isoent*, %struct.isoent** %6, align 8
  %121 = getelementptr inbounds %struct.isoent, %struct.isoent* %120, i32 0, i32 1
  %122 = load %struct.isoent*, %struct.isoent** %121, align 8
  %123 = icmp ne %struct.isoent* %119, %122
  br i1 %123, label %14, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %124, %66, %22
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @_write_directory_descriptors(%struct.archive_write*, %struct.vdd*, %struct.isoent*, i32) #1

declare dso_local i8* @wb_buffptr(%struct.archive_write*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @wb_consume(%struct.archive_write*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
