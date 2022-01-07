; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_file_to_archive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_file_to_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpio = type { i32, i8*, i64, i8*, i32*, i64, i32, i32, i32, i32, i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Couldn't allocate entry\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Can't allocate path buffer\00", align 1
@AE_IFDIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpio*, i8*)* @file_to_archive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_to_archive(%struct.cpio* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpio*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.cpio* %0, %struct.cpio** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %11, %struct.archive_entry** %7, align 8
  %12 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %13 = icmp eq %struct.archive_entry* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @archive_entry_copy_sourcepath(%struct.archive_entry* %17, i8* %18)
  %20 = load %struct.cpio*, %struct.cpio** %4, align 8
  %21 = getelementptr inbounds %struct.cpio, %struct.cpio* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %24 = call i32 @archive_read_disk_entry_from_file(i32 %22, %struct.archive_entry* %23, i32 -1, i32* null)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @ARCHIVE_FAILED, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load %struct.cpio*, %struct.cpio** %4, align 8
  %30 = getelementptr inbounds %struct.cpio, %struct.cpio* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @archive_error_string(i32 %31)
  %33 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28, %16
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @ARCHIVE_OK, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.cpio*, %struct.cpio** %4, align 8
  %40 = getelementptr inbounds %struct.cpio, %struct.cpio* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @archive_error_string(i32 %41)
  %43 = call i32 @lafe_warnc(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @ARCHIVE_FAILED, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %50 = call i32 @archive_entry_free(%struct.archive_entry* %49)
  %51 = load %struct.cpio*, %struct.cpio** %4, align 8
  %52 = getelementptr inbounds %struct.cpio, %struct.cpio* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  br label %216

54:                                               ; preds = %44
  %55 = load %struct.cpio*, %struct.cpio** %4, align 8
  %56 = getelementptr inbounds %struct.cpio, %struct.cpio* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %61 = load %struct.cpio*, %struct.cpio** %4, align 8
  %62 = getelementptr inbounds %struct.cpio, %struct.cpio* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @archive_entry_set_uid(%struct.archive_entry* %60, i32 %63)
  %65 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %66 = load %struct.cpio*, %struct.cpio** %4, align 8
  %67 = getelementptr inbounds %struct.cpio, %struct.cpio* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @archive_entry_set_uname(%struct.archive_entry* %65, i32 %68)
  br label %70

70:                                               ; preds = %59, %54
  %71 = load %struct.cpio*, %struct.cpio** %4, align 8
  %72 = getelementptr inbounds %struct.cpio, %struct.cpio* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %77 = load %struct.cpio*, %struct.cpio** %4, align 8
  %78 = getelementptr inbounds %struct.cpio, %struct.cpio* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @archive_entry_set_gid(%struct.archive_entry* %76, i32 %79)
  %81 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %82 = load %struct.cpio*, %struct.cpio** %4, align 8
  %83 = getelementptr inbounds %struct.cpio, %struct.cpio* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @archive_entry_set_gname(%struct.archive_entry* %81, i32 %84)
  br label %86

86:                                               ; preds = %75, %70
  %87 = load i8*, i8** %5, align 8
  store i8* %87, i8** %6, align 8
  %88 = load %struct.cpio*, %struct.cpio** %4, align 8
  %89 = getelementptr inbounds %struct.cpio, %struct.cpio* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %160

92:                                               ; preds = %86
  %93 = load %struct.cpio*, %struct.cpio** %4, align 8
  %94 = getelementptr inbounds %struct.cpio, %struct.cpio* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @strlen(i8* %97)
  %99 = add nsw i32 %96, %98
  %100 = add nsw i32 %99, 8
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %9, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load %struct.cpio*, %struct.cpio** %4, align 8
  %104 = getelementptr inbounds %struct.cpio, %struct.cpio* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp uge i64 %102, %105
  br i1 %106, label %107, label %143

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %114, %107
  %109 = load i64, i64* %9, align 8
  %110 = load %struct.cpio*, %struct.cpio** %4, align 8
  %111 = getelementptr inbounds %struct.cpio, %struct.cpio* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp uge i64 %109, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  %115 = load %struct.cpio*, %struct.cpio** %4, align 8
  %116 = getelementptr inbounds %struct.cpio, %struct.cpio* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, 512
  store i64 %118, i64* %116, align 8
  %119 = load %struct.cpio*, %struct.cpio** %4, align 8
  %120 = getelementptr inbounds %struct.cpio, %struct.cpio* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = mul i64 %121, 2
  store i64 %122, i64* %120, align 8
  br label %108

123:                                              ; preds = %108
  %124 = load %struct.cpio*, %struct.cpio** %4, align 8
  %125 = getelementptr inbounds %struct.cpio, %struct.cpio* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @free(i8* %126)
  %128 = load %struct.cpio*, %struct.cpio** %4, align 8
  %129 = getelementptr inbounds %struct.cpio, %struct.cpio* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i8* @malloc(i32 %131)
  %133 = load %struct.cpio*, %struct.cpio** %4, align 8
  %134 = getelementptr inbounds %struct.cpio, %struct.cpio* %133, i32 0, i32 3
  store i8* %132, i8** %134, align 8
  %135 = load %struct.cpio*, %struct.cpio** %4, align 8
  %136 = getelementptr inbounds %struct.cpio, %struct.cpio* %135, i32 0, i32 3
  %137 = load i8*, i8** %136, align 8
  %138 = icmp eq i8* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %123
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 %140, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %123
  br label %143

143:                                              ; preds = %142, %92
  %144 = load %struct.cpio*, %struct.cpio** %4, align 8
  %145 = getelementptr inbounds %struct.cpio, %struct.cpio* %144, i32 0, i32 3
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.cpio*, %struct.cpio** %4, align 8
  %148 = getelementptr inbounds %struct.cpio, %struct.cpio* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @strcpy(i8* %146, i8* %149)
  %151 = load %struct.cpio*, %struct.cpio** %4, align 8
  %152 = getelementptr inbounds %struct.cpio, %struct.cpio* %151, i32 0, i32 3
  %153 = load i8*, i8** %152, align 8
  %154 = load i8*, i8** %5, align 8
  %155 = call i32 @remove_leading_slash(i8* %154)
  %156 = call i32 @strcat(i8* %153, i32 %155)
  %157 = load %struct.cpio*, %struct.cpio** %4, align 8
  %158 = getelementptr inbounds %struct.cpio, %struct.cpio* %157, i32 0, i32 3
  %159 = load i8*, i8** %158, align 8
  store i8* %159, i8** %6, align 8
  br label %160

160:                                              ; preds = %143, %86
  %161 = load %struct.cpio*, %struct.cpio** %4, align 8
  %162 = getelementptr inbounds %struct.cpio, %struct.cpio* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i8*, i8** %6, align 8
  %167 = call i8* @cpio_rename(i8* %166)
  store i8* %167, i8** %6, align 8
  br label %168

168:                                              ; preds = %165, %160
  %169 = load i8*, i8** %6, align 8
  %170 = icmp eq i8* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %173 = call i32 @archive_entry_free(%struct.archive_entry* %172)
  store i32 0, i32* %3, align 4
  br label %216

174:                                              ; preds = %168
  %175 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %176 = load i8*, i8** %6, align 8
  %177 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %175, i8* %176)
  store %struct.archive_entry* null, %struct.archive_entry** %8, align 8
  %178 = load %struct.cpio*, %struct.cpio** %4, align 8
  %179 = getelementptr inbounds %struct.cpio, %struct.cpio* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %192

182:                                              ; preds = %174
  %183 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %184 = call i64 @archive_entry_filetype(%struct.archive_entry* %183)
  %185 = load i64, i64* @AE_IFDIR, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load %struct.cpio*, %struct.cpio** %4, align 8
  %189 = getelementptr inbounds %struct.cpio, %struct.cpio* %188, i32 0, i32 4
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @archive_entry_linkify(i32* %190, %struct.archive_entry** %7, %struct.archive_entry** %8)
  br label %192

192:                                              ; preds = %187, %182, %174
  %193 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %194 = icmp ne %struct.archive_entry* %193, null
  br i1 %194, label %195, label %214

195:                                              ; preds = %192
  %196 = load %struct.cpio*, %struct.cpio** %4, align 8
  %197 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %198 = call i32 @entry_to_archive(%struct.cpio* %196, %struct.archive_entry* %197)
  store i32 %198, i32* %10, align 4
  %199 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %200 = call i32 @archive_entry_free(%struct.archive_entry* %199)
  %201 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %202 = icmp ne %struct.archive_entry* %201, null
  br i1 %202, label %203, label %213

203:                                              ; preds = %195
  %204 = load i32, i32* %10, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load %struct.cpio*, %struct.cpio** %4, align 8
  %208 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %209 = call i32 @entry_to_archive(%struct.cpio* %207, %struct.archive_entry* %208)
  store i32 %209, i32* %10, align 4
  br label %210

210:                                              ; preds = %206, %203
  %211 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %212 = call i32 @archive_entry_free(%struct.archive_entry* %211)
  br label %213

213:                                              ; preds = %210, %195
  br label %214

214:                                              ; preds = %213, %192
  %215 = load i32, i32* %10, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %214, %171, %48
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @lafe_errc(i32, i32, i8*, ...) #1

declare dso_local i32 @archive_entry_copy_sourcepath(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_read_disk_entry_from_file(i32, %struct.archive_entry*, i32, i32*) #1

declare dso_local i32 @archive_error_string(i32) #1

declare dso_local i32 @lafe_warnc(i32, i8*, i32) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_uid(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_uname(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_gid(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_gname(%struct.archive_entry*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i32) #1

declare dso_local i32 @remove_leading_slash(i8*) #1

declare dso_local i8* @cpio_rename(i8*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_linkify(i32*, %struct.archive_entry**, %struct.archive_entry**) #1

declare dso_local i32 @entry_to_archive(%struct.cpio*, %struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
