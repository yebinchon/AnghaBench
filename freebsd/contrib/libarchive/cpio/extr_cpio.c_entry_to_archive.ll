; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_entry_to_archive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_entry_to_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpio = type { i64, i64, i32, i32, i64, i64 }
%struct.archive_entry = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@AE_IFREG = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Can't create link\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: could not open file\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"Truncated write; file may have grown while being archived.\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EXDEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpio*, %struct.archive_entry*)* @entry_to_archive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @entry_to_archive(%struct.cpio* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpio*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.archive_entry*, align 8
  %12 = alloca i64, align 8
  store %struct.cpio* %0, %struct.cpio** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %13 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %14 = call i8* @archive_entry_pathname(%struct.archive_entry* %13)
  store i8* %14, i8** %6, align 8
  %15 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %16 = call i8* @archive_entry_sourcepath(%struct.archive_entry* %15)
  store i8* %16, i8** %7, align 8
  store i32 -1, i32* %8, align 4
  %17 = load %struct.cpio*, %struct.cpio** %4, align 8
  %18 = getelementptr inbounds %struct.cpio, %struct.cpio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.cpio*, %struct.cpio** %4, align 8
  %27 = getelementptr inbounds %struct.cpio, %struct.cpio* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.cpio*, %struct.cpio** %4, align 8
  %35 = getelementptr inbounds %struct.cpio, %struct.cpio* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %85

38:                                               ; preds = %33
  %39 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %40 = call i64 @archive_entry_filetype(%struct.archive_entry* %39)
  %41 = load i64, i64* @AE_IFREG, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %85

43:                                               ; preds = %38
  %44 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %45 = call %struct.archive_entry* @archive_entry_clone(%struct.archive_entry* %44)
  store %struct.archive_entry* %45, %struct.archive_entry** %11, align 8
  %46 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %47 = icmp eq %struct.archive_entry* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sext i32 %49 to i64
  %51 = call i32 (i32, i64, i8*, ...) @lafe_errc(i32 1, i64 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @archive_entry_set_hardlink(%struct.archive_entry* %53, i8* %54)
  %56 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %57 = call i32 @archive_entry_set_size(%struct.archive_entry* %56, i32 0)
  %58 = load %struct.cpio*, %struct.cpio** %4, align 8
  %59 = getelementptr inbounds %struct.cpio, %struct.cpio* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %62 = call i32 @archive_write_header(i32 %60, %struct.archive_entry* %61)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %64 = call i32 @archive_entry_free(%struct.archive_entry* %63)
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @ARCHIVE_OK, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %52
  %69 = load %struct.cpio*, %struct.cpio** %4, align 8
  %70 = getelementptr inbounds %struct.cpio, %struct.cpio* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @archive_errno(i32 %71)
  %73 = load %struct.cpio*, %struct.cpio** %4, align 8
  %74 = getelementptr inbounds %struct.cpio, %struct.cpio* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @archive_error_string(i32 %75)
  %77 = call i32 (i64, i8*, ...) @lafe_warnc(i64 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %68, %52
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @ARCHIVE_FATAL, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 @exit(i32 1) #3
  unreachable

84:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %221

85:                                               ; preds = %38, %33
  %86 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %87 = call i64 @archive_entry_filetype(%struct.archive_entry* %86)
  %88 = load i64, i64* @AE_IFREG, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %85
  %91 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %92 = call i64 @archive_entry_size(%struct.archive_entry* %91)
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* @O_RDONLY, align 4
  %97 = load i32, i32* @O_BINARY, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @open(i8* %95, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %94
  %103 = load i32, i32* @errno, align 4
  %104 = sext i32 %103 to i64
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 (i64, i8*, ...) @lafe_warnc(i64 %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %105)
  br label %206

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %107, %90
  br label %112

109:                                              ; preds = %85
  %110 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %111 = call i32 @archive_entry_set_size(%struct.archive_entry* %110, i32 0)
  br label %112

112:                                              ; preds = %109, %108
  %113 = load %struct.cpio*, %struct.cpio** %4, align 8
  %114 = getelementptr inbounds %struct.cpio, %struct.cpio* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %117 = call i32 @archive_write_header(i32 %115, %struct.archive_entry* %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @ARCHIVE_OK, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %112
  %122 = load %struct.cpio*, %struct.cpio** %4, align 8
  %123 = getelementptr inbounds %struct.cpio, %struct.cpio* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @archive_errno(i32 %124)
  %126 = load i8*, i8** %7, align 8
  %127 = load %struct.cpio*, %struct.cpio** %4, align 8
  %128 = getelementptr inbounds %struct.cpio, %struct.cpio* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @archive_error_string(i32 %129)
  %131 = call i32 (i64, i8*, ...) @lafe_warnc(i64 %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %126, i32 %130)
  br label %132

132:                                              ; preds = %121, %112
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @ARCHIVE_FATAL, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = call i32 @exit(i32 1) #3
  unreachable

138:                                              ; preds = %132
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @ARCHIVE_WARN, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %200

142:                                              ; preds = %138
  %143 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %144 = call i64 @archive_entry_size(%struct.archive_entry* %143)
  %145 = icmp sgt i64 %144, 0
  br i1 %145, label %146, label %200

146:                                              ; preds = %142
  %147 = load i32, i32* %8, align 4
  %148 = icmp sge i32 %147, 0
  br i1 %148, label %149, label %200

149:                                              ; preds = %146
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.cpio*, %struct.cpio** %4, align 8
  %152 = getelementptr inbounds %struct.cpio, %struct.cpio* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.cpio*, %struct.cpio** %4, align 8
  %155 = getelementptr inbounds %struct.cpio, %struct.cpio* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = call i64 @read(i32 %150, i32 %153, i32 %157)
  store i64 %158, i64* %9, align 8
  br label %159

159:                                              ; preds = %189, %149
  %160 = load i64, i64* %9, align 8
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %199

162:                                              ; preds = %159
  %163 = load %struct.cpio*, %struct.cpio** %4, align 8
  %164 = getelementptr inbounds %struct.cpio, %struct.cpio* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.cpio*, %struct.cpio** %4, align 8
  %167 = getelementptr inbounds %struct.cpio, %struct.cpio* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i64, i64* %9, align 8
  %170 = call i64 @archive_write_data(i32 %165, i32 %168, i64 %169)
  store i64 %170, i64* %12, align 8
  %171 = load i64, i64* %12, align 8
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %162
  %174 = load %struct.cpio*, %struct.cpio** %4, align 8
  %175 = getelementptr inbounds %struct.cpio, %struct.cpio* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @archive_errno(i32 %176)
  %178 = load %struct.cpio*, %struct.cpio** %4, align 8
  %179 = getelementptr inbounds %struct.cpio, %struct.cpio* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @archive_error_string(i32 %180)
  %182 = call i32 (i32, i64, i8*, ...) @lafe_errc(i32 1, i64 %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %173, %162
  %184 = load i64, i64* %12, align 8
  %185 = load i64, i64* %9, align 8
  %186 = icmp slt i64 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = call i32 (i64, i8*, ...) @lafe_warnc(i64 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %183
  %190 = load i32, i32* %8, align 4
  %191 = load %struct.cpio*, %struct.cpio** %4, align 8
  %192 = getelementptr inbounds %struct.cpio, %struct.cpio* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.cpio*, %struct.cpio** %4, align 8
  %195 = getelementptr inbounds %struct.cpio, %struct.cpio* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = call i64 @read(i32 %190, i32 %193, i32 %197)
  store i64 %198, i64* %9, align 8
  br label %159

199:                                              ; preds = %159
  br label %200

200:                                              ; preds = %199, %146, %142, %138
  %201 = load %struct.cpio*, %struct.cpio** %4, align 8
  %202 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %203 = load i8*, i8** %7, align 8
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @restore_time(%struct.cpio* %201, %struct.archive_entry* %202, i8* %203, i32 %204)
  store i32 %205, i32* %8, align 4
  br label %206

206:                                              ; preds = %200, %102
  %207 = load %struct.cpio*, %struct.cpio** %4, align 8
  %208 = getelementptr inbounds %struct.cpio, %struct.cpio* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load i32, i32* @stderr, align 4
  %213 = call i32 (i32, i8*, ...) @fprintf(i32 %212, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %214

214:                                              ; preds = %211, %206
  %215 = load i32, i32* %8, align 4
  %216 = icmp sge i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32, i32* %8, align 4
  %219 = call i32 @close(i32 %218)
  br label %220

220:                                              ; preds = %217, %214
  store i32 0, i32* %3, align 4
  br label %221

221:                                              ; preds = %220, %84
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_sourcepath(%struct.archive_entry*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local %struct.archive_entry* @archive_entry_clone(%struct.archive_entry*) #1

declare dso_local i32 @lafe_errc(i32, i64, i8*, ...) #1

declare dso_local i32 @archive_entry_set_hardlink(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_write_header(i32, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @lafe_warnc(i64, i8*, ...) #1

declare dso_local i64 @archive_errno(i32) #1

declare dso_local i32 @archive_error_string(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @read(i32, i32, i32) #1

declare dso_local i64 @archive_write_data(i32, i32, i64) #1

declare dso_local i32 @restore_time(%struct.cpio*, %struct.archive_entry*, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
