; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_choose_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_choose_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.iso9660 = type { i8, i32, i64, %struct.vd, %struct.vd, i32 }
%struct.vd = type { i64, i32 }
%struct.file_info = type { i32 }

@LOGICAL_BLOCK_SIZE = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Failed to read full block when scanning ISO9660 directory list\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_FORMAT_ISO9660_ROCKRIDGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ISO9660 with Rockridge extensions\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.iso9660*)* @choose_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choose_volume(%struct.archive_read* %0, %struct.iso9660* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.iso9660*, align 8
  %6 = alloca %struct.file_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vd*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.iso9660* %1, %struct.iso9660** %5, align 8
  %11 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %12 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %11, i32 0, i32 4
  store %struct.vd* %12, %struct.vd** %8, align 8
  %13 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %14 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %19 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %18, i32 0, i32 0
  store i8 0, i8* %19, align 8
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %22 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 8
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.vd*, %struct.vd** %8, align 8
  %28 = getelementptr inbounds %struct.vd, %struct.vd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %31 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.vd, %struct.vd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %29, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %37 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %36, i32 0, i32 3
  store %struct.vd* %37, %struct.vd** %8, align 8
  br label %38

38:                                               ; preds = %35, %26, %20
  %39 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %40 = load %struct.vd*, %struct.vd** %8, align 8
  %41 = getelementptr inbounds %struct.vd, %struct.vd* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = mul nsw i32 %39, %43
  store i32 %44, i32* %7, align 4
  %45 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @__archive_read_consume(%struct.archive_read* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %205

52:                                               ; preds = %38
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %55 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %57 = load %struct.vd*, %struct.vd** %8, align 8
  %58 = getelementptr inbounds %struct.vd, %struct.vd* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @__archive_read_ahead(%struct.archive_read* %56, i32 %59, i32* null)
  store i8* %60, i8** %9, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %52
  %64 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %65 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %64, i32 0, i32 0
  %66 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %67 = call i32 @archive_set_error(%struct.TYPE_2__* %65, i32 %66, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %68, i32* %3, align 4
  br label %205

69:                                               ; preds = %52
  %70 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %71 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %70, i32 0, i32 0
  %72 = load i8, i8* %71, align 8
  store i8 %72, i8* %10, align 1
  %73 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %74 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %73, i32 0, i32 0
  store i8 0, i8* %74, align 8
  %75 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load %struct.vd*, %struct.vd** %8, align 8
  %78 = getelementptr inbounds %struct.vd, %struct.vd* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.file_info* @parse_file_info(%struct.archive_read* %75, i32* null, i8* %76, i32 %79)
  store %struct.file_info* %80, %struct.file_info** %6, align 8
  %81 = load %struct.file_info*, %struct.file_info** %6, align 8
  %82 = icmp eq %struct.file_info* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %69
  %84 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %84, i32* %3, align 4
  br label %205

85:                                               ; preds = %69
  %86 = load i8, i8* %10, align 1
  %87 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %88 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %87, i32 0, i32 0
  store i8 %86, i8* %88, align 8
  %89 = load %struct.vd*, %struct.vd** %8, align 8
  %90 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %91 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %90, i32 0, i32 4
  %92 = icmp eq %struct.vd* %89, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %85
  %94 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %95 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %100 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %99, i32 0, i32 0
  %101 = load i8, i8* %100, align 8
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %106 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %105, i32 0, i32 0
  store i8 0, i8* %106, align 8
  br label %107

107:                                              ; preds = %104, %98, %93, %85
  %108 = load %struct.vd*, %struct.vd** %8, align 8
  %109 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %110 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %109, i32 0, i32 4
  %111 = icmp eq %struct.vd* %108, %110
  br i1 %111, label %112, label %180

112:                                              ; preds = %107
  %113 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %114 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %180, label %117

117:                                              ; preds = %112
  %118 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %119 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %118, i32 0, i32 0
  %120 = load i8, i8* %119, align 8
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %180

123:                                              ; preds = %117
  %124 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %125 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %124, i32 0, i32 3
  store %struct.vd* %125, %struct.vd** %8, align 8
  %126 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %127 = load %struct.vd*, %struct.vd** %8, align 8
  %128 = getelementptr inbounds %struct.vd, %struct.vd* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = mul nsw i32 %126, %130
  store i32 %131, i32* %7, align 4
  %132 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %133 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %7, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %7, align 4
  %137 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @__archive_read_consume(%struct.archive_read* %137, i32 %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %123
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %3, align 4
  br label %205

144:                                              ; preds = %123
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %147 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %151 = load %struct.vd*, %struct.vd** %8, align 8
  %152 = getelementptr inbounds %struct.vd, %struct.vd* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i8* @__archive_read_ahead(%struct.archive_read* %150, i32 %153, i32* null)
  store i8* %154, i8** %9, align 8
  %155 = load i8*, i8** %9, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %163

157:                                              ; preds = %144
  %158 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %159 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %158, i32 0, i32 0
  %160 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %161 = call i32 @archive_set_error(%struct.TYPE_2__* %159, i32 %160, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %162 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %162, i32* %3, align 4
  br label %205

163:                                              ; preds = %144
  %164 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %165 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %164, i32 0, i32 0
  store i8 0, i8* %165, align 8
  %166 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = load %struct.vd*, %struct.vd** %8, align 8
  %169 = getelementptr inbounds %struct.vd, %struct.vd* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call %struct.file_info* @parse_file_info(%struct.archive_read* %166, i32* null, i8* %167, i32 %170)
  store %struct.file_info* %171, %struct.file_info** %6, align 8
  %172 = load %struct.file_info*, %struct.file_info** %6, align 8
  %173 = icmp eq %struct.file_info* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %163
  %175 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %175, i32* %3, align 4
  br label %205

176:                                              ; preds = %163
  %177 = load i8, i8* %10, align 1
  %178 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %179 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %178, i32 0, i32 0
  store i8 %177, i8* %179, align 8
  br label %180

180:                                              ; preds = %176, %117, %112, %107
  %181 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %182 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %183 = load %struct.file_info*, %struct.file_info** %6, align 8
  %184 = call i64 @add_entry(%struct.archive_read* %181, %struct.iso9660* %182, %struct.file_info* %183)
  %185 = load i64, i64* @ARCHIVE_OK, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %180
  %188 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %188, i32* %3, align 4
  br label %205

189:                                              ; preds = %180
  %190 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %191 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %189
  %195 = load i32, i32* @ARCHIVE_FORMAT_ISO9660_ROCKRIDGE, align 4
  %196 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %197 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  store i32 %195, i32* %198, align 8
  %199 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %200 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8** %201, align 8
  br label %202

202:                                              ; preds = %194, %189
  %203 = load i64, i64* @ARCHIVE_OK, align 8
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %202, %187, %174, %157, %142, %83, %63, %50
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i32) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*) #1

declare dso_local %struct.file_info* @parse_file_info(%struct.archive_read*, i32*, i8*, i32) #1

declare dso_local i64 @add_entry(%struct.archive_read*, %struct.iso9660*, %struct.file_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
