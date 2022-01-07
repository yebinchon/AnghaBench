; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_archive_read_format_cab_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_archive_read_format_cab_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.cab = type { %struct.cab*, i32, i32, i32, i64, i32, %struct.cfheader, %struct.TYPE_3__ }
%struct.cfheader = type { i32, i32, %struct.cab*, %struct.cab* }
%struct.TYPE_3__ = type { %struct.cab* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @archive_read_format_cab_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_cab_cleanup(%struct.archive_read* %0) #0 {
  %2 = alloca %struct.archive_read*, align 8
  %3 = alloca %struct.cab*, align 8
  %4 = alloca %struct.cfheader*, align 8
  %5 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %2, align 8
  %6 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %7 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = bitcast i32* %10 to %struct.cab*
  store %struct.cab* %11, %struct.cab** %3, align 8
  %12 = load %struct.cab*, %struct.cab** %3, align 8
  %13 = getelementptr inbounds %struct.cab, %struct.cab* %12, i32 0, i32 6
  store %struct.cfheader* %13, %struct.cfheader** %4, align 8
  %14 = load %struct.cfheader*, %struct.cfheader** %4, align 8
  %15 = getelementptr inbounds %struct.cfheader, %struct.cfheader* %14, i32 0, i32 3
  %16 = load %struct.cab*, %struct.cab** %15, align 8
  %17 = icmp ne %struct.cab* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %36, %18
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.cfheader*, %struct.cfheader** %4, align 8
  %22 = getelementptr inbounds %struct.cfheader, %struct.cfheader* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load %struct.cfheader*, %struct.cfheader** %4, align 8
  %27 = getelementptr inbounds %struct.cfheader, %struct.cfheader* %26, i32 0, i32 3
  %28 = load %struct.cab*, %struct.cab** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cab, %struct.cab* %28, i64 %30
  %32 = getelementptr inbounds %struct.cab, %struct.cab* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.cab*, %struct.cab** %33, align 8
  %35 = call i32 @free(%struct.cab* %34)
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %19

39:                                               ; preds = %19
  %40 = load %struct.cfheader*, %struct.cfheader** %4, align 8
  %41 = getelementptr inbounds %struct.cfheader, %struct.cfheader* %40, i32 0, i32 3
  %42 = load %struct.cab*, %struct.cab** %41, align 8
  %43 = call i32 @free(%struct.cab* %42)
  br label %44

44:                                               ; preds = %39, %1
  %45 = load %struct.cfheader*, %struct.cfheader** %4, align 8
  %46 = getelementptr inbounds %struct.cfheader, %struct.cfheader* %45, i32 0, i32 2
  %47 = load %struct.cab*, %struct.cab** %46, align 8
  %48 = icmp ne %struct.cab* %47, null
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %66, %49
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.cab*, %struct.cab** %3, align 8
  %53 = getelementptr inbounds %struct.cab, %struct.cab* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.cfheader, %struct.cfheader* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load %struct.cfheader*, %struct.cfheader** %4, align 8
  %59 = getelementptr inbounds %struct.cfheader, %struct.cfheader* %58, i32 0, i32 2
  %60 = load %struct.cab*, %struct.cab** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.cab, %struct.cab* %60, i64 %62
  %64 = getelementptr inbounds %struct.cab, %struct.cab* %63, i32 0, i32 5
  %65 = call i32 @archive_string_free(i32* %64)
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %50

69:                                               ; preds = %50
  %70 = load %struct.cfheader*, %struct.cfheader** %4, align 8
  %71 = getelementptr inbounds %struct.cfheader, %struct.cfheader* %70, i32 0, i32 2
  %72 = load %struct.cab*, %struct.cab** %71, align 8
  %73 = call i32 @free(%struct.cab* %72)
  br label %74

74:                                               ; preds = %69, %44
  %75 = load %struct.cab*, %struct.cab** %3, align 8
  %76 = getelementptr inbounds %struct.cab, %struct.cab* %75, i32 0, i32 2
  %77 = call i32 @lzx_decode_free(i32* %76)
  %78 = load %struct.cab*, %struct.cab** %3, align 8
  %79 = getelementptr inbounds %struct.cab, %struct.cab* %78, i32 0, i32 1
  %80 = call i32 @archive_wstring_free(i32* %79)
  %81 = load %struct.cab*, %struct.cab** %3, align 8
  %82 = getelementptr inbounds %struct.cab, %struct.cab* %81, i32 0, i32 0
  %83 = load %struct.cab*, %struct.cab** %82, align 8
  %84 = call i32 @free(%struct.cab* %83)
  %85 = load %struct.cab*, %struct.cab** %3, align 8
  %86 = call i32 @free(%struct.cab* %85)
  %87 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %88 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  %91 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %91
}

declare dso_local i32 @free(%struct.cab*) #1

declare dso_local i32 @archive_string_free(i32*) #1

declare dso_local i32 @lzx_decode_free(i32*) #1

declare dso_local i32 @archive_wstring_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
