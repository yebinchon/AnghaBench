; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_freq_range_list_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_freq_range_list_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_freq_range_list = type { i32, %struct.wpa_freq_range* }
%struct.wpa_freq_range = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freq_range_list_parse(%struct.wpa_freq_range_list* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_freq_range_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpa_freq_range*, align 8
  %7 = alloca %struct.wpa_freq_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.wpa_freq_range_list* %0, %struct.wpa_freq_range_list** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpa_freq_range* null, %struct.wpa_freq_range** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %9, align 8
  br label %13

13:                                               ; preds = %85, %2
  %14 = load i8*, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %16, %13
  %23 = phi i1 [ false, %13 ], [ %21, %16 ]
  br i1 %23, label %24, label %88

24:                                               ; preds = %22
  %25 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add i32 %26, 1
  %28 = call %struct.wpa_freq_range* @os_realloc_array(%struct.wpa_freq_range* %25, i32 %27, i32 16)
  store %struct.wpa_freq_range* %28, %struct.wpa_freq_range** %7, align 8
  %29 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %7, align 8
  %30 = icmp eq %struct.wpa_freq_range* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %6, align 8
  %33 = call i32 @os_free(%struct.wpa_freq_range* %32)
  store i32 -1, i32* %3, align 4
  br label %99

34:                                               ; preds = %24
  %35 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %7, align 8
  store %struct.wpa_freq_range* %35, %struct.wpa_freq_range** %6, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i8* @atoi(i8* %36)
  %38 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.wpa_freq_range, %struct.wpa_freq_range* %38, i64 %40
  %42 = getelementptr inbounds %struct.wpa_freq_range, %struct.wpa_freq_range* %41, i32 0, i32 0
  store i8* %37, i8** %42, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i8* @os_strchr(i8* %43, i8 signext 45)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i8* @os_strchr(i8* %45, i8 signext 44)
  store i8* %46, i8** %11, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %34
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i8*, i8** %10, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52, %49
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %10, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i8* @atoi(i8* %59)
  %61 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.wpa_freq_range, %struct.wpa_freq_range* %61, i64 %63
  %65 = getelementptr inbounds %struct.wpa_freq_range, %struct.wpa_freq_range* %64, i32 0, i32 1
  store i8* %60, i8** %65, align 8
  br label %78

66:                                               ; preds = %52, %34
  %67 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.wpa_freq_range, %struct.wpa_freq_range* %67, i64 %69
  %71 = getelementptr inbounds %struct.wpa_freq_range, %struct.wpa_freq_range* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.wpa_freq_range, %struct.wpa_freq_range* %73, i64 %75
  %77 = getelementptr inbounds %struct.wpa_freq_range, %struct.wpa_freq_range* %76, i32 0, i32 1
  store i8* %72, i8** %77, align 8
  br label %78

78:                                               ; preds = %66, %56
  %79 = load i8*, i8** %11, align 8
  store i8* %79, i8** %9, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %9, align 8
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* %8, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %13

88:                                               ; preds = %22
  %89 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %4, align 8
  %90 = getelementptr inbounds %struct.wpa_freq_range_list, %struct.wpa_freq_range_list* %89, i32 0, i32 1
  %91 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %90, align 8
  %92 = call i32 @os_free(%struct.wpa_freq_range* %91)
  %93 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %6, align 8
  %94 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %4, align 8
  %95 = getelementptr inbounds %struct.wpa_freq_range_list, %struct.wpa_freq_range_list* %94, i32 0, i32 1
  store %struct.wpa_freq_range* %93, %struct.wpa_freq_range** %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %4, align 8
  %98 = getelementptr inbounds %struct.wpa_freq_range_list, %struct.wpa_freq_range_list* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %88, %31
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.wpa_freq_range* @os_realloc_array(%struct.wpa_freq_range*, i32, i32) #1

declare dso_local i32 @os_free(%struct.wpa_freq_range*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
