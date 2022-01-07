; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c__write_directory_descriptors.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c__write_directory_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.iso9660* }
%struct.iso9660 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vdd = type { i64, i32 }
%struct.isoent = type { %struct.isofile*, %struct.TYPE_5__, %struct.isoent** }
%struct.isofile = type { %struct.TYPE_6__*, %struct.TYPE_6__, %struct.isofile* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }

@LOGICAL_BLOCK_SIZE = common dso_local global i32 0, align 4
@DIR_REC_SELF = common dso_local global i32 0, align 4
@DIR_REC_PARENT = common dso_local global i32 0, align 4
@VDD_JOLIET = common dso_local global i64 0, align 8
@DIR_REC_NORMAL = common dso_local global i32 0, align 4
@WD_REMAINING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.vdd*, %struct.isoent*, i32)* @_write_directory_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_write_directory_descriptors(%struct.archive_write* %0, %struct.vdd* %1, %struct.isoent* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_write*, align 8
  %7 = alloca %struct.vdd*, align 8
  %8 = alloca %struct.isoent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iso9660*, align 8
  %11 = alloca %struct.isoent**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.isoent*, align 8
  %18 = alloca %struct.isofile*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %6, align 8
  store %struct.vdd* %1, %struct.vdd** %7, align 8
  store %struct.isoent* %2, %struct.isoent** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %20 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %19, i32 0, i32 0
  %21 = load %struct.iso9660*, %struct.iso9660** %20, align 8
  store %struct.iso9660* %21, %struct.iso9660** %10, align 8
  %22 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %23 = call i8* @wb_buffptr(%struct.archive_write* %22)
  store i8* %23, i8** %13, align 8
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = load i8*, i8** %12, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sub nsw i64 %26, %31
  %33 = trunc i64 %32 to i32
  %34 = load %struct.isoent*, %struct.isoent** %8, align 8
  %35 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %36 = load i32, i32* @DIR_REC_SELF, align 4
  %37 = load %struct.vdd*, %struct.vdd** %7, align 8
  %38 = getelementptr inbounds %struct.vdd, %struct.vdd* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @set_directory_record(i8* %24, i32 %33, %struct.isoent* %34, %struct.iso9660* %35, i32 %36, i64 %39)
  %41 = load i8*, i8** %12, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %46 = sext i32 %45 to i64
  %47 = load i8*, i8** %12, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sub nsw i64 %46, %51
  %53 = trunc i64 %52 to i32
  %54 = load %struct.isoent*, %struct.isoent** %8, align 8
  %55 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %56 = load i32, i32* @DIR_REC_PARENT, align 4
  %57 = load %struct.vdd*, %struct.vdd** %7, align 8
  %58 = getelementptr inbounds %struct.vdd, %struct.vdd* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @set_directory_record(i8* %44, i32 %53, %struct.isoent* %54, %struct.iso9660* %55, i32 %56, i64 %59)
  %61 = load i8*, i8** %12, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %12, align 8
  %64 = load %struct.isoent*, %struct.isoent** %8, align 8
  %65 = getelementptr inbounds %struct.isoent, %struct.isoent* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %88, label %69

69:                                               ; preds = %4
  %70 = load %struct.vdd*, %struct.vdd** %7, align 8
  %71 = getelementptr inbounds %struct.vdd, %struct.vdd* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VDD_JOLIET, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %103

75:                                               ; preds = %69
  %76 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %77 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %103, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  %84 = load %struct.vdd*, %struct.vdd** %7, align 8
  %85 = getelementptr inbounds %struct.vdd, %struct.vdd* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp sge i32 %83, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %81, %4
  %89 = load i8*, i8** %12, align 8
  %90 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %91 = sext i32 %90 to i64
  %92 = load i8*, i8** %12, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sub nsw i64 %91, %96
  %98 = trunc i64 %97 to i32
  %99 = call i32 @memset(i8* %89, i32 0, i32 %98)
  %100 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %101 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %102 = call i32 @wb_consume(%struct.archive_write* %100, i32 %101)
  store i32 %102, i32* %5, align 4
  br label %231

103:                                              ; preds = %81, %75, %69
  %104 = load %struct.isoent*, %struct.isoent** %8, align 8
  %105 = getelementptr inbounds %struct.isoent, %struct.isoent* %104, i32 0, i32 2
  %106 = load %struct.isoent**, %struct.isoent*** %105, align 8
  store %struct.isoent** %106, %struct.isoent*** %11, align 8
  store i32 0, i32* %14, align 4
  br label %107

107:                                              ; preds = %213, %103
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.isoent*, %struct.isoent** %8, align 8
  %110 = getelementptr inbounds %struct.isoent, %struct.isoent* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %108, %112
  br i1 %113, label %114, label %216

114:                                              ; preds = %107
  %115 = load %struct.isoent**, %struct.isoent*** %11, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.isoent*, %struct.isoent** %115, i64 %117
  %119 = load %struct.isoent*, %struct.isoent** %118, align 8
  store %struct.isoent* %119, %struct.isoent** %17, align 8
  %120 = load %struct.isoent*, %struct.isoent** %17, align 8
  %121 = getelementptr inbounds %struct.isoent, %struct.isoent* %120, i32 0, i32 0
  %122 = load %struct.isofile*, %struct.isofile** %121, align 8
  store %struct.isofile* %122, %struct.isofile** %18, align 8
  %123 = load %struct.isofile*, %struct.isofile** %18, align 8
  %124 = getelementptr inbounds %struct.isofile, %struct.isofile* %123, i32 0, i32 2
  %125 = load %struct.isofile*, %struct.isofile** %124, align 8
  %126 = icmp ne %struct.isofile* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %114
  %128 = load %struct.isofile*, %struct.isofile** %18, align 8
  %129 = getelementptr inbounds %struct.isofile, %struct.isofile* %128, i32 0, i32 2
  %130 = load %struct.isofile*, %struct.isofile** %129, align 8
  store %struct.isofile* %130, %struct.isofile** %18, align 8
  br label %131

131:                                              ; preds = %127, %114
  %132 = load %struct.isofile*, %struct.isofile** %18, align 8
  %133 = getelementptr inbounds %struct.isofile, %struct.isofile* %132, i32 0, i32 1
  %134 = load %struct.isofile*, %struct.isofile** %18, align 8
  %135 = getelementptr inbounds %struct.isofile, %struct.isofile* %134, i32 0, i32 0
  store %struct.TYPE_6__* %133, %struct.TYPE_6__** %135, align 8
  br label %136

136:                                              ; preds = %207, %131
  %137 = load i8*, i8** %12, align 8
  %138 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %139 = sext i32 %138 to i64
  %140 = load i8*, i8** %12, align 8
  %141 = load i8*, i8** %13, align 8
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = sub nsw i64 %139, %144
  %146 = trunc i64 %145 to i32
  %147 = load %struct.isoent*, %struct.isoent** %17, align 8
  %148 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %149 = load i32, i32* @DIR_REC_NORMAL, align 4
  %150 = load %struct.vdd*, %struct.vdd** %7, align 8
  %151 = getelementptr inbounds %struct.vdd, %struct.vdd* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @set_directory_record(i8* %137, i32 %146, %struct.isoent* %147, %struct.iso9660* %148, i32 %149, i64 %152)
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* %16, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %195

156:                                              ; preds = %136
  %157 = load i8*, i8** %12, align 8
  %158 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %159 = sext i32 %158 to i64
  %160 = load i8*, i8** %12, align 8
  %161 = load i8*, i8** %13, align 8
  %162 = ptrtoint i8* %160 to i64
  %163 = ptrtoint i8* %161 to i64
  %164 = sub i64 %162, %163
  %165 = sub nsw i64 %159, %164
  %166 = trunc i64 %165 to i32
  %167 = call i32 @memset(i8* %157, i32 0, i32 %166)
  %168 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %169 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %170 = call i32 @wb_consume(%struct.archive_write* %168, i32 %169)
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %15, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %156
  %174 = load i32, i32* %15, align 4
  store i32 %174, i32* %5, align 4
  br label %231

175:                                              ; preds = %156
  %176 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %177 = call i8* @wb_buffptr(%struct.archive_write* %176)
  store i8* %177, i8** %13, align 8
  store i8* %177, i8** %12, align 8
  %178 = load i8*, i8** %12, align 8
  %179 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %180 = sext i32 %179 to i64
  %181 = load i8*, i8** %12, align 8
  %182 = load i8*, i8** %13, align 8
  %183 = ptrtoint i8* %181 to i64
  %184 = ptrtoint i8* %182 to i64
  %185 = sub i64 %183, %184
  %186 = sub nsw i64 %180, %185
  %187 = trunc i64 %186 to i32
  %188 = load %struct.isoent*, %struct.isoent** %17, align 8
  %189 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %190 = load i32, i32* @DIR_REC_NORMAL, align 4
  %191 = load %struct.vdd*, %struct.vdd** %7, align 8
  %192 = getelementptr inbounds %struct.vdd, %struct.vdd* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @set_directory_record(i8* %178, i32 %187, %struct.isoent* %188, %struct.iso9660* %189, i32 %190, i64 %193)
  store i32 %194, i32* %16, align 4
  br label %195

195:                                              ; preds = %175, %136
  %196 = load i32, i32* %16, align 4
  %197 = load i8*, i8** %12, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8* %199, i8** %12, align 8
  %200 = load %struct.isofile*, %struct.isofile** %18, align 8
  %201 = getelementptr inbounds %struct.isofile, %struct.isofile* %200, i32 0, i32 0
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = load %struct.isofile*, %struct.isofile** %18, align 8
  %206 = getelementptr inbounds %struct.isofile, %struct.isofile* %205, i32 0, i32 0
  store %struct.TYPE_6__* %204, %struct.TYPE_6__** %206, align 8
  br label %207

207:                                              ; preds = %195
  %208 = load %struct.isofile*, %struct.isofile** %18, align 8
  %209 = getelementptr inbounds %struct.isofile, %struct.isofile* %208, i32 0, i32 0
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = icmp ne %struct.TYPE_6__* %210, null
  br i1 %211, label %136, label %212

212:                                              ; preds = %207
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %14, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %14, align 4
  br label %107

216:                                              ; preds = %107
  %217 = load i8*, i8** %12, align 8
  %218 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %219 = sext i32 %218 to i64
  %220 = load i8*, i8** %12, align 8
  %221 = load i8*, i8** %13, align 8
  %222 = ptrtoint i8* %220 to i64
  %223 = ptrtoint i8* %221 to i64
  %224 = sub i64 %222, %223
  %225 = sub nsw i64 %219, %224
  %226 = trunc i64 %225 to i32
  %227 = call i32 @memset(i8* %217, i32 0, i32 %226)
  %228 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %229 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %230 = call i32 @wb_consume(%struct.archive_write* %228, i32 %229)
  store i32 %230, i32* %5, align 4
  br label %231

231:                                              ; preds = %216, %173, %88
  %232 = load i32, i32* %5, align 4
  ret i32 %232
}

declare dso_local i8* @wb_buffptr(%struct.archive_write*) #1

declare dso_local i32 @set_directory_record(i8*, i32, %struct.isoent*, %struct.iso9660*, i32, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @wb_consume(%struct.archive_write*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
