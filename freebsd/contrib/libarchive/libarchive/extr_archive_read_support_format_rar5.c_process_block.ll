; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_process_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_process_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.rar5 = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i64, i64, i32* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @process_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_block(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rar5*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %10 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %11 = call %struct.rar5* @get_context(%struct.archive_read* %10)
  store %struct.rar5* %11, %struct.rar5** %5, align 8
  %12 = load %struct.rar5*, %struct.rar5** %5, align 8
  %13 = getelementptr inbounds %struct.rar5, %struct.rar5* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.rar5*, %struct.rar5** %5, align 8
  %19 = getelementptr inbounds %struct.rar5, %struct.rar5* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %25 = call i32 @advance_multivolume(%struct.archive_read* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %211

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %17, %1
  %33 = load %struct.rar5*, %struct.rar5** %5, align 8
  %34 = getelementptr inbounds %struct.rar5, %struct.rar5* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %145

38:                                               ; preds = %32
  %39 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %40 = call i32 @read_ahead(%struct.archive_read* %39, i32 6, i32** %4)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %43, i32* %2, align 4
  br label %211

44:                                               ; preds = %38
  %45 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.rar5*, %struct.rar5** %5, align 8
  %48 = getelementptr inbounds %struct.rar5, %struct.rar5* %47, i32 0, i32 2
  %49 = call i32 @parse_block_header(%struct.archive_read* %45, i32* %46, i64* %7, i32* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @ARCHIVE_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %211

55:                                               ; preds = %44
  %56 = load %struct.rar5*, %struct.rar5** %5, align 8
  %57 = getelementptr inbounds %struct.rar5, %struct.rar5* %56, i32 0, i32 2
  %58 = call i64 @bf_byte_count(i32* %57)
  %59 = add i64 4, %58
  %60 = add i64 %59, 1
  store i64 %60, i64* %8, align 8
  %61 = load i32, i32* @ARCHIVE_OK, align 4
  %62 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @consume(%struct.archive_read* %62, i64 %63)
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %67, i32* %2, align 4
  br label %211

68:                                               ; preds = %55
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.rar5*, %struct.rar5** %5, align 8
  %71 = getelementptr inbounds %struct.rar5, %struct.rar5* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, %69
  store i64 %74, i64* %72, align 8
  %75 = load %struct.rar5*, %struct.rar5** %5, align 8
  %76 = getelementptr inbounds %struct.rar5, %struct.rar5* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i64 @rar5_min(i64 %78, i64 %79)
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.rar5*, %struct.rar5** %5, align 8
  %83 = getelementptr inbounds %struct.rar5, %struct.rar5* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %81, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %68
  %88 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @merge_block(%struct.archive_read* %88, i64 %89, i32** %4)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @ARCHIVE_OK, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %211

96:                                               ; preds = %87
  %97 = load i64, i64* %7, align 8
  store i64 %97, i64* %9, align 8
  br label %111

98:                                               ; preds = %68
  %99 = load %struct.rar5*, %struct.rar5** %5, align 8
  %100 = getelementptr inbounds %struct.rar5, %struct.rar5* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %103 = load i64, i64* %9, align 8
  %104 = add nsw i64 4, %103
  %105 = trunc i64 %104 to i32
  %106 = call i32 @read_ahead(%struct.archive_read* %102, i32 %105, i32** %4)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %98
  %109 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %109, i32* %2, align 4
  br label %211

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110, %96
  %112 = load i32*, i32** %4, align 8
  %113 = load %struct.rar5*, %struct.rar5** %5, align 8
  %114 = getelementptr inbounds %struct.rar5, %struct.rar5* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  store i32* %112, i32** %115, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.rar5*, %struct.rar5** %5, align 8
  %118 = getelementptr inbounds %struct.rar5, %struct.rar5* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store i64 %116, i64* %119, align 8
  %120 = load %struct.rar5*, %struct.rar5** %5, align 8
  %121 = getelementptr inbounds %struct.rar5, %struct.rar5* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  store i64 0, i64* %122, align 8
  %123 = load %struct.rar5*, %struct.rar5** %5, align 8
  %124 = getelementptr inbounds %struct.rar5, %struct.rar5* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = load %struct.rar5*, %struct.rar5** %5, align 8
  %127 = getelementptr inbounds %struct.rar5, %struct.rar5* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  %129 = load %struct.rar5*, %struct.rar5** %5, align 8
  %130 = getelementptr inbounds %struct.rar5, %struct.rar5* %129, i32 0, i32 2
  %131 = call i64 @bf_is_table_present(i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %111
  %134 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %135 = load %struct.rar5*, %struct.rar5** %5, align 8
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @parse_tables(%struct.archive_read* %134, %struct.rar5* %135, i32* %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @ARCHIVE_OK, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %2, align 4
  br label %211

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %143, %111
  br label %150

145:                                              ; preds = %32
  %146 = load %struct.rar5*, %struct.rar5** %5, align 8
  %147 = getelementptr inbounds %struct.rar5, %struct.rar5* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  store i32* %149, i32** %4, align 8
  br label %150

150:                                              ; preds = %145, %144
  %151 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %152 = load i32*, i32** %4, align 8
  %153 = call i32 @do_uncompress_block(%struct.archive_read* %151, i32* %152)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @ARCHIVE_OK, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = load i32, i32* %6, align 4
  store i32 %158, i32* %2, align 4
  br label %211

159:                                              ; preds = %150
  %160 = load %struct.rar5*, %struct.rar5** %5, align 8
  %161 = getelementptr inbounds %struct.rar5, %struct.rar5* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %198

165:                                              ; preds = %159
  %166 = load %struct.rar5*, %struct.rar5** %5, align 8
  %167 = getelementptr inbounds %struct.rar5, %struct.rar5* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %198

171:                                              ; preds = %165
  %172 = load %struct.rar5*, %struct.rar5** %5, align 8
  %173 = getelementptr inbounds %struct.rar5, %struct.rar5* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp sgt i64 %175, 0
  br i1 %176, label %177, label %198

177:                                              ; preds = %171
  %178 = load i32, i32* @ARCHIVE_OK, align 4
  %179 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %180 = load %struct.rar5*, %struct.rar5** %5, align 8
  %181 = getelementptr inbounds %struct.rar5, %struct.rar5* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @consume(%struct.archive_read* %179, i64 %183)
  %185 = icmp ne i32 %178, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %177
  %187 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %187, i32* %2, align 4
  br label %211

188:                                              ; preds = %177
  %189 = load %struct.rar5*, %struct.rar5** %5, align 8
  %190 = getelementptr inbounds %struct.rar5, %struct.rar5* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.rar5*, %struct.rar5** %5, align 8
  %194 = getelementptr inbounds %struct.rar5, %struct.rar5* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = sub nsw i64 %196, %192
  store i64 %197, i64* %195, align 8
  br label %209

198:                                              ; preds = %171, %165, %159
  %199 = load %struct.rar5*, %struct.rar5** %5, align 8
  %200 = getelementptr inbounds %struct.rar5, %struct.rar5* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = load %struct.rar5*, %struct.rar5** %5, align 8
  %206 = getelementptr inbounds %struct.rar5, %struct.rar5* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  store i64 0, i64* %207, align 8
  br label %208

208:                                              ; preds = %204, %198
  br label %209

209:                                              ; preds = %208, %188
  %210 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %209, %186, %157, %141, %108, %94, %66, %53, %42, %29
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local %struct.rar5* @get_context(%struct.archive_read*) #1

declare dso_local i32 @advance_multivolume(%struct.archive_read*) #1

declare dso_local i32 @read_ahead(%struct.archive_read*, i32, i32**) #1

declare dso_local i32 @parse_block_header(%struct.archive_read*, i32*, i64*, i32*) #1

declare dso_local i64 @bf_byte_count(i32*) #1

declare dso_local i32 @consume(%struct.archive_read*, i64) #1

declare dso_local i64 @rar5_min(i64, i64) #1

declare dso_local i32 @merge_block(%struct.archive_read*, i64, i32**) #1

declare dso_local i64 @bf_is_table_present(i32*) #1

declare dso_local i32 @parse_tables(%struct.archive_read*, %struct.rar5*, i32*) #1

declare dso_local i32 @do_uncompress_block(%struct.archive_read*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
