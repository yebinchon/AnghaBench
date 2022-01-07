; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_dump_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_dump_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.global_parse_data = type { i32 (i32, %struct.wpa_config*, i64, i8*, i64, i32)*, i64, i32 }
%struct.wpa_config = type { i32 }

@NUM_GLOBAL_FIELDS = common dso_local global i64 0, align 8
@global_fields = common dso_local global %struct.global_parse_data* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_config_dump_values(%struct.wpa_config* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_config*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.global_parse_data*, align 8
  %11 = alloca i32, align 4
  store %struct.wpa_config* %0, %struct.wpa_config** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %54, %3
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @NUM_GLOBAL_FIELDS, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %12
  %17 = load %struct.global_parse_data*, %struct.global_parse_data** @global_fields, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds %struct.global_parse_data, %struct.global_parse_data* %17, i64 %18
  store %struct.global_parse_data* %19, %struct.global_parse_data** %10, align 8
  %20 = load %struct.global_parse_data*, %struct.global_parse_data** %10, align 8
  %21 = getelementptr inbounds %struct.global_parse_data, %struct.global_parse_data* %20, i32 0, i32 0
  %22 = load i32 (i32, %struct.wpa_config*, i64, i8*, i64, i32)*, i32 (i32, %struct.wpa_config*, i64, i8*, i64, i32)** %21, align 8
  %23 = icmp ne i32 (i32, %struct.wpa_config*, i64, i8*, i64, i32)* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %54

25:                                               ; preds = %16
  %26 = load %struct.global_parse_data*, %struct.global_parse_data** %10, align 8
  %27 = getelementptr inbounds %struct.global_parse_data, %struct.global_parse_data* %26, i32 0, i32 0
  %28 = load i32 (i32, %struct.wpa_config*, i64, i8*, i64, i32)*, i32 (i32, %struct.wpa_config*, i64, i8*, i64, i32)** %27, align 8
  %29 = load %struct.global_parse_data*, %struct.global_parse_data** %10, align 8
  %30 = getelementptr inbounds %struct.global_parse_data, %struct.global_parse_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.wpa_config*, %struct.wpa_config** %5, align 8
  %33 = load %struct.global_parse_data*, %struct.global_parse_data** %10, align 8
  %34 = getelementptr inbounds %struct.global_parse_data, %struct.global_parse_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 %28(i32 %31, %struct.wpa_config* %32, i64 %35, i8* %36, i64 %37, i32 1)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %59

42:                                               ; preds = %25
  %43 = load i32, i32* %11, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %49, %48
  store i64 %50, i64* %7, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %42, %24
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %9, align 8
  br label %12

57:                                               ; preds = %12
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %41
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
