; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_archive_write_zip_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_archive_write_zip_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.zip* }
%struct.zip = type { i32, i64, i32, i64, i32, %struct.zip*, %struct.zip*, %struct.zip*, %struct.zip* }
%struct.cd_segment = type { i32, i64, i32, i64, i32, %struct.cd_segment*, %struct.cd_segment*, %struct.cd_segment*, %struct.cd_segment* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @archive_write_zip_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_zip_free(%struct.archive_write* %0) #0 {
  %2 = alloca %struct.archive_write*, align 8
  %3 = alloca %struct.zip*, align 8
  %4 = alloca %struct.cd_segment*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %2, align 8
  %5 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %6 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %5, i32 0, i32 0
  %7 = load %struct.zip*, %struct.zip** %6, align 8
  store %struct.zip* %7, %struct.zip** %3, align 8
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.zip*, %struct.zip** %3, align 8
  %10 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 8
  %11 = load %struct.zip*, %struct.zip** %10, align 8
  %12 = icmp ne %struct.zip* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = load %struct.zip*, %struct.zip** %3, align 8
  %15 = getelementptr inbounds %struct.zip, %struct.zip* %14, i32 0, i32 8
  %16 = load %struct.zip*, %struct.zip** %15, align 8
  %17 = bitcast %struct.zip* %16 to %struct.cd_segment*
  store %struct.cd_segment* %17, %struct.cd_segment** %4, align 8
  %18 = load %struct.cd_segment*, %struct.cd_segment** %4, align 8
  %19 = getelementptr inbounds %struct.cd_segment, %struct.cd_segment* %18, i32 0, i32 7
  %20 = load %struct.cd_segment*, %struct.cd_segment** %19, align 8
  %21 = bitcast %struct.cd_segment* %20 to %struct.zip*
  %22 = load %struct.zip*, %struct.zip** %3, align 8
  %23 = getelementptr inbounds %struct.zip, %struct.zip* %22, i32 0, i32 8
  store %struct.zip* %21, %struct.zip** %23, align 8
  %24 = load %struct.cd_segment*, %struct.cd_segment** %4, align 8
  %25 = getelementptr inbounds %struct.cd_segment, %struct.cd_segment* %24, i32 0, i32 6
  %26 = load %struct.cd_segment*, %struct.cd_segment** %25, align 8
  %27 = bitcast %struct.cd_segment* %26 to %struct.zip*
  %28 = call i32 @free(%struct.zip* %27)
  %29 = load %struct.cd_segment*, %struct.cd_segment** %4, align 8
  %30 = bitcast %struct.cd_segment* %29 to %struct.zip*
  %31 = call i32 @free(%struct.zip* %30)
  br label %8

32:                                               ; preds = %8
  %33 = load %struct.zip*, %struct.zip** %3, align 8
  %34 = getelementptr inbounds %struct.zip, %struct.zip* %33, i32 0, i32 5
  %35 = load %struct.zip*, %struct.zip** %34, align 8
  %36 = call i32 @free(%struct.zip* %35)
  %37 = load %struct.zip*, %struct.zip** %3, align 8
  %38 = getelementptr inbounds %struct.zip, %struct.zip* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @archive_entry_free(i32 %39)
  %41 = load %struct.zip*, %struct.zip** %3, align 8
  %42 = getelementptr inbounds %struct.zip, %struct.zip* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load %struct.zip*, %struct.zip** %3, align 8
  %47 = getelementptr inbounds %struct.zip, %struct.zip* %46, i32 0, i32 2
  %48 = call i32 @archive_encrypto_aes_ctr_release(i32* %47)
  br label %49

49:                                               ; preds = %45, %32
  %50 = load %struct.zip*, %struct.zip** %3, align 8
  %51 = getelementptr inbounds %struct.zip, %struct.zip* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.zip*, %struct.zip** %3, align 8
  %56 = getelementptr inbounds %struct.zip, %struct.zip* %55, i32 0, i32 0
  %57 = call i32 @archive_hmac_sha1_cleanup(i32* %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.zip*, %struct.zip** %3, align 8
  %60 = call i32 @free(%struct.zip* %59)
  %61 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %62 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %61, i32 0, i32 0
  store %struct.zip* null, %struct.zip** %62, align 8
  %63 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %63
}

declare dso_local i32 @free(%struct.zip*) #1

declare dso_local i32 @archive_entry_free(i32) #1

declare dso_local i32 @archive_encrypto_aes_ctr_release(i32*) #1

declare dso_local i32 @archive_hmac_sha1_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
