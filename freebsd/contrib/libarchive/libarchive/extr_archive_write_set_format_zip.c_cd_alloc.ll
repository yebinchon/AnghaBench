; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_cd_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_cd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i64, %struct.cd_segment*, %struct.cd_segment* }
%struct.cd_segment = type { i64, i64, i64, %struct.cd_segment* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.zip*, i64)* @cd_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cd_alloc(%struct.zip* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.zip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cd_segment*, align 8
  store %struct.zip* %0, %struct.zip** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.zip*, %struct.zip** %4, align 8
  %9 = getelementptr inbounds %struct.zip, %struct.zip* %8, i32 0, i32 2
  %10 = load %struct.cd_segment*, %struct.cd_segment** %9, align 8
  %11 = icmp eq %struct.cd_segment* %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %2
  %13 = load %struct.zip*, %struct.zip** %4, align 8
  %14 = getelementptr inbounds %struct.zip, %struct.zip* %13, i32 0, i32 1
  %15 = load %struct.cd_segment*, %struct.cd_segment** %14, align 8
  %16 = getelementptr inbounds %struct.cd_segment, %struct.cd_segment* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %17, %18
  %20 = load %struct.zip*, %struct.zip** %4, align 8
  %21 = getelementptr inbounds %struct.zip, %struct.zip* %20, i32 0, i32 1
  %22 = load %struct.cd_segment*, %struct.cd_segment** %21, align 8
  %23 = getelementptr inbounds %struct.cd_segment, %struct.cd_segment* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.zip*, %struct.zip** %4, align 8
  %26 = getelementptr inbounds %struct.zip, %struct.zip* %25, i32 0, i32 1
  %27 = load %struct.cd_segment*, %struct.cd_segment** %26, align 8
  %28 = getelementptr inbounds %struct.cd_segment, %struct.cd_segment* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %24, %29
  %31 = icmp ugt i64 %19, %30
  br i1 %31, label %32, label %82

32:                                               ; preds = %12, %2
  %33 = call %struct.cd_segment* @calloc(i32 1, i32 32)
  store %struct.cd_segment* %33, %struct.cd_segment** %7, align 8
  %34 = load %struct.cd_segment*, %struct.cd_segment** %7, align 8
  %35 = icmp eq %struct.cd_segment* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i8* null, i8** %3, align 8
  br label %102

37:                                               ; preds = %32
  %38 = load %struct.cd_segment*, %struct.cd_segment** %7, align 8
  %39 = getelementptr inbounds %struct.cd_segment, %struct.cd_segment* %38, i32 0, i32 2
  store i64 65536, i64* %39, align 8
  %40 = load %struct.cd_segment*, %struct.cd_segment** %7, align 8
  %41 = getelementptr inbounds %struct.cd_segment, %struct.cd_segment* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i8* @malloc(i32 %43)
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.cd_segment*, %struct.cd_segment** %7, align 8
  %47 = getelementptr inbounds %struct.cd_segment, %struct.cd_segment* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.cd_segment*, %struct.cd_segment** %7, align 8
  %49 = getelementptr inbounds %struct.cd_segment, %struct.cd_segment* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = load %struct.cd_segment*, %struct.cd_segment** %7, align 8
  %55 = call i32 @free(%struct.cd_segment* %54)
  store i8* null, i8** %3, align 8
  br label %102

56:                                               ; preds = %37
  %57 = load %struct.cd_segment*, %struct.cd_segment** %7, align 8
  %58 = getelementptr inbounds %struct.cd_segment, %struct.cd_segment* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.cd_segment*, %struct.cd_segment** %7, align 8
  %61 = getelementptr inbounds %struct.cd_segment, %struct.cd_segment* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.zip*, %struct.zip** %4, align 8
  %63 = getelementptr inbounds %struct.zip, %struct.zip* %62, i32 0, i32 2
  %64 = load %struct.cd_segment*, %struct.cd_segment** %63, align 8
  %65 = icmp eq %struct.cd_segment* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load %struct.cd_segment*, %struct.cd_segment** %7, align 8
  %68 = load %struct.zip*, %struct.zip** %4, align 8
  %69 = getelementptr inbounds %struct.zip, %struct.zip* %68, i32 0, i32 1
  store %struct.cd_segment* %67, %struct.cd_segment** %69, align 8
  %70 = load %struct.zip*, %struct.zip** %4, align 8
  %71 = getelementptr inbounds %struct.zip, %struct.zip* %70, i32 0, i32 2
  store %struct.cd_segment* %67, %struct.cd_segment** %71, align 8
  br label %81

72:                                               ; preds = %56
  %73 = load %struct.cd_segment*, %struct.cd_segment** %7, align 8
  %74 = load %struct.zip*, %struct.zip** %4, align 8
  %75 = getelementptr inbounds %struct.zip, %struct.zip* %74, i32 0, i32 1
  %76 = load %struct.cd_segment*, %struct.cd_segment** %75, align 8
  %77 = getelementptr inbounds %struct.cd_segment, %struct.cd_segment* %76, i32 0, i32 3
  store %struct.cd_segment* %73, %struct.cd_segment** %77, align 8
  %78 = load %struct.cd_segment*, %struct.cd_segment** %7, align 8
  %79 = load %struct.zip*, %struct.zip** %4, align 8
  %80 = getelementptr inbounds %struct.zip, %struct.zip* %79, i32 0, i32 1
  store %struct.cd_segment* %78, %struct.cd_segment** %80, align 8
  br label %81

81:                                               ; preds = %72, %66
  br label %82

82:                                               ; preds = %81, %12
  %83 = load %struct.zip*, %struct.zip** %4, align 8
  %84 = getelementptr inbounds %struct.zip, %struct.zip* %83, i32 0, i32 1
  %85 = load %struct.cd_segment*, %struct.cd_segment** %84, align 8
  %86 = getelementptr inbounds %struct.cd_segment, %struct.cd_segment* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i8*
  store i8* %88, i8** %6, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load %struct.zip*, %struct.zip** %4, align 8
  %91 = getelementptr inbounds %struct.zip, %struct.zip* %90, i32 0, i32 1
  %92 = load %struct.cd_segment*, %struct.cd_segment** %91, align 8
  %93 = getelementptr inbounds %struct.cd_segment, %struct.cd_segment* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, %89
  store i64 %95, i64* %93, align 8
  %96 = load i64, i64* %5, align 8
  %97 = load %struct.zip*, %struct.zip** %4, align 8
  %98 = getelementptr inbounds %struct.zip, %struct.zip* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load i8*, i8** %6, align 8
  store i8* %101, i8** %3, align 8
  br label %102

102:                                              ; preds = %82, %53, %36
  %103 = load i8*, i8** %3, align 8
  ret i8* %103
}

declare dso_local %struct.cd_segment* @calloc(i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(%struct.cd_segment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
