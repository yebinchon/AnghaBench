; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_client_skip_proxy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_client_skip_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32*, i32, i32)*, i32 (i32*, i32, i32, i32)* }

@.str = private unnamed_addr constant [25 x i8] c"Negative skip requested.\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter*, i32)* @client_skip_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_skip_proxy(%struct.archive_read_filter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.archive_read_filter* %0, %struct.archive_read_filter** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @__archive_errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %117

20:                                               ; preds = %16
  %21 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %22 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %25, align 8
  %27 = icmp ne i32 (i32*, i32, i32)* %26, null
  br i1 %27, label %28, label %73

28:                                               ; preds = %20
  store i32 1073741824, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %69, %28
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %29
  %37 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %38 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %41, align 8
  %43 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %44 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %48 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 %42(i32* %46, i32 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %36
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %36
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %117

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %68, i32* %3, align 4
  br label %117

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %5, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %29

73:                                               ; preds = %20
  %74 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %75 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %78, align 8
  %80 = icmp ne i32 (i32*, i32, i32, i32)* %79, null
  br i1 %80, label %81, label %115

81:                                               ; preds = %73
  %82 = load i32, i32* %5, align 4
  %83 = icmp sgt i32 %82, 65536
  br i1 %83, label %84, label %115

84:                                               ; preds = %81
  %85 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %86 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %10, align 4
  %88 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %89 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %92, align 8
  %94 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %95 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %99 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @SEEK_CUR, align 4
  %103 = call i32 %93(i32* %97, i32 %100, i32 %101, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %105, %106
  %108 = icmp ne i32 %104, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %84
  %110 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %110, i32* %3, align 4
  br label %117

111:                                              ; preds = %84
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %10, align 4
  %114 = sub nsw i32 %112, %113
  store i32 %114, i32* %3, align 4
  br label %117

115:                                              ; preds = %81, %73
  br label %116

116:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %111, %109, %67, %61, %19
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @__archive_errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
