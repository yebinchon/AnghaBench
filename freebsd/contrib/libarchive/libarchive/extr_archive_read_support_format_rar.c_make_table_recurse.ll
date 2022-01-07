; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_make_table_recurse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_make_table_recurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.huffman_code = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.huffman_table_entry = type { i32, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Huffman tree was not created.\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Invalid location to Huffman tree specified.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.huffman_code*, i32, %struct.huffman_table_entry*, i32, i32)* @make_table_recurse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_table_recurse(%struct.archive_read* %0, %struct.huffman_code* %1, i32 %2, %struct.huffman_table_entry* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_read*, align 8
  %9 = alloca %struct.huffman_code*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.huffman_table_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %8, align 8
  store %struct.huffman_code* %1, %struct.huffman_code** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.huffman_table_entry* %3, %struct.huffman_table_entry** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %17, i32* %16, align 4
  %18 = load %struct.huffman_code*, %struct.huffman_code** %9, align 8
  %19 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %6
  %23 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %24 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %23, i32 0, i32 0
  %25 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %26 = call i32 @archive_set_error(i32* %24, i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %27, i32* %7, align 4
  br label %179

28:                                               ; preds = %6
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.huffman_code*, %struct.huffman_code** %9, align 8
  %34 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31, %28
  %38 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %39 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %38, i32 0, i32 0
  %40 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %41 = call i32 @archive_set_error(i32* %39, i32 %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %42, i32* %7, align 4
  br label %179

43:                                               ; preds = %31
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = sub nsw i32 %44, %45
  %47 = shl i32 1, %46
  store i32 %47, i32* %14, align 4
  %48 = load %struct.huffman_code*, %struct.huffman_code** %9, align 8
  %49 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.huffman_code*, %struct.huffman_code** %9, align 8
  %59 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %57, %67
  br i1 %68, label %69, label %100

69:                                               ; preds = %43
  store i32 0, i32* %15, align 4
  br label %70

70:                                               ; preds = %96, %69
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %70
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %11, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %76, i64 %78
  %80 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %79, i32 0, i32 0
  store i32 %75, i32* %80, align 4
  %81 = load %struct.huffman_code*, %struct.huffman_code** %9, align 8
  %82 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %11, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %91, i64 %93
  %95 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %94, i32 0, i32 1
  store i32 %90, i32* %95, align 4
  br label %96

96:                                               ; preds = %74
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %15, align 4
  br label %70

99:                                               ; preds = %70
  br label %177

100:                                              ; preds = %43
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %100
  store i32 0, i32* %15, align 4
  br label %104

104:                                              ; preds = %114, %103
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %11, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %109, i64 %111
  %113 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %112, i32 0, i32 0
  store i32 -1, i32* %113, align 4
  br label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %104

117:                                              ; preds = %104
  br label %176

118:                                              ; preds = %100
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  %125 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %11, align 8
  %126 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %125, i64 0
  %127 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %11, align 8
  %130 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %129, i64 0
  %131 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  br label %175

132:                                              ; preds = %118
  %133 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %134 = load %struct.huffman_code*, %struct.huffman_code** %9, align 8
  %135 = load %struct.huffman_code*, %struct.huffman_code** %9, align 8
  %136 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %135, i32 0, i32 1
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %11, align 8
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @make_table_recurse(%struct.archive_read* %133, %struct.huffman_code* %134, i32 %144, %struct.huffman_table_entry* %145, i32 %147, i32 %148)
  %150 = load i32, i32* %16, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %16, align 4
  %152 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %153 = load %struct.huffman_code*, %struct.huffman_code** %9, align 8
  %154 = load %struct.huffman_code*, %struct.huffman_code** %9, align 8
  %155 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %154, i32 0, i32 1
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %11, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sdiv i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %164, i64 %167
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  %171 = load i32, i32* %13, align 4
  %172 = call i32 @make_table_recurse(%struct.archive_read* %152, %struct.huffman_code* %153, i32 %163, %struct.huffman_table_entry* %168, i32 %170, i32 %171)
  %173 = load i32, i32* %16, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %16, align 4
  br label %175

175:                                              ; preds = %132, %122
  br label %176

176:                                              ; preds = %175, %117
  br label %177

177:                                              ; preds = %176, %99
  %178 = load i32, i32* %16, align 4
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %177, %37, %22
  %180 = load i32, i32* %7, align 4
  ret i32 %180
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
