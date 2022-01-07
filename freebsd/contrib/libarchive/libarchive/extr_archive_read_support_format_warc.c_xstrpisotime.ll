; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c_xstrpisotime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c_xstrpisotime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @xstrpisotime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xstrpisotime(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.tm, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 -1, i32* %6, align 4
  %7 = call i32 @memset(%struct.tm* %5, i32 0, i32 48)
  br label %8

8:                                                ; preds = %20, %2
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 9
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ true, %8 ], [ %17, %13 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %3, align 8
  br label %8

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* @strtoi_lim(i8* %24, i8** %3, i32 1583, i32 4095)
  %26 = ptrtoint i8* %25 to i32
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = icmp slt i32 %26, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 45
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %23
  br label %104

36:                                               ; preds = %29
  %37 = load i8*, i8** %3, align 8
  %38 = call i8* @strtoi_lim(i8* %37, i8** %3, i32 1, i32 12)
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = icmp ult i8* %38, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %3, align 8
  %44 = load i8, i8* %42, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %36
  br label %104

48:                                               ; preds = %41
  %49 = load i8*, i8** %3, align 8
  %50 = call i8* @strtoi_lim(i8* %49, i8** %3, i32 1, i32 31)
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  store i8* %50, i8** %51, align 8
  %52 = icmp ult i8* %50, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %3, align 8
  %56 = load i8, i8* %54, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 84
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %48
  br label %104

60:                                               ; preds = %53
  %61 = load i8*, i8** %3, align 8
  %62 = call i8* @strtoi_lim(i8* %61, i8** %3, i32 0, i32 23)
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  store i8* %62, i8** %63, align 8
  %64 = icmp ult i8* %62, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %3, align 8
  %68 = load i8, i8* %66, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 58
  br i1 %70, label %71, label %72

71:                                               ; preds = %65, %60
  br label %104

72:                                               ; preds = %65
  %73 = load i8*, i8** %3, align 8
  %74 = call i8* @strtoi_lim(i8* %73, i8** %3, i32 0, i32 59)
  %75 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  store i8* %74, i8** %75, align 8
  %76 = icmp ult i8* %74, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %3, align 8
  %80 = load i8, i8* %78, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 58
  br i1 %82, label %83, label %84

83:                                               ; preds = %77, %72
  br label %104

84:                                               ; preds = %77
  %85 = load i8*, i8** %3, align 8
  %86 = call i8* @strtoi_lim(i8* %85, i8** %3, i32 0, i32 60)
  %87 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  store i8* %86, i8** %87, align 8
  %88 = icmp ult i8* %86, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = load i8*, i8** %3, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %3, align 8
  %92 = load i8, i8* %90, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 90
  br i1 %94, label %95, label %96

95:                                               ; preds = %89, %84
  br label %104

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 1900
  store i32 %99, i32* %97, align 8
  %100 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 -1
  store i8* %102, i8** %100, align 8
  %103 = call i32 @time_from_tm(%struct.tm* %5)
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %96, %95, %83, %71, %59, %47, %35
  %105 = load i8**, i8*** %4, align 8
  %106 = icmp ne i8** %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i8*, i8** %3, align 8
  %109 = call i8* @deconst(i8* %108)
  %110 = load i8**, i8*** %4, align 8
  store i8* %109, i8** %110, align 8
  br label %111

111:                                              ; preds = %107, %104
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i8* @strtoi_lim(i8*, i8**, i32, i32) #1

declare dso_local i32 @time_from_tm(%struct.tm*) #1

declare dso_local i8* @deconst(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
