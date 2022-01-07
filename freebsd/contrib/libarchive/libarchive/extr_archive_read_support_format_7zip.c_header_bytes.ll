; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_header_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_header_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct._7zip = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.archive_read*, i64)* @header_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @header_bytes(%struct.archive_read* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._7zip*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %11 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct._7zip*
  store %struct._7zip* %15, %struct._7zip** %6, align 8
  %16 = load %struct._7zip*, %struct._7zip** %6, align 8
  %17 = getelementptr inbounds %struct._7zip, %struct._7zip* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %77

22:                                               ; preds = %2
  %23 = load %struct._7zip*, %struct._7zip** %6, align 8
  %24 = getelementptr inbounds %struct._7zip, %struct._7zip* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %29 = call i32 @read_consume(%struct.archive_read* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct._7zip*, %struct._7zip** %6, align 8
  %32 = getelementptr inbounds %struct._7zip, %struct._7zip* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i8* @__archive_read_ahead(%struct.archive_read* %36, i64 %37, i32* null)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i8* null, i8** %3, align 8
  br label %77

42:                                               ; preds = %35
  %43 = load i64, i64* %5, align 8
  %44 = load %struct._7zip*, %struct._7zip** %6, align 8
  %45 = getelementptr inbounds %struct._7zip, %struct._7zip* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %46, %43
  store i64 %47, i64* %45, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load %struct._7zip*, %struct._7zip** %6, align 8
  %50 = getelementptr inbounds %struct._7zip, %struct._7zip* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %66

51:                                               ; preds = %30
  %52 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @read_stream(%struct.archive_read* %52, i8** %8, i64 %53, i64 %54)
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i8* null, i8** %3, align 8
  br label %77

59:                                               ; preds = %51
  %60 = load i64, i64* %9, align 8
  %61 = load %struct._7zip*, %struct._7zip** %6, align 8
  %62 = getelementptr inbounds %struct._7zip, %struct._7zip* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load i8*, i8** %8, align 8
  store i8* %65, i8** %7, align 8
  br label %66

66:                                               ; preds = %59, %42
  %67 = load %struct._7zip*, %struct._7zip** %6, align 8
  %68 = getelementptr inbounds %struct._7zip, %struct._7zip* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i64, i64* %5, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @crc32(i32 %69, i8* %70, i32 %72)
  %74 = load %struct._7zip*, %struct._7zip** %6, align 8
  %75 = getelementptr inbounds %struct._7zip, %struct._7zip* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** %7, align 8
  store i8* %76, i8** %3, align 8
  br label %77

77:                                               ; preds = %66, %58, %41, %21
  %78 = load i8*, i8** %3, align 8
  ret i8* %78
}

declare dso_local i32 @read_consume(%struct.archive_read*) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i32*) #1

declare dso_local i64 @read_stream(%struct.archive_read*, i8**, i64, i64) #1

declare dso_local i32 @crc32(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
