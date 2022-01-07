; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_db.c__citrus_db_get_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_db.c__citrus_db_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_db = type { i32 }
%struct._region = type { i32 }
%struct._citrus_db_entry_x = type { i32, i32, i32, i32, i32, i32 }
%struct._citrus_db_header_x = type { i32, i32, i32, i32, i32, i32 }
%struct._memstream = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@_CITRUS_DB_ENTRY_SIZE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_citrus_db_get_entry(%struct._citrus_db* %0, i32 %1, %struct._region* %2, %struct._region* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._citrus_db*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._region*, align 8
  %9 = alloca %struct._region*, align 8
  %10 = alloca %struct._citrus_db_entry_x*, align 8
  %11 = alloca %struct._citrus_db_header_x*, align 8
  %12 = alloca %struct._memstream, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct._citrus_db* %0, %struct._citrus_db** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct._region* %2, %struct._region** %8, align 8
  store %struct._region* %3, %struct._region** %9, align 8
  %15 = load %struct._citrus_db*, %struct._citrus_db** %6, align 8
  %16 = getelementptr inbounds %struct._citrus_db, %struct._citrus_db* %15, i32 0, i32 0
  %17 = call i32 @_memstream_bind(%struct._memstream* %12, i32* %16)
  %18 = call %struct._citrus_db_header_x* @_memstream_getregion(%struct._memstream* %12, %struct._region* null, i32 24)
  store %struct._citrus_db_header_x* %18, %struct._citrus_db_header_x** %11, align 8
  %19 = load %struct._citrus_db_header_x*, %struct._citrus_db_header_x** %11, align 8
  %20 = getelementptr inbounds %struct._citrus_db_header_x, %struct._citrus_db_header_x* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be32toh(i32 %21)
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %13, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %13, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %4
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %5, align 4
  br label %98

33:                                               ; preds = %26
  %34 = load %struct._citrus_db_header_x*, %struct._citrus_db_header_x** %11, align 8
  %35 = getelementptr inbounds %struct._citrus_db_header_x, %struct._citrus_db_header_x* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be32toh(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @_CITRUS_DB_ENTRY_SIZE, align 4
  %40 = mul nsw i32 %38, %39
  %41 = add nsw i32 %37, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i32, i32* @SEEK_SET, align 4
  %45 = call i64 @_citrus_memory_stream_seek(%struct._memstream* %12, i64 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* @EFTYPE, align 4
  store i32 %48, i32* %5, align 4
  br label %98

49:                                               ; preds = %33
  %50 = load i32, i32* @_CITRUS_DB_ENTRY_SIZE, align 4
  %51 = call %struct._citrus_db_header_x* @_memstream_getregion(%struct._memstream* %12, %struct._region* null, i32 %50)
  %52 = bitcast %struct._citrus_db_header_x* %51 to %struct._citrus_db_entry_x*
  store %struct._citrus_db_entry_x* %52, %struct._citrus_db_entry_x** %10, align 8
  %53 = load %struct._citrus_db_entry_x*, %struct._citrus_db_entry_x** %10, align 8
  %54 = icmp eq %struct._citrus_db_entry_x* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @EFTYPE, align 4
  store i32 %56, i32* %5, align 4
  br label %98

57:                                               ; preds = %49
  %58 = load %struct._citrus_db_entry_x*, %struct._citrus_db_entry_x** %10, align 8
  %59 = getelementptr inbounds %struct._citrus_db_entry_x, %struct._citrus_db_entry_x* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be32toh(i32 %60)
  %62 = load i32, i32* @SEEK_SET, align 4
  %63 = call i64 @_memstream_seek(%struct._memstream* %12, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @EFTYPE, align 4
  store i32 %66, i32* %5, align 4
  br label %98

67:                                               ; preds = %57
  %68 = load %struct._region*, %struct._region** %8, align 8
  %69 = load %struct._citrus_db_entry_x*, %struct._citrus_db_entry_x** %10, align 8
  %70 = getelementptr inbounds %struct._citrus_db_entry_x, %struct._citrus_db_entry_x* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @be32toh(i32 %71)
  %73 = call %struct._citrus_db_header_x* @_memstream_getregion(%struct._memstream* %12, %struct._region* %68, i32 %72)
  %74 = icmp eq %struct._citrus_db_header_x* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @EFTYPE, align 4
  store i32 %76, i32* %5, align 4
  br label %98

77:                                               ; preds = %67
  %78 = load %struct._citrus_db_entry_x*, %struct._citrus_db_entry_x** %10, align 8
  %79 = getelementptr inbounds %struct._citrus_db_entry_x, %struct._citrus_db_entry_x* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @be32toh(i32 %80)
  %82 = load i32, i32* @SEEK_SET, align 4
  %83 = call i64 @_memstream_seek(%struct._memstream* %12, i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @EFTYPE, align 4
  store i32 %86, i32* %5, align 4
  br label %98

87:                                               ; preds = %77
  %88 = load %struct._region*, %struct._region** %9, align 8
  %89 = load %struct._citrus_db_entry_x*, %struct._citrus_db_entry_x** %10, align 8
  %90 = getelementptr inbounds %struct._citrus_db_entry_x, %struct._citrus_db_entry_x* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @be32toh(i32 %91)
  %93 = call %struct._citrus_db_header_x* @_memstream_getregion(%struct._memstream* %12, %struct._region* %88, i32 %92)
  %94 = icmp eq %struct._citrus_db_header_x* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @EFTYPE, align 4
  store i32 %96, i32* %5, align 4
  br label %98

97:                                               ; preds = %87
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %95, %85, %75, %65, %55, %47, %31
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @_memstream_bind(%struct._memstream*, i32*) #1

declare dso_local %struct._citrus_db_header_x* @_memstream_getregion(%struct._memstream*, %struct._region*, i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i64 @_citrus_memory_stream_seek(%struct._memstream*, i64, i32) #1

declare dso_local i64 @_memstream_seek(%struct._memstream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
