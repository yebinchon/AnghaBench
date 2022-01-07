; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_init_traditional_pkware_encryption.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_init_traditional_pkware_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.zip* }
%struct.zip = type { i32, i32, i32, i32 }

@TRAD_HEADER_SIZE = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Encryption needs passphrase\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Can't generate random number for encryption\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @init_traditional_pkware_encryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_traditional_pkware_encryption(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.zip*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %11 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %12 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %11, i32 0, i32 1
  %13 = load %struct.zip*, %struct.zip** %12, align 8
  store %struct.zip* %13, %struct.zip** %4, align 8
  %14 = load i32, i32* @TRAD_HEADER_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @TRAD_HEADER_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %21 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %22 = call i8* @__archive_write_get_passphrase(%struct.archive_write* %21)
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %27 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %26, i32 0, i32 0
  %28 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %29 = call i32 @archive_set_error(i32* %27, i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %30, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %83

31:                                               ; preds = %1
  %32 = mul nuw i64 4, %15
  %33 = sub i64 %32, 1
  %34 = trunc i64 %33 to i32
  %35 = call i32 @archive_random(i32* %17, i32 %34)
  %36 = load i32, i32* @ARCHIVE_OK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %40 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %39, i32 0, i32 0
  %41 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %42 = call i32 @archive_set_error(i32* %40, i32 %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %43, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %83

44:                                               ; preds = %31
  %45 = load %struct.zip*, %struct.zip** %4, align 8
  %46 = getelementptr inbounds %struct.zip, %struct.zip* %45, i32 0, i32 2
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = call i32 @trad_enc_init(i32* %46, i8* %47, i32 %49)
  %51 = load %struct.zip*, %struct.zip** %4, align 8
  %52 = getelementptr inbounds %struct.zip, %struct.zip* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TRAD_HEADER_SIZE, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %17, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load %struct.zip*, %struct.zip** %4, align 8
  %59 = getelementptr inbounds %struct.zip, %struct.zip* %58, i32 0, i32 2
  %60 = load i32, i32* @TRAD_HEADER_SIZE, align 4
  %61 = load i32, i32* @TRAD_HEADER_SIZE, align 4
  %62 = call i32 @trad_enc_encrypt_update(i32* %59, i32* %17, i32 %60, i32* %20, i32 %61)
  %63 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %64 = load i32, i32* @TRAD_HEADER_SIZE, align 4
  %65 = call i32 @__archive_write_output(%struct.archive_write* %63, i32* %20, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @ARCHIVE_OK, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %44
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %83

71:                                               ; preds = %44
  %72 = load i32, i32* @TRAD_HEADER_SIZE, align 4
  %73 = load %struct.zip*, %struct.zip** %4, align 8
  %74 = getelementptr inbounds %struct.zip, %struct.zip* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @TRAD_HEADER_SIZE, align 4
  %78 = load %struct.zip*, %struct.zip** %4, align 8
  %79 = getelementptr inbounds %struct.zip, %struct.zip* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %83

83:                                               ; preds = %71, %69, %38, %25
  %84 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @__archive_write_get_passphrase(%struct.archive_write*) #2

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #2

declare dso_local i32 @archive_random(i32*, i32) #2

declare dso_local i32 @trad_enc_init(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @trad_enc_encrypt_update(i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
