; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_register_CE.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_register_CE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.file_info = type { i32, i64, i64, i64 }
%struct.iso9660 = type { i64, i64, %struct.read_ce_queue, i64 }
%struct.read_ce_queue = type { i32, i32, %struct.read_ce_req* }
%struct.read_ce_req = type { i64, %struct.file_info* }

@AE_IFMT = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Invalid parameter in SUSP \22CE\22 extension\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i64, %struct.file_info*)* @register_CE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_CE(%struct.archive_read* %0, i64 %1, %struct.file_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.file_info*, align 8
  %8 = alloca %struct.iso9660*, align 8
  %9 = alloca %struct.read_ce_queue*, align 8
  %10 = alloca %struct.read_ce_req*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.file_info* %2, %struct.file_info** %7, align 8
  %16 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %17 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.iso9660*
  store %struct.iso9660* %21, %struct.iso9660** %8, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %24 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = mul nsw i64 %22, %25
  store i64 %26, i64* %11, align 8
  %27 = load %struct.file_info*, %struct.file_info** %7, align 8
  %28 = getelementptr inbounds %struct.file_info, %struct.file_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AE_IFMT, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @AE_IFREG, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.file_info*, %struct.file_info** %7, align 8
  %37 = getelementptr inbounds %struct.file_info, %struct.file_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %72, label %40

40:                                               ; preds = %34, %3
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %43 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %72, label %46

46:                                               ; preds = %40
  %47 = load %struct.file_info*, %struct.file_info** %7, align 8
  %48 = getelementptr inbounds %struct.file_info, %struct.file_info* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.file_info*, %struct.file_info** %7, align 8
  %51 = getelementptr inbounds %struct.file_info, %struct.file_info* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %55 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %72, label %58

58:                                               ; preds = %46
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.file_info*, %struct.file_info** %7, align 8
  %61 = getelementptr inbounds %struct.file_info, %struct.file_info* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load %struct.file_info*, %struct.file_info** %7, align 8
  %65 = getelementptr inbounds %struct.file_info, %struct.file_info* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %69 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %58, %46, %40, %34
  %73 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %74 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %73, i32 0, i32 0
  %75 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %76 = call i32 @archive_set_error(i32* %74, i32 %75, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %77, i32* %4, align 4
  br label %221

78:                                               ; preds = %58
  %79 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %80 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %79, i32 0, i32 2
  store %struct.read_ce_queue* %80, %struct.read_ce_queue** %9, align 8
  %81 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %82 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %85 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %83, %86
  br i1 %87, label %88, label %150

88:                                               ; preds = %78
  %89 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %90 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 16
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 16, i32* %15, align 4
  br label %99

94:                                               ; preds = %88
  %95 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %96 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %97, 2
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %94, %93
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %102 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp sle i32 %100, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %107 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %106, i32 0, i32 0
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = call i32 @archive_set_error(i32* %107, i32 %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %110, i32* %4, align 4
  br label %221

111:                                              ; preds = %99
  %112 = load i32, i32* %15, align 4
  %113 = call %struct.read_ce_req* @calloc(i32 %112, i32 16)
  store %struct.read_ce_req* %113, %struct.read_ce_req** %10, align 8
  %114 = load %struct.read_ce_req*, %struct.read_ce_req** %10, align 8
  %115 = icmp eq %struct.read_ce_req* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %118 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %117, i32 0, i32 0
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = call i32 @archive_set_error(i32* %118, i32 %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %121, i32* %4, align 4
  br label %221

122:                                              ; preds = %111
  %123 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %124 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %123, i32 0, i32 2
  %125 = load %struct.read_ce_req*, %struct.read_ce_req** %124, align 8
  %126 = icmp ne %struct.read_ce_req* %125, null
  br i1 %126, label %127, label %143

127:                                              ; preds = %122
  %128 = load %struct.read_ce_req*, %struct.read_ce_req** %10, align 8
  %129 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %130 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %129, i32 0, i32 2
  %131 = load %struct.read_ce_req*, %struct.read_ce_req** %130, align 8
  %132 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %133 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 16
  %137 = trunc i64 %136 to i32
  %138 = call i32 @memcpy(%struct.read_ce_req* %128, %struct.read_ce_req* %131, i32 %137)
  %139 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %140 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %139, i32 0, i32 2
  %141 = load %struct.read_ce_req*, %struct.read_ce_req** %140, align 8
  %142 = call i32 @free(%struct.read_ce_req* %141)
  br label %143

143:                                              ; preds = %127, %122
  %144 = load %struct.read_ce_req*, %struct.read_ce_req** %10, align 8
  %145 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %146 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %145, i32 0, i32 2
  store %struct.read_ce_req* %144, %struct.read_ce_req** %146, align 8
  %147 = load i32, i32* %15, align 4
  %148 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %149 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %143, %78
  %151 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %152 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 8
  store i32 %153, i32* %13, align 4
  br label %155

155:                                              ; preds = %191, %150
  %156 = load i32, i32* %13, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %207

158:                                              ; preds = %155
  %159 = load i32, i32* %13, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sdiv i32 %160, 2
  store i32 %161, i32* %14, align 4
  %162 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %163 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %162, i32 0, i32 2
  %164 = load %struct.read_ce_req*, %struct.read_ce_req** %163, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %164, i64 %166
  %168 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %12, align 8
  %170 = load i64, i64* %11, align 8
  %171 = load i64, i64* %12, align 8
  %172 = icmp sge i64 %170, %171
  br i1 %172, label %173, label %191

173:                                              ; preds = %158
  %174 = load i64, i64* %11, align 8
  %175 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %176 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %175, i32 0, i32 2
  %177 = load %struct.read_ce_req*, %struct.read_ce_req** %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %177, i64 %179
  %181 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %180, i32 0, i32 0
  store i64 %174, i64* %181, align 8
  %182 = load %struct.file_info*, %struct.file_info** %7, align 8
  %183 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %184 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %183, i32 0, i32 2
  %185 = load %struct.read_ce_req*, %struct.read_ce_req** %184, align 8
  %186 = load i32, i32* %13, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %185, i64 %187
  %189 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %188, i32 0, i32 1
  store %struct.file_info* %182, %struct.file_info** %189, align 8
  %190 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %190, i32* %4, align 4
  br label %221

191:                                              ; preds = %158
  %192 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %193 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %192, i32 0, i32 2
  %194 = load %struct.read_ce_req*, %struct.read_ce_req** %193, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %194, i64 %196
  %198 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %199 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %198, i32 0, i32 2
  %200 = load %struct.read_ce_req*, %struct.read_ce_req** %199, align 8
  %201 = load i32, i32* %14, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %200, i64 %202
  %204 = bitcast %struct.read_ce_req* %197 to i8*
  %205 = bitcast %struct.read_ce_req* %203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %204, i8* align 8 %205, i64 16, i1 false)
  %206 = load i32, i32* %14, align 4
  store i32 %206, i32* %13, align 4
  br label %155

207:                                              ; preds = %155
  %208 = load i64, i64* %11, align 8
  %209 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %210 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %209, i32 0, i32 2
  %211 = load %struct.read_ce_req*, %struct.read_ce_req** %210, align 8
  %212 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %211, i64 0
  %213 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %212, i32 0, i32 0
  store i64 %208, i64* %213, align 8
  %214 = load %struct.file_info*, %struct.file_info** %7, align 8
  %215 = load %struct.read_ce_queue*, %struct.read_ce_queue** %9, align 8
  %216 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %215, i32 0, i32 2
  %217 = load %struct.read_ce_req*, %struct.read_ce_req** %216, align 8
  %218 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %217, i64 0
  %219 = getelementptr inbounds %struct.read_ce_req, %struct.read_ce_req* %218, i32 0, i32 1
  store %struct.file_info* %214, %struct.file_info** %219, align 8
  %220 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %220, i32* %4, align 4
  br label %221

221:                                              ; preds = %207, %173, %116, %105, %72
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local %struct.read_ce_req* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.read_ce_req*, %struct.read_ce_req*, i32) #1

declare dso_local i32 @free(%struct.read_ce_req*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
