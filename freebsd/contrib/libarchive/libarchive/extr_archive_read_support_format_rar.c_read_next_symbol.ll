; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_read_next_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_read_next_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.huffman_code = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.rar = type { i64, %struct.rar_br }
%struct.rar_br = type { i32 }

@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Truncated RAR file data\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid prefix code in bitstream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.huffman_code*)* @read_next_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_next_symbol(%struct.archive_read* %0, %struct.huffman_code* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.huffman_code*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rar*, align 8
  %12 = alloca %struct.rar_br*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.huffman_code* %1, %struct.huffman_code** %5, align 8
  %13 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %14 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %19 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %20 = call i64 @make_table(%struct.archive_read* %18, %struct.huffman_code* %19)
  %21 = load i64, i64* @ARCHIVE_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %179

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %27 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.rar*
  store %struct.rar* %31, %struct.rar** %11, align 8
  %32 = load %struct.rar*, %struct.rar** %11, align 8
  %33 = getelementptr inbounds %struct.rar, %struct.rar* %32, i32 0, i32 1
  store %struct.rar_br* %33, %struct.rar_br** %12, align 8
  %34 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %35 = load %struct.rar_br*, %struct.rar_br** %12, align 8
  %36 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %37 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @rar_br_read_ahead(%struct.archive_read* %34, %struct.rar_br* %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %25
  %42 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %43 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %42, i32 0, i32 0
  %44 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %45 = call i32 @archive_set_error(i32* %43, i32 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.rar*, %struct.rar** %11, align 8
  %47 = getelementptr inbounds %struct.rar, %struct.rar* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  store i32 -1, i32* %3, align 4
  br label %179

48:                                               ; preds = %25
  %49 = load %struct.rar_br*, %struct.rar_br** %12, align 8
  %50 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %51 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @rar_br_bits(%struct.rar_br* %49, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %7, align 4
  %55 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %56 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  %63 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %64 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %48
  %74 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %75 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %74, i32 0, i32 0
  %76 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %77 = call i32 @archive_set_error(i32* %75, i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %179

78:                                               ; preds = %48
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %81 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sle i32 %79, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.rar_br*, %struct.rar_br** %12, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @rar_br_consume(%struct.rar_br* %85, i32 %86)
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %179

89:                                               ; preds = %78
  %90 = load %struct.rar_br*, %struct.rar_br** %12, align 8
  %91 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %92 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @rar_br_consume(%struct.rar_br* %90, i32 %93)
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %155, %89
  %97 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %98 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %108 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %106, %116
  %118 = xor i1 %117, true
  br i1 %118, label %119, label %168

119:                                              ; preds = %96
  %120 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %121 = load %struct.rar_br*, %struct.rar_br** %12, align 8
  %122 = call i32 @rar_br_read_ahead(%struct.archive_read* %120, %struct.rar_br* %121, i32 1)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %119
  %125 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %126 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %125, i32 0, i32 0
  %127 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %128 = call i32 @archive_set_error(i32* %126, i32 %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %129 = load %struct.rar*, %struct.rar** %11, align 8
  %130 = getelementptr inbounds %struct.rar, %struct.rar* %129, i32 0, i32 0
  store i64 0, i64* %130, align 8
  store i32 -1, i32* %3, align 4
  br label %179

131:                                              ; preds = %119
  %132 = load %struct.rar_br*, %struct.rar_br** %12, align 8
  %133 = call i8* @rar_br_bits(%struct.rar_br* %132, i32 1)
  %134 = ptrtoint i8* %133 to i8
  store i8 %134, i8* %6, align 1
  %135 = load %struct.rar_br*, %struct.rar_br** %12, align 8
  %136 = call i32 @rar_br_consume(%struct.rar_br* %135, i32 1)
  %137 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %138 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %137, i32 0, i32 1
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i8, i8* %6, align 1
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %131
  %151 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %152 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %151, i32 0, i32 0
  %153 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %154 = call i32 @archive_set_error(i32* %152, i32 %153, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %179

155:                                              ; preds = %131
  %156 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %157 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %156, i32 0, i32 1
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i8, i8* %6, align 1
  %165 = zext i8 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %10, align 4
  br label %96

168:                                              ; preds = %96
  %169 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %170 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %169, i32 0, i32 1
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %168, %150, %124, %84, %73, %41, %23
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i64 @make_table(%struct.archive_read*, %struct.huffman_code*) #1

declare dso_local i32 @rar_br_read_ahead(%struct.archive_read*, %struct.rar_br*, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i8* @rar_br_bits(%struct.rar_br*, i32) #1

declare dso_local i32 @rar_br_consume(%struct.rar_br*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
