; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_client_switch_proxy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_client_switch_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 (%struct.archive*, i8*, i8*)*, i32 (%struct.archive*, i8*)*, i32 (%struct.archive*, i8*)*, %struct.TYPE_4__* }
%struct.archive = type { i32 }
%struct.TYPE_4__ = type { i8* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter*, i32)* @client_switch_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_switch_proxy(%struct.archive_read_filter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.archive_read_filter* %0, %struct.archive_read_filter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %10, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %11 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %12 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %20, i32* %3, align 4
  br label %130

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %24 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %22, i32* %27, align 8
  %28 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %29 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %35 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %8, align 8
  %44 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %45 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32 (%struct.archive*, i8*, i8*)*, i32 (%struct.archive*, i8*, i8*)** %48, align 8
  %50 = icmp ne i32 (%struct.archive*, i8*, i8*)* %49, null
  br i1 %50, label %51, label %70

51:                                               ; preds = %21
  %52 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %53 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32 (%struct.archive*, i8*, i8*)*, i32 (%struct.archive*, i8*, i8*)** %56, align 8
  %58 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %59 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = bitcast %struct.TYPE_6__* %60 to %struct.archive*
  %62 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %63 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 %57(%struct.archive* %61, i8* %64, i8* %65)
  store i32 %66, i32* %7, align 4
  store i32 %66, i32* %6, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %69 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %120

70:                                               ; preds = %21
  %71 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %72 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32 (%struct.archive*, i8*)*, i32 (%struct.archive*, i8*)** %75, align 8
  %77 = icmp ne i32 (%struct.archive*, i8*)* %76, null
  br i1 %77, label %78, label %93

78:                                               ; preds = %70
  %79 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %80 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32 (%struct.archive*, i8*)*, i32 (%struct.archive*, i8*)** %83, align 8
  %85 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %86 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = bitcast %struct.TYPE_6__* %87 to %struct.archive*
  %89 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %90 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 %84(%struct.archive* %88, i8* %91)
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %78, %70
  %94 = load i8*, i8** %8, align 8
  %95 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %96 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  %97 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %98 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = load i32 (%struct.archive*, i8*)*, i32 (%struct.archive*, i8*)** %101, align 8
  %103 = icmp ne i32 (%struct.archive*, i8*)* %102, null
  br i1 %103, label %104, label %119

104:                                              ; preds = %93
  %105 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %106 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %105, i32 0, i32 1
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load i32 (%struct.archive*, i8*)*, i32 (%struct.archive*, i8*)** %109, align 8
  %111 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %112 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = bitcast %struct.TYPE_6__* %113 to %struct.archive*
  %115 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %116 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 %110(%struct.archive* %114, i8* %117)
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %104, %93
  br label %120

120:                                              ; preds = %119, %51
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* %6, align 4
  br label %128

126:                                              ; preds = %120
  %127 = load i32, i32* %7, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %19
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
