; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_archive_read_format_cab_read_data_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_archive_read_format_cab_read_data_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.cab = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i64, i64, i32, i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@COMPTYPE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @archive_read_format_cab_read_data_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_cab_read_data_skip(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.cab*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %7 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %8 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.cab*
  store %struct.cab* %12, %struct.cab** %4, align 8
  %13 = load %struct.cab*, %struct.cab** %4, align 8
  %14 = getelementptr inbounds %struct.cab, %struct.cab* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %18, i32* %2, align 4
  br label %115

19:                                               ; preds = %1
  %20 = load %struct.cab*, %struct.cab** %4, align 8
  %21 = getelementptr inbounds %struct.cab, %struct.cab* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %19
  %25 = load %struct.cab*, %struct.cab** %4, align 8
  %26 = getelementptr inbounds %struct.cab, %struct.cab* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.cab*, %struct.cab** %4, align 8
  %29 = getelementptr inbounds %struct.cab, %struct.cab* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 8
  %34 = load %struct.cab*, %struct.cab** %4, align 8
  %35 = getelementptr inbounds %struct.cab, %struct.cab* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.cab*, %struct.cab** %4, align 8
  %37 = getelementptr inbounds %struct.cab, %struct.cab* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load %struct.cab*, %struct.cab** %4, align 8
  %39 = getelementptr inbounds %struct.cab, %struct.cab* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %40, i32* %2, align 4
  br label %115

41:                                               ; preds = %19
  %42 = load %struct.cab*, %struct.cab** %4, align 8
  %43 = getelementptr inbounds %struct.cab, %struct.cab* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %48 = load %struct.cab*, %struct.cab** %4, align 8
  %49 = getelementptr inbounds %struct.cab, %struct.cab* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @cab_consume_cfdata(%struct.archive_read* %47, i64 %50)
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %6, align 4
  %53 = load %struct.cab*, %struct.cab** %4, align 8
  %54 = getelementptr inbounds %struct.cab, %struct.cab* %53, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %115

59:                                               ; preds = %46
  br label %74

60:                                               ; preds = %41
  %61 = load %struct.cab*, %struct.cab** %4, align 8
  %62 = getelementptr inbounds %struct.cab, %struct.cab* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = icmp eq %struct.TYPE_6__* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %67 = call i32 @cab_next_cfdata(%struct.archive_read* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %115

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %60
  br label %74

74:                                               ; preds = %73, %59
  %75 = load %struct.cab*, %struct.cab** %4, align 8
  %76 = getelementptr inbounds %struct.cab, %struct.cab* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %80, i32* %2, align 4
  br label %115

81:                                               ; preds = %74
  %82 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %83 = load %struct.cab*, %struct.cab** %4, align 8
  %84 = getelementptr inbounds %struct.cab, %struct.cab* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @cab_consume_cfdata(%struct.archive_read* %82, i64 %85)
  store i64 %86, i64* %5, align 8
  %87 = load i64, i64* %5, align 8
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %90, i32* %2, align 4
  br label %115

91:                                               ; preds = %81
  %92 = load %struct.cab*, %struct.cab** %4, align 8
  %93 = getelementptr inbounds %struct.cab, %struct.cab* %92, i32 0, i32 3
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @COMPTYPE_NONE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %91
  %100 = load %struct.cab*, %struct.cab** %4, align 8
  %101 = getelementptr inbounds %struct.cab, %struct.cab* %100, i32 0, i32 2
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = icmp ne %struct.TYPE_6__* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.cab*, %struct.cab** %4, align 8
  %106 = getelementptr inbounds %struct.cab, %struct.cab* %105, i32 0, i32 2
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %104, %99, %91
  %110 = load %struct.cab*, %struct.cab** %4, align 8
  %111 = getelementptr inbounds %struct.cab, %struct.cab* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load %struct.cab*, %struct.cab** %4, align 8
  %113 = getelementptr inbounds %struct.cab, %struct.cab* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  %114 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %109, %89, %79, %70, %57, %24, %17
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i64 @cab_consume_cfdata(%struct.archive_read*, i64) #1

declare dso_local i32 @cab_next_cfdata(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
