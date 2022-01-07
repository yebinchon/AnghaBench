; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_header_gnutar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_header_gnutar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.tar = type { i32, i32, i32, i64, i32 }
%struct.archive_entry = type { i32 }
%struct.archive_entry_header_gnutar = type { i8*, i64*, i64*, i64*, i64*, i64*, i64*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Pathname\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Uname\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Gname\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*, i64*)* @header_gnutar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @header_gnutar(%struct.archive_read* %0, %struct.tar* %1, %struct.archive_entry* %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.tar*, align 8
  %9 = alloca %struct.archive_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.archive_entry_header_gnutar*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.tar* %1, %struct.tar** %8, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %17 = load %struct.tar*, %struct.tar** %8, align 8
  %18 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 @header_common(%struct.archive_read* %16, %struct.tar* %17, %struct.archive_entry* %18, i8* %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* @ARCHIVE_FATAL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %6, align 4
  br label %210

26:                                               ; preds = %5
  %27 = load i8*, i8** %10, align 8
  %28 = bitcast i8* %27 to %struct.archive_entry_header_gnutar*
  store %struct.archive_entry_header_gnutar* %28, %struct.archive_entry_header_gnutar** %12, align 8
  %29 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %30 = load %struct.archive_entry_header_gnutar*, %struct.archive_entry_header_gnutar** %12, align 8
  %31 = getelementptr inbounds %struct.archive_entry_header_gnutar, %struct.archive_entry_header_gnutar* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tar*, %struct.tar** %8, align 8
  %34 = getelementptr inbounds %struct.tar, %struct.tar* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @archive_entry_copy_pathname_l(%struct.archive_entry* %29, i32 %32, i32 4, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %26
  %39 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %40 = load %struct.tar*, %struct.tar** %8, align 8
  %41 = getelementptr inbounds %struct.tar, %struct.tar* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @set_conversion_failed_error(%struct.archive_read* %39, i32 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @ARCHIVE_FATAL, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %6, align 4
  br label %210

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %26
  %51 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %52 = load %struct.archive_entry_header_gnutar*, %struct.archive_entry_header_gnutar** %12, align 8
  %53 = getelementptr inbounds %struct.archive_entry_header_gnutar, %struct.archive_entry_header_gnutar* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tar*, %struct.tar** %8, align 8
  %56 = getelementptr inbounds %struct.tar, %struct.tar* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @archive_entry_copy_uname_l(%struct.archive_entry* %51, i32 %54, i32 4, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %50
  %61 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %62 = load %struct.tar*, %struct.tar** %8, align 8
  %63 = getelementptr inbounds %struct.tar, %struct.tar* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @set_conversion_failed_error(%struct.archive_read* %61, i32 %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @ARCHIVE_FATAL, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %6, align 4
  br label %210

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %50
  %73 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %74 = load %struct.archive_entry_header_gnutar*, %struct.archive_entry_header_gnutar** %12, align 8
  %75 = getelementptr inbounds %struct.archive_entry_header_gnutar, %struct.archive_entry_header_gnutar* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.tar*, %struct.tar** %8, align 8
  %78 = getelementptr inbounds %struct.tar, %struct.tar* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @archive_entry_copy_gname_l(%struct.archive_entry* %73, i32 %76, i32 4, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %72
  %83 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %84 = load %struct.tar*, %struct.tar** %8, align 8
  %85 = getelementptr inbounds %struct.tar, %struct.tar* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @set_conversion_failed_error(%struct.archive_read* %83, i32 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @ARCHIVE_FATAL, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %6, align 4
  br label %210

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %72
  %95 = load %struct.archive_entry_header_gnutar*, %struct.archive_entry_header_gnutar** %12, align 8
  %96 = getelementptr inbounds %struct.archive_entry_header_gnutar, %struct.archive_entry_header_gnutar* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 51
  br i1 %101, label %110, label %102

102:                                              ; preds = %94
  %103 = load %struct.archive_entry_header_gnutar*, %struct.archive_entry_header_gnutar** %12, align 8
  %104 = getelementptr inbounds %struct.archive_entry_header_gnutar, %struct.archive_entry_header_gnutar* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 52
  br i1 %109, label %110, label %125

110:                                              ; preds = %102, %94
  %111 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %112 = load %struct.archive_entry_header_gnutar*, %struct.archive_entry_header_gnutar** %12, align 8
  %113 = getelementptr inbounds %struct.archive_entry_header_gnutar, %struct.archive_entry_header_gnutar* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = call i64 @tar_atol(i64* %114, i32 8)
  %116 = trunc i64 %115 to i32
  %117 = call i32 @archive_entry_set_rdevmajor(%struct.archive_entry* %111, i32 %116)
  %118 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %119 = load %struct.archive_entry_header_gnutar*, %struct.archive_entry_header_gnutar** %12, align 8
  %120 = getelementptr inbounds %struct.archive_entry_header_gnutar, %struct.archive_entry_header_gnutar* %119, i32 0, i32 2
  %121 = load i64*, i64** %120, align 8
  %122 = call i64 @tar_atol(i64* %121, i32 8)
  %123 = trunc i64 %122 to i32
  %124 = call i32 @archive_entry_set_rdevminor(%struct.archive_entry* %118, i32 %123)
  br label %128

125:                                              ; preds = %102
  %126 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %127 = call i32 @archive_entry_set_rdev(%struct.archive_entry* %126, i32 0)
  br label %128

128:                                              ; preds = %125, %110
  %129 = load %struct.tar*, %struct.tar** %8, align 8
  %130 = getelementptr inbounds %struct.tar, %struct.tar* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 0, %131
  %133 = and i32 511, %132
  %134 = load %struct.tar*, %struct.tar** %8, align 8
  %135 = getelementptr inbounds %struct.tar, %struct.tar* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.archive_entry_header_gnutar*, %struct.archive_entry_header_gnutar** %12, align 8
  %137 = getelementptr inbounds %struct.archive_entry_header_gnutar, %struct.archive_entry_header_gnutar* %136, i32 0, i32 3
  %138 = load i64*, i64** %137, align 8
  %139 = call i64 @tar_atol(i64* %138, i32 8)
  store i64 %139, i64* %13, align 8
  %140 = load i64, i64* %13, align 8
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %128
  %143 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %144 = load i64, i64* %13, align 8
  %145 = call i32 @archive_entry_set_atime(%struct.archive_entry* %143, i64 %144, i32 0)
  br label %146

146:                                              ; preds = %142, %128
  %147 = load %struct.archive_entry_header_gnutar*, %struct.archive_entry_header_gnutar** %12, align 8
  %148 = getelementptr inbounds %struct.archive_entry_header_gnutar, %struct.archive_entry_header_gnutar* %147, i32 0, i32 4
  %149 = load i64*, i64** %148, align 8
  %150 = call i64 @tar_atol(i64* %149, i32 8)
  store i64 %150, i64* %13, align 8
  %151 = load i64, i64* %13, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %146
  %154 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %155 = load i64, i64* %13, align 8
  %156 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %154, i64 %155, i32 0)
  br label %157

157:                                              ; preds = %153, %146
  %158 = load %struct.archive_entry_header_gnutar*, %struct.archive_entry_header_gnutar** %12, align 8
  %159 = getelementptr inbounds %struct.archive_entry_header_gnutar, %struct.archive_entry_header_gnutar* %158, i32 0, i32 5
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %157
  %165 = load %struct.archive_entry_header_gnutar*, %struct.archive_entry_header_gnutar** %12, align 8
  %166 = getelementptr inbounds %struct.archive_entry_header_gnutar, %struct.archive_entry_header_gnutar* %165, i32 0, i32 5
  %167 = load i64*, i64** %166, align 8
  %168 = call i64 @tar_atol(i64* %167, i32 8)
  %169 = load %struct.tar*, %struct.tar** %8, align 8
  %170 = getelementptr inbounds %struct.tar, %struct.tar* %169, i32 0, i32 3
  store i64 %168, i64* %170, align 8
  %171 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %172 = load %struct.tar*, %struct.tar** %8, align 8
  %173 = getelementptr inbounds %struct.tar, %struct.tar* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @archive_entry_set_size(%struct.archive_entry* %171, i64 %174)
  %176 = load %struct.tar*, %struct.tar** %8, align 8
  %177 = getelementptr inbounds %struct.tar, %struct.tar* %176, i32 0, i32 2
  store i32 1, i32* %177, align 8
  br label %178

178:                                              ; preds = %164, %157
  %179 = load %struct.archive_entry_header_gnutar*, %struct.archive_entry_header_gnutar** %12, align 8
  %180 = getelementptr inbounds %struct.archive_entry_header_gnutar, %struct.archive_entry_header_gnutar* %179, i32 0, i32 7
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i64 0
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i64*, i64** %183, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %178
  %189 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %190 = load %struct.tar*, %struct.tar** %8, align 8
  %191 = load %struct.archive_entry_header_gnutar*, %struct.archive_entry_header_gnutar** %12, align 8
  %192 = load i64*, i64** %11, align 8
  %193 = call i32 @gnu_sparse_old_read(%struct.archive_read* %189, %struct.tar* %190, %struct.archive_entry_header_gnutar* %191, i64* %192)
  %194 = load i32, i32* @ARCHIVE_OK, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %188
  %197 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %197, i32* %6, align 4
  br label %210

198:                                              ; preds = %188
  br label %208

199:                                              ; preds = %178
  %200 = load %struct.archive_entry_header_gnutar*, %struct.archive_entry_header_gnutar** %12, align 8
  %201 = getelementptr inbounds %struct.archive_entry_header_gnutar, %struct.archive_entry_header_gnutar* %200, i32 0, i32 6
  %202 = load i64*, i64** %201, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  br label %207

207:                                              ; preds = %206, %199
  br label %208

208:                                              ; preds = %207, %198
  %209 = load i32, i32* %14, align 4
  store i32 %209, i32* %6, align 4
  br label %210

210:                                              ; preds = %208, %196, %91, %69, %47, %24
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local i32 @header_common(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*) #1

declare dso_local i64 @archive_entry_copy_pathname_l(%struct.archive_entry*, i32, i32, i32) #1

declare dso_local i32 @set_conversion_failed_error(%struct.archive_read*, i32, i8*) #1

declare dso_local i64 @archive_entry_copy_uname_l(%struct.archive_entry*, i32, i32, i32) #1

declare dso_local i64 @archive_entry_copy_gname_l(%struct.archive_entry*, i32, i32, i32) #1

declare dso_local i32 @archive_entry_set_rdevmajor(%struct.archive_entry*, i32) #1

declare dso_local i64 @tar_atol(i64*, i32) #1

declare dso_local i32 @archive_entry_set_rdevminor(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_rdev(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_atime(%struct.archive_entry*, i64, i32) #1

declare dso_local i32 @archive_entry_set_ctime(%struct.archive_entry*, i64, i32) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i64) #1

declare dso_local i32 @gnu_sparse_old_read(%struct.archive_read*, %struct.tar*, %struct.archive_entry_header_gnutar*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
