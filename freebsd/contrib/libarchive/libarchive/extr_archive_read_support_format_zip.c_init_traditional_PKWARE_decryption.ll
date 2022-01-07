; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_init_traditional_PKWARE_decryption.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_init_traditional_PKWARE_decryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.zip = type { i32, i64, i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ZIP_LENGTH_AT_END = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Truncated Zip encrypted body: only %jd bytes available\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Truncated ZIP file data\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Incorrect passphrase\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Passphrase required for this entry\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Too many incorrect passphrases\00", align 1
@ENC_HEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @init_traditional_PKWARE_decryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_traditional_PKWARE_decryption(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.zip*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %10 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %11 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.zip*
  store %struct.zip* %15, %struct.zip** %4, align 8
  %16 = load %struct.zip*, %struct.zip** %4, align 8
  %17 = getelementptr inbounds %struct.zip, %struct.zip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %21, i32* %2, align 4
  br label %132

22:                                               ; preds = %1
  %23 = load %struct.zip*, %struct.zip** %4, align 8
  %24 = getelementptr inbounds %struct.zip, %struct.zip* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ZIP_LENGTH_AT_END, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 0, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %22
  %32 = load %struct.zip*, %struct.zip** %4, align 8
  %33 = getelementptr inbounds %struct.zip, %struct.zip* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %34, 12
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %38 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %37, i32 0, i32 0
  %39 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %40 = load %struct.zip*, %struct.zip** %4, align 8
  %41 = getelementptr inbounds %struct.zip, %struct.zip* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %38, i32 %39, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %45, i32* %2, align 4
  br label %132

46:                                               ; preds = %31, %22
  %47 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %48 = call i8* @__archive_read_ahead(%struct.archive_read* %47, i64 12, i32* null)
  store i8* %48, i8** %5, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %53 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %52, i32 0, i32 0
  %54 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %55 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %53, i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %56, i32* %2, align 4
  br label %132

57:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %102, %57
  %59 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %60 = call i8* @__archive_read_next_passphrase(%struct.archive_read* %59)
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %65 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %64, i32 0, i32 0
  %66 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp sgt i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0)
  %71 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %65, i32 %66, i8* %70)
  %72 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %72, i32* %2, align 4
  br label %132

73:                                               ; preds = %58
  %74 = load %struct.zip*, %struct.zip** %4, align 8
  %75 = getelementptr inbounds %struct.zip, %struct.zip* %74, i32 0, i32 5
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @trad_enc_init(i32* %75, i8* %76, i32 %78, i8* %79, i64 12, i64* %9)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %73
  %84 = load i64, i64* %9, align 8
  %85 = load %struct.zip*, %struct.zip** %4, align 8
  %86 = getelementptr inbounds %struct.zip, %struct.zip* %85, i32 0, i32 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %84, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %105

92:                                               ; preds = %83, %73
  %93 = load i32, i32* %6, align 4
  %94 = icmp sgt i32 %93, 10000
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %97 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %96, i32 0, i32 0
  %98 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %99 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %97, i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %100, i32* %2, align 4
  br label %132

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %58

105:                                              ; preds = %91
  %106 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %107 = call i32 @__archive_read_consume(%struct.archive_read* %106, i64 12)
  %108 = load %struct.zip*, %struct.zip** %4, align 8
  %109 = getelementptr inbounds %struct.zip, %struct.zip* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.zip*, %struct.zip** %4, align 8
  %111 = getelementptr inbounds %struct.zip, %struct.zip* %110, i32 0, i32 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @ZIP_LENGTH_AT_END, align 4
  %116 = and i32 %114, %115
  %117 = icmp eq i32 0, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %105
  %119 = load %struct.zip*, %struct.zip** %4, align 8
  %120 = getelementptr inbounds %struct.zip, %struct.zip* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %121, 12
  store i64 %122, i64* %120, align 8
  br label %123

123:                                              ; preds = %118, %105
  %124 = load %struct.zip*, %struct.zip** %4, align 8
  %125 = getelementptr inbounds %struct.zip, %struct.zip* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 12
  store i32 %127, i32* %125, align 8
  %128 = load %struct.zip*, %struct.zip** %4, align 8
  %129 = getelementptr inbounds %struct.zip, %struct.zip* %128, i32 0, i32 2
  store i64 0, i64* %129, align 8
  %130 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %131 = call i32 @zip_alloc_decryption_buffer(%struct.archive_read* %130)
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %123, %95, %63, %51, %36, %20
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i32*) #1

declare dso_local i8* @__archive_read_next_passphrase(%struct.archive_read*) #1

declare dso_local i32 @trad_enc_init(i32*, i8*, i32, i8*, i64, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i32 @zip_alloc_decryption_buffer(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
