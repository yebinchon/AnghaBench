; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_decode_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_decode_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.decode_table = type { i32*, i64, i32*, i32*, i64*, i64, i32* }
%struct.rar5 = type { i32 }

@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.decode_table*, i32*, i32*)* @decode_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_number(%struct.archive_read* %0, %struct.decode_table* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.decode_table*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.rar5*, align 8
  %16 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.decode_table* %1, %struct.decode_table** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %18 = call %struct.rar5* @get_context(%struct.archive_read* %17)
  store %struct.rar5* %18, %struct.rar5** %15, align 8
  %19 = load i64, i64* @ARCHIVE_OK, align 8
  %20 = load %struct.rar5*, %struct.rar5** %15, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @read_bits_16(%struct.rar5* %20, i32* %21, i32* %13)
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %25, i32* %5, align 4
  br label %135

26:                                               ; preds = %4
  %27 = load i32, i32* %13, align 4
  %28 = and i32 %27, 65534
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.decode_table*, %struct.decode_table** %7, align 8
  %31 = getelementptr inbounds %struct.decode_table, %struct.decode_table* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.decode_table*, %struct.decode_table** %7, align 8
  %34 = getelementptr inbounds %struct.decode_table, %struct.decode_table* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %29, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %26
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.decode_table*, %struct.decode_table** %7, align 8
  %42 = getelementptr inbounds %struct.decode_table, %struct.decode_table* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 16, %43
  %45 = trunc i64 %44 to i32
  %46 = ashr i32 %40, %45
  store i32 %46, i32* %16, align 4
  %47 = load %struct.rar5*, %struct.rar5** %15, align 8
  %48 = load %struct.decode_table*, %struct.decode_table** %7, align 8
  %49 = getelementptr inbounds %struct.decode_table, %struct.decode_table* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @skip_bits(%struct.rar5* %47, i32 %54)
  %56 = load %struct.decode_table*, %struct.decode_table** %7, align 8
  %57 = getelementptr inbounds %struct.decode_table, %struct.decode_table* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i64, i64* @ARCHIVE_OK, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %135

66:                                               ; preds = %26
  store i32 15, i32* %11, align 4
  %67 = load %struct.decode_table*, %struct.decode_table** %7, align 8
  %68 = getelementptr inbounds %struct.decode_table, %struct.decode_table* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %88, %66
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 15
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.decode_table*, %struct.decode_table** %7, align 8
  %78 = getelementptr inbounds %struct.decode_table, %struct.decode_table* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %76, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %11, align 4
  br label %91

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %72

91:                                               ; preds = %85, %72
  %92 = load %struct.rar5*, %struct.rar5** %15, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @skip_bits(%struct.rar5* %92, i32 %93)
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.decode_table*, %struct.decode_table** %7, align 8
  %97 = getelementptr inbounds %struct.decode_table, %struct.decode_table* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %95, %103
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = sub nsw i32 16, %105
  %107 = load i32, i32* %12, align 4
  %108 = ashr i32 %107, %106
  store i32 %108, i32* %12, align 4
  %109 = load %struct.decode_table*, %struct.decode_table** %7, align 8
  %110 = getelementptr inbounds %struct.decode_table, %struct.decode_table* %109, i32 0, i32 4
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 %115, %117
  store i64 %118, i64* %14, align 8
  %119 = load i64, i64* %14, align 8
  %120 = load %struct.decode_table*, %struct.decode_table** %7, align 8
  %121 = getelementptr inbounds %struct.decode_table, %struct.decode_table* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = icmp uge i64 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %91
  store i64 0, i64* %14, align 8
  br label %125

125:                                              ; preds = %124, %91
  %126 = load %struct.decode_table*, %struct.decode_table** %7, align 8
  %127 = getelementptr inbounds %struct.decode_table, %struct.decode_table* %126, i32 0, i32 6
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* %14, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %9, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i64, i64* @ARCHIVE_OK, align 8
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %125, %39, %24
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local %struct.rar5* @get_context(%struct.archive_read*) #1

declare dso_local i64 @read_bits_16(%struct.rar5*, i32*, i32*) #1

declare dso_local i32 @skip_bits(%struct.rar5*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
