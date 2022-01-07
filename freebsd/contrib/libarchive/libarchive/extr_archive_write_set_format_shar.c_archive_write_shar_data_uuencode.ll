; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_shar.c_archive_write_shar_data_uuencode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_shar.c_archive_write_shar_data_uuencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i64 }
%struct.shar = type { i32, i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_FATAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive_write*, i8*, i64)* @archive_write_shar_data_uuencode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @archive_write_shar_data_uuencode(%struct.archive_write* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.shar*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %13 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.shar*
  store %struct.shar* %15, %struct.shar** %8, align 8
  %16 = load %struct.shar*, %struct.shar** %8, align 8
  %17 = getelementptr inbounds %struct.shar, %struct.shar* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* @ARCHIVE_OK, align 8
  store i64 %21, i64* %4, align 8
  br label %138

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %9, align 8
  %24 = load %struct.shar*, %struct.shar** %8, align 8
  %25 = getelementptr inbounds %struct.shar, %struct.shar* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %80

28:                                               ; preds = %22
  %29 = load %struct.shar*, %struct.shar** %8, align 8
  %30 = getelementptr inbounds %struct.shar, %struct.shar* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 45, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %37, %28
  %40 = load %struct.shar*, %struct.shar** %8, align 8
  %41 = getelementptr inbounds %struct.shar, %struct.shar* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.shar*, %struct.shar** %8, align 8
  %44 = getelementptr inbounds %struct.shar, %struct.shar* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  %48 = load i8*, i8** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @memcpy(i8* %47, i8* %48, i64 %49)
  %51 = load %struct.shar*, %struct.shar** %8, align 8
  %52 = getelementptr inbounds %struct.shar, %struct.shar* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %54, %55
  %57 = icmp ult i64 %56, 45
  br i1 %57, label %58, label %67

58:                                               ; preds = %39
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.shar*, %struct.shar** %8, align 8
  %61 = getelementptr inbounds %struct.shar, %struct.shar* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, %59
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 8
  %66 = load i64, i64* %7, align 8
  store i64 %66, i64* %4, align 8
  br label %138

67:                                               ; preds = %39
  %68 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %69 = load %struct.shar*, %struct.shar** %8, align 8
  %70 = load %struct.shar*, %struct.shar** %8, align 8
  %71 = getelementptr inbounds %struct.shar, %struct.shar* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @uuencode_line(%struct.archive_write* %68, %struct.shar* %69, i8* %72, i32 45)
  %74 = load i64, i64* %10, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 %74
  store i8* %76, i8** %9, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %10, align 8
  %79 = sub i64 %77, %78
  store i64 %79, i64* %10, align 8
  br label %82

80:                                               ; preds = %22
  %81 = load i64, i64* %7, align 8
  store i64 %81, i64* %10, align 8
  br label %82

82:                                               ; preds = %80, %67
  br label %83

83:                                               ; preds = %118, %100, %82
  %84 = load i64, i64* %10, align 8
  %85 = icmp uge i64 %84, 45
  br i1 %85, label %86, label %122

86:                                               ; preds = %83
  %87 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %88 = load %struct.shar*, %struct.shar** %8, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @uuencode_line(%struct.archive_write* %87, %struct.shar* %88, i8* %89, i32 45)
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 45
  store i8* %92, i8** %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = sub i64 %93, 45
  store i64 %94, i64* %10, align 8
  %95 = load %struct.shar*, %struct.shar** %8, align 8
  %96 = getelementptr inbounds %struct.shar, %struct.shar* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %98, 65536
  br i1 %99, label %100, label %101

100:                                              ; preds = %86
  br label %83

101:                                              ; preds = %86
  %102 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %103 = load %struct.shar*, %struct.shar** %8, align 8
  %104 = getelementptr inbounds %struct.shar, %struct.shar* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.shar*, %struct.shar** %8, align 8
  %108 = getelementptr inbounds %struct.shar, %struct.shar* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @__archive_write_output(%struct.archive_write* %102, i32 %106, i32 %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* @ARCHIVE_OK, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %101
  %117 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %117, i64* %4, align 8
  br label %138

118:                                              ; preds = %101
  %119 = load %struct.shar*, %struct.shar** %8, align 8
  %120 = getelementptr inbounds %struct.shar, %struct.shar* %119, i32 0, i32 2
  %121 = call i32 @archive_string_empty(%struct.TYPE_2__* %120)
  br label %83

122:                                              ; preds = %83
  %123 = load i64, i64* %10, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load %struct.shar*, %struct.shar** %8, align 8
  %127 = getelementptr inbounds %struct.shar, %struct.shar* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = load i64, i64* %10, align 8
  %131 = call i32 @memcpy(i8* %128, i8* %129, i64 %130)
  %132 = load i64, i64* %10, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.shar*, %struct.shar** %8, align 8
  %135 = getelementptr inbounds %struct.shar, %struct.shar* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %125, %122
  %137 = load i64, i64* %7, align 8
  store i64 %137, i64* %4, align 8
  br label %138

138:                                              ; preds = %136, %116, %58, %20
  %139 = load i64, i64* %4, align 8
  ret i64 %139
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @uuencode_line(%struct.archive_write*, %struct.shar*, i8*, i32) #1

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i32, i32) #1

declare dso_local i32 @archive_string_empty(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
