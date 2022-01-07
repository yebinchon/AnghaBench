; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_archive_read_format_zip_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_archive_read_format_zip_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32*)* }
%struct.archive_read = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.zip = type { i32, %struct.zip*, %struct.zip*, %struct.zip*, i32, i64, i32, i64, %struct.zip*, i32, %struct.zip*, %struct.zip*, i32, i64, %struct.zip*, i32, i64, i32, i64, i32, i64 }
%struct.zip_entry = type { i32, %struct.zip_entry*, %struct.zip_entry*, %struct.zip_entry*, i32, i64, i32, i64, %struct.zip_entry*, i32, %struct.zip_entry*, %struct.zip_entry*, i32, i64, %struct.zip_entry*, i32, i64, i32, i64, i32, i64 }

@__archive_ppmd8_functions = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @archive_read_format_zip_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_zip_cleanup(%struct.archive_read* %0) #0 {
  %2 = alloca %struct.archive_read*, align 8
  %3 = alloca %struct.zip*, align 8
  %4 = alloca %struct.zip_entry*, align 8
  %5 = alloca %struct.zip_entry*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %2, align 8
  %6 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %7 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = bitcast i32* %10 to %struct.zip*
  store %struct.zip* %11, %struct.zip** %3, align 8
  %12 = load %struct.zip*, %struct.zip** %3, align 8
  %13 = getelementptr inbounds %struct.zip, %struct.zip* %12, i32 0, i32 14
  %14 = load %struct.zip*, %struct.zip** %13, align 8
  %15 = bitcast %struct.zip* %14 to %struct.zip_entry*
  %16 = call i32 @free(%struct.zip_entry* %15)
  %17 = load %struct.zip*, %struct.zip** %3, align 8
  %18 = getelementptr inbounds %struct.zip, %struct.zip* %17, i32 0, i32 13
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @__archive_ppmd8_functions, i32 0, i32 0), align 8
  %23 = load %struct.zip*, %struct.zip** %3, align 8
  %24 = getelementptr inbounds %struct.zip, %struct.zip* %23, i32 0, i32 12
  %25 = call i32 %22(i32* %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.zip*, %struct.zip** %3, align 8
  %28 = getelementptr inbounds %struct.zip, %struct.zip* %27, i32 0, i32 11
  %29 = load %struct.zip*, %struct.zip** %28, align 8
  %30 = icmp ne %struct.zip* %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  %32 = load %struct.zip*, %struct.zip** %3, align 8
  %33 = getelementptr inbounds %struct.zip, %struct.zip* %32, i32 0, i32 11
  %34 = load %struct.zip*, %struct.zip** %33, align 8
  %35 = bitcast %struct.zip* %34 to %struct.zip_entry*
  store %struct.zip_entry* %35, %struct.zip_entry** %4, align 8
  br label %36

36:                                               ; preds = %39, %31
  %37 = load %struct.zip_entry*, %struct.zip_entry** %4, align 8
  %38 = icmp ne %struct.zip_entry* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.zip_entry*, %struct.zip_entry** %4, align 8
  %41 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %40, i32 0, i32 10
  %42 = load %struct.zip_entry*, %struct.zip_entry** %41, align 8
  store %struct.zip_entry* %42, %struct.zip_entry** %5, align 8
  %43 = load %struct.zip_entry*, %struct.zip_entry** %4, align 8
  %44 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %43, i32 0, i32 9
  %45 = call i32 @archive_string_free(i32* %44)
  %46 = load %struct.zip_entry*, %struct.zip_entry** %4, align 8
  %47 = call i32 @free(%struct.zip_entry* %46)
  %48 = load %struct.zip_entry*, %struct.zip_entry** %5, align 8
  store %struct.zip_entry* %48, %struct.zip_entry** %4, align 8
  br label %36

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %26
  %51 = load %struct.zip*, %struct.zip** %3, align 8
  %52 = getelementptr inbounds %struct.zip, %struct.zip* %51, i32 0, i32 8
  %53 = load %struct.zip*, %struct.zip** %52, align 8
  %54 = bitcast %struct.zip* %53 to %struct.zip_entry*
  %55 = call i32 @free(%struct.zip_entry* %54)
  %56 = load %struct.zip*, %struct.zip** %3, align 8
  %57 = getelementptr inbounds %struct.zip, %struct.zip* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load %struct.zip*, %struct.zip** %3, align 8
  %62 = getelementptr inbounds %struct.zip, %struct.zip* %61, i32 0, i32 6
  %63 = call i32 @archive_decrypto_aes_ctr_release(i32* %62)
  br label %64

64:                                               ; preds = %60, %50
  %65 = load %struct.zip*, %struct.zip** %3, align 8
  %66 = getelementptr inbounds %struct.zip, %struct.zip* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.zip*, %struct.zip** %3, align 8
  %71 = getelementptr inbounds %struct.zip, %struct.zip* %70, i32 0, i32 4
  %72 = call i32 @archive_hmac_sha1_cleanup(i32* %71)
  br label %73

73:                                               ; preds = %69, %64
  %74 = load %struct.zip*, %struct.zip** %3, align 8
  %75 = getelementptr inbounds %struct.zip, %struct.zip* %74, i32 0, i32 3
  %76 = load %struct.zip*, %struct.zip** %75, align 8
  %77 = bitcast %struct.zip* %76 to %struct.zip_entry*
  %78 = call i32 @free(%struct.zip_entry* %77)
  %79 = load %struct.zip*, %struct.zip** %3, align 8
  %80 = getelementptr inbounds %struct.zip, %struct.zip* %79, i32 0, i32 2
  %81 = load %struct.zip*, %struct.zip** %80, align 8
  %82 = bitcast %struct.zip* %81 to %struct.zip_entry*
  %83 = call i32 @free(%struct.zip_entry* %82)
  %84 = load %struct.zip*, %struct.zip** %3, align 8
  %85 = getelementptr inbounds %struct.zip, %struct.zip* %84, i32 0, i32 1
  %86 = load %struct.zip*, %struct.zip** %85, align 8
  %87 = bitcast %struct.zip* %86 to %struct.zip_entry*
  %88 = call i32 @free(%struct.zip_entry* %87)
  %89 = load %struct.zip*, %struct.zip** %3, align 8
  %90 = getelementptr inbounds %struct.zip, %struct.zip* %89, i32 0, i32 0
  %91 = call i32 @archive_string_free(i32* %90)
  %92 = load %struct.zip*, %struct.zip** %3, align 8
  %93 = bitcast %struct.zip* %92 to %struct.zip_entry*
  %94 = call i32 @free(%struct.zip_entry* %93)
  %95 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %96 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  %99 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %99
}

declare dso_local i32 @free(%struct.zip_entry*) #1

declare dso_local i32 @archive_string_free(i32*) #1

declare dso_local i32 @archive_decrypto_aes_ctr_release(i32*) #1

declare dso_local i32 @archive_hmac_sha1_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
