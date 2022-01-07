; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_read_zip64_eocd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_read_zip64_eocd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.zip = type { i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.zip*, i8*)* @read_zip64_eocd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_zip64_eocd(%struct.archive_read* %0, %struct.zip* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct.zip*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct.zip* %1, %struct.zip** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 4
  %12 = call i32 @archive_le32dec(i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 16
  %18 = call i32 @archive_le32dec(i8* %17)
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %83

21:                                               ; preds = %15
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 8
  %24 = call i64 @archive_le64dec(i8* %23)
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @SEEK_SET, align 4
  %29 = call i64 @__archive_read_seek(%struct.archive_read* %26, i32 %27, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %83

32:                                               ; preds = %21
  %33 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %34 = call i8* @__archive_read_ahead(%struct.archive_read* %33, i64 56, i32* null)
  store i8* %34, i8** %7, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %83

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  %40 = call i64 @archive_le64dec(i8* %39)
  %41 = add nsw i64 %40, 12
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 56
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %46, 16384
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %37
  store i32 0, i32* %4, align 4
  br label %83

49:                                               ; preds = %45
  %50 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = call i8* @__archive_read_ahead(%struct.archive_read* %50, i64 %52, i32* null)
  store i8* %53, i8** %7, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %83

56:                                               ; preds = %49
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 16
  %59 = call i32 @archive_le32dec(i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %83

62:                                               ; preds = %56
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 20
  %65 = call i32 @archive_le32dec(i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %83

68:                                               ; preds = %62
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 24
  %71 = call i64 @archive_le64dec(i8* %70)
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 32
  %74 = call i64 @archive_le64dec(i8* %73)
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %83

77:                                               ; preds = %68
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 48
  %80 = call i64 @archive_le64dec(i8* %79)
  %81 = load %struct.zip*, %struct.zip** %6, align 8
  %82 = getelementptr inbounds %struct.zip, %struct.zip* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  store i32 32, i32* %4, align 4
  br label %83

83:                                               ; preds = %77, %76, %67, %61, %55, %48, %36, %31, %20, %14
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @archive_le32dec(i8*) #1

declare dso_local i64 @archive_le64dec(i8*) #1

declare dso_local i64 @__archive_read_seek(%struct.archive_read*, i32, i32) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
