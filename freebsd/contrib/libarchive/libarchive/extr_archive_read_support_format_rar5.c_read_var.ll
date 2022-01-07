; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_read_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_read_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }

@ARCHIVE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i64*, i64*)* @read_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_var(%struct.archive_read* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %14 = call i32 @read_ahead(%struct.archive_read* %13, i32 8, i64** %11)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %84

17:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %60, %17
  %19 = load i64, i64* %10, align 8
  %20 = icmp ult i64 %19, 8
  br i1 %20, label %21, label %65

21:                                               ; preds = %18
  %22 = load i64*, i64** %11, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = and i64 %26, 127
  %28 = load i64, i64* %9, align 8
  %29 = shl i64 %27, %28
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %12, align 8
  %33 = and i64 %32, 128
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %21
  %36 = load i64*, i64** %6, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i64, i64* %8, align 8
  %40 = load i64*, i64** %6, align 8
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i64*, i64** %7, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, i64* %10, align 8
  %46 = add i64 1, %45
  %47 = load i64*, i64** %7, align 8
  store i64 %46, i64* %47, align 8
  br label %58

48:                                               ; preds = %41
  %49 = load i64, i64* @ARCHIVE_OK, align 8
  %50 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %51 = load i64, i64* %10, align 8
  %52 = add i64 1, %51
  %53 = trunc i64 %52 to i32
  %54 = call i64 @consume(%struct.archive_read* %50, i32 %53)
  %55 = icmp ne i64 %49, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %84

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %44
  store i32 1, i32* %4, align 4
  br label %84

59:                                               ; preds = %21
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 7
  store i64 %64, i64* %9, align 8
  br label %18

65:                                               ; preds = %18
  %66 = load i64*, i64** %6, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i64, i64* %8, align 8
  %70 = load i64*, i64** %6, align 8
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i64*, i64** %7, align 8
  %73 = icmp ne i64* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i64*, i64** %7, align 8
  store i64 9, i64* %75, align 8
  br label %83

76:                                               ; preds = %71
  %77 = load i64, i64* @ARCHIVE_OK, align 8
  %78 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %79 = call i64 @consume(%struct.archive_read* %78, i32 9)
  %80 = icmp ne i64 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %84

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %74
  store i32 1, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %81, %58, %56, %16
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @read_ahead(%struct.archive_read*, i32, i64**) #1

declare dso_local i64 @consume(%struct.archive_read*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
