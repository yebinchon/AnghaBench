; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_compression_code_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_compression_code_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.la_zstream = type { i64, i64, i64, i64, i64, i64 }

@ARCHIVE_Z_FINISH = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, %struct.la_zstream*, i32)* @compression_code_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compression_code_copy(%struct.archive* %0, %struct.la_zstream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca %struct.la_zstream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.archive* %0, %struct.archive** %5, align 8
  store %struct.la_zstream* %1, %struct.la_zstream** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.archive*, %struct.archive** %5, align 8
  %10 = load %struct.la_zstream*, %struct.la_zstream** %6, align 8
  %11 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.la_zstream*, %struct.la_zstream** %6, align 8
  %14 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.la_zstream*, %struct.la_zstream** %6, align 8
  %19 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.la_zstream*, %struct.la_zstream** %6, align 8
  %23 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %25
  %29 = load %struct.la_zstream*, %struct.la_zstream** %6, align 8
  %30 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.la_zstream*, %struct.la_zstream** %6, align 8
  %33 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @memcpy(i64 %31, i64 %34, i64 %35)
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.la_zstream*, %struct.la_zstream** %6, align 8
  %39 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.la_zstream*, %struct.la_zstream** %6, align 8
  %44 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.la_zstream*, %struct.la_zstream** %6, align 8
  %49 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, %47
  store i64 %51, i64* %49, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.la_zstream*, %struct.la_zstream** %6, align 8
  %54 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.la_zstream*, %struct.la_zstream** %6, align 8
  %59 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.la_zstream*, %struct.la_zstream** %6, align 8
  %64 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, %62
  store i64 %66, i64* %64, align 8
  br label %67

67:                                               ; preds = %28, %25
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @ARCHIVE_Z_FINISH, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load %struct.la_zstream*, %struct.la_zstream** %6, align 8
  %73 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %77, i32* %4, align 4
  br label %80

78:                                               ; preds = %71, %67
  %79 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @memcpy(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
