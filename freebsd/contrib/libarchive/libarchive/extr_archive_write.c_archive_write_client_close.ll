; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c_archive_write_client_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c_archive_write_client_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i32*, i64, i64 }
%struct.archive_write = type { i32, i32, i32 (i32*, i32*, i64, i32)*, i64, i32*, i32, i32 (i32*, i32*)* }
%struct.archive_none = type { i64, i64, i32, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*)* @archive_write_client_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_client_close(%struct.archive_write_filter* %0) #0 {
  %2 = alloca %struct.archive_write_filter*, align 8
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.archive_none*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %2, align 8
  %9 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %10 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.archive_write*
  store %struct.archive_write* %12, %struct.archive_write** %3, align 8
  %13 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %14 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.archive_none*
  store %struct.archive_none* %16, %struct.archive_none** %4, align 8
  %17 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.archive_none*, %struct.archive_none** %4, align 8
  %19 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.archive_none*, %struct.archive_none** %4, align 8
  %22 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %101

25:                                               ; preds = %1
  %26 = load %struct.archive_none*, %struct.archive_none** %4, align 8
  %27 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.archive_none*, %struct.archive_none** %4, align 8
  %30 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %5, align 4
  %33 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %34 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %39 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  br label %56

41:                                               ; preds = %25
  %42 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %43 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %47 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %45, %48
  %50 = sub nsw i32 %49, 1
  %51 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %52 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sdiv i32 %50, %53
  %55 = mul nsw i32 %44, %54
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %41, %37
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %59 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %64 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.archive_none*, %struct.archive_none** %4, align 8
  %72 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 %74, %75
  %77 = call i32 @memset(i64 %73, i32 0, i32 %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %70, %66
  %80 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %81 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %80, i32 0, i32 2
  %82 = load i32 (i32*, i32*, i64, i32)*, i32 (i32*, i32*, i64, i32)** %81, align 8
  %83 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %84 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %83, i32 0, i32 5
  %85 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %86 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.archive_none*, %struct.archive_none** %4, align 8
  %89 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 %82(i32* %84, i32* %87, i64 %90, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp sle i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %79
  %96 = load i32, i32* @ARCHIVE_FATAL, align 4
  br label %99

97:                                               ; preds = %79
  %98 = load i32, i32* @ARCHIVE_OK, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %99, %1
  %102 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %103 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %102, i32 0, i32 6
  %104 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %103, align 8
  %105 = icmp ne i32 (i32*, i32*)* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %108 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %107, i32 0, i32 6
  %109 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %108, align 8
  %110 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %111 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %110, i32 0, i32 5
  %112 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %113 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 %109(i32* %111, i32* %114)
  br label %116

116:                                              ; preds = %106, %101
  %117 = load %struct.archive_none*, %struct.archive_none** %4, align 8
  %118 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to %struct.archive_none*
  %121 = call i32 @free(%struct.archive_none* %120)
  %122 = load %struct.archive_none*, %struct.archive_none** %4, align 8
  %123 = call i32 @free(%struct.archive_none* %122)
  %124 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %125 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %124, i32 0, i32 0
  store i32* null, i32** %125, align 8
  %126 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %127 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %126, i32 0, i32 4
  store i32* null, i32** %127, align 8
  %128 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %129 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %149

133:                                              ; preds = %116
  %134 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %135 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %138 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @strlen(i64 %139)
  %141 = call i32 @memset(i64 %136, i32 0, i32 %140)
  %142 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %143 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to %struct.archive_none*
  %146 = call i32 @free(%struct.archive_none* %145)
  %147 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %148 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %147, i32 0, i32 3
  store i64 0, i64* %148, align 8
  br label %149

149:                                              ; preds = %133, %116
  %150 = load i32, i32* %8, align 4
  ret i32 %150
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @free(%struct.archive_none*) #1

declare dso_local i32 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
