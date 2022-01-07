; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c__7z_compression_init_encoder.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c__7z_compression_init_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct._7zip = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i64, i32, i64 }

@PPMD7_DEFAULT_ORDER = common dso_local global i32 0, align 4
@PPMD7_DEFAULT_MEM_SIZE = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i32, i32)* @_7z_compression_init_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_7z_compression_init_encoder(%struct.archive_write* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._7zip*, align 8
  %8 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %10 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct._7zip*
  store %struct._7zip* %12, %struct._7zip** %7, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %51 [
    i32 131, label %14
    i32 133, label %21
    i32 130, label %28
    i32 129, label %35
    i32 128, label %42
    i32 132, label %50
  ]

14:                                               ; preds = %3
  %15 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %16 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %15, i32 0, i32 0
  %17 = load %struct._7zip*, %struct._7zip** %7, align 8
  %18 = getelementptr inbounds %struct._7zip, %struct._7zip* %17, i32 0, i32 0
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @compression_init_encoder_deflate(i32* %16, %struct.TYPE_7__* %18, i32 %19, i32 0)
  store i32 %20, i32* %8, align 4
  br label %57

21:                                               ; preds = %3
  %22 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %23 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %22, i32 0, i32 0
  %24 = load %struct._7zip*, %struct._7zip** %7, align 8
  %25 = getelementptr inbounds %struct._7zip, %struct._7zip* %24, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @compression_init_encoder_bzip2(i32* %23, %struct.TYPE_7__* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %57

28:                                               ; preds = %3
  %29 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %30 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %29, i32 0, i32 0
  %31 = load %struct._7zip*, %struct._7zip** %7, align 8
  %32 = getelementptr inbounds %struct._7zip, %struct._7zip* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @compression_init_encoder_lzma1(i32* %30, %struct.TYPE_7__* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  br label %57

35:                                               ; preds = %3
  %36 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %37 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %36, i32 0, i32 0
  %38 = load %struct._7zip*, %struct._7zip** %7, align 8
  %39 = getelementptr inbounds %struct._7zip, %struct._7zip* %38, i32 0, i32 0
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @compression_init_encoder_lzma2(i32* %37, %struct.TYPE_7__* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  br label %57

42:                                               ; preds = %3
  %43 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %44 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %43, i32 0, i32 0
  %45 = load %struct._7zip*, %struct._7zip** %7, align 8
  %46 = getelementptr inbounds %struct._7zip, %struct._7zip* %45, i32 0, i32 0
  %47 = load i32, i32* @PPMD7_DEFAULT_ORDER, align 4
  %48 = load i32, i32* @PPMD7_DEFAULT_MEM_SIZE, align 4
  %49 = call i32 @compression_init_encoder_ppmd(i32* %44, %struct.TYPE_7__* %46, i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %57

50:                                               ; preds = %3
  br label %51

51:                                               ; preds = %3, %50
  %52 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %53 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %52, i32 0, i32 0
  %54 = load %struct._7zip*, %struct._7zip** %7, align 8
  %55 = getelementptr inbounds %struct._7zip, %struct._7zip* %54, i32 0, i32 0
  %56 = call i32 @compression_init_encoder_copy(i32* %53, %struct.TYPE_7__* %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %51, %42, %35, %28, %21, %14
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @ARCHIVE_OK, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load %struct._7zip*, %struct._7zip** %7, align 8
  %63 = getelementptr inbounds %struct._7zip, %struct._7zip* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct._7zip*, %struct._7zip** %7, align 8
  %66 = getelementptr inbounds %struct._7zip, %struct._7zip* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct._7zip*, %struct._7zip** %7, align 8
  %69 = getelementptr inbounds %struct._7zip, %struct._7zip* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load %struct._7zip*, %struct._7zip** %7, align 8
  %72 = getelementptr inbounds %struct._7zip, %struct._7zip* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 4, i32* %73, align 8
  %74 = load %struct._7zip*, %struct._7zip** %7, align 8
  %75 = getelementptr inbounds %struct._7zip, %struct._7zip* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %61, %57
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i32 @compression_init_encoder_deflate(i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @compression_init_encoder_bzip2(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @compression_init_encoder_lzma1(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @compression_init_encoder_lzma2(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @compression_init_encoder_ppmd(i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @compression_init_encoder_copy(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
