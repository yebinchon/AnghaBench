; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_freq_range_list_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_freq_range_list_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_freq_range_list = type { i32, %struct.wpa_freq_range* }
%struct.wpa_freq_range = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s%u-%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @freq_range_list_str(%struct.wpa_freq_range_list* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wpa_freq_range_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpa_freq_range*, align 8
  store %struct.wpa_freq_range_list* %0, %struct.wpa_freq_range_list** %3, align 8
  %11 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %3, align 8
  %12 = getelementptr inbounds %struct.wpa_freq_range_list, %struct.wpa_freq_range_list* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %110

16:                                               ; preds = %1
  %17 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %3, align 8
  %18 = getelementptr inbounds %struct.wpa_freq_range_list, %struct.wpa_freq_range_list* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %19, 30
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i8* @os_malloc(i64 %22)
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i8* null, i8** %2, align 8
  br label %110

27:                                               ; preds = %16
  %28 = load i8*, i8** %4, align 8
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %105, %27
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %3, align 8
  %35 = getelementptr inbounds %struct.wpa_freq_range_list, %struct.wpa_freq_range_list* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %108

38:                                               ; preds = %32
  %39 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %3, align 8
  %40 = getelementptr inbounds %struct.wpa_freq_range_list, %struct.wpa_freq_range_list* %39, i32 0, i32 1
  %41 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.wpa_freq_range, %struct.wpa_freq_range* %41, i64 %43
  store %struct.wpa_freq_range* %44, %struct.wpa_freq_range** %10, align 8
  %45 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %10, align 8
  %46 = getelementptr inbounds %struct.wpa_freq_range, %struct.wpa_freq_range* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %10, align 8
  %49 = getelementptr inbounds %struct.wpa_freq_range, %struct.wpa_freq_range* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %38
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %64 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %10, align 8
  %65 = getelementptr inbounds %struct.wpa_freq_range, %struct.wpa_freq_range* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, i32, i8*, i8*, i64, ...) @os_snprintf(i8* %53, i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %63, i64 %66)
  store i32 %67, i32* %9, align 4
  br label %87

68:                                               ; preds = %38
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %80 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %10, align 8
  %81 = getelementptr inbounds %struct.wpa_freq_range, %struct.wpa_freq_range* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %10, align 8
  %84 = getelementptr inbounds %struct.wpa_freq_range, %struct.wpa_freq_range* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, i32, i8*, i8*, i64, ...) @os_snprintf(i8* %69, i32 %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %79, i64 %82, i64 %85)
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %68, %52
  %88 = load i8*, i8** %6, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @os_snprintf_error(i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @os_free(i8* %98)
  store i8* null, i8** %2, align 8
  br label %110

100:                                              ; preds = %87
  %101 = load i32, i32* %9, align 4
  %102 = load i8*, i8** %5, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %5, align 8
  br label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %8, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %32

108:                                              ; preds = %32
  %109 = load i8*, i8** %4, align 8
  store i8* %109, i8** %2, align 8
  br label %110

110:                                              ; preds = %108, %97, %26, %15
  %111 = load i8*, i8** %2, align 8
  ret i8* %111
}

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*, i64, ...) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
