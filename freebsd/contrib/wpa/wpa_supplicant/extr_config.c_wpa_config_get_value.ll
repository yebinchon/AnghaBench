; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_get_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.global_parse_data = type { i32 (i8*, %struct.wpa_config*, i64, i8*, i64, i32)*, i64, i32 }
%struct.wpa_config = type { i32 }

@NUM_GLOBAL_FIELDS = common dso_local global i64 0, align 8
@global_fields = common dso_local global %struct.global_parse_data* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_config_get_value(i8* %0, %struct.wpa_config* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpa_config*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.global_parse_data*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.wpa_config* %1, %struct.wpa_config** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %45, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* @NUM_GLOBAL_FIELDS, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = load %struct.global_parse_data*, %struct.global_parse_data** @global_fields, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds %struct.global_parse_data, %struct.global_parse_data* %17, i64 %18
  store %struct.global_parse_data* %19, %struct.global_parse_data** %11, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.global_parse_data*, %struct.global_parse_data** %11, align 8
  %22 = getelementptr inbounds %struct.global_parse_data, %struct.global_parse_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @os_strcmp(i8* %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %45

27:                                               ; preds = %16
  %28 = load %struct.global_parse_data*, %struct.global_parse_data** %11, align 8
  %29 = getelementptr inbounds %struct.global_parse_data, %struct.global_parse_data* %28, i32 0, i32 0
  %30 = load i32 (i8*, %struct.wpa_config*, i64, i8*, i64, i32)*, i32 (i8*, %struct.wpa_config*, i64, i8*, i64, i32)** %29, align 8
  %31 = icmp ne i32 (i8*, %struct.wpa_config*, i64, i8*, i64, i32)* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %48

33:                                               ; preds = %27
  %34 = load %struct.global_parse_data*, %struct.global_parse_data** %11, align 8
  %35 = getelementptr inbounds %struct.global_parse_data, %struct.global_parse_data* %34, i32 0, i32 0
  %36 = load i32 (i8*, %struct.wpa_config*, i64, i8*, i64, i32)*, i32 (i8*, %struct.wpa_config*, i64, i8*, i64, i32)** %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.wpa_config*, %struct.wpa_config** %7, align 8
  %39 = load %struct.global_parse_data*, %struct.global_parse_data** %11, align 8
  %40 = getelementptr inbounds %struct.global_parse_data, %struct.global_parse_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 %36(i8* %37, %struct.wpa_config* %38, i64 %41, i8* %42, i64 %43, i32 0)
  store i32 %44, i32* %5, align 4
  br label %49

45:                                               ; preds = %26
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %10, align 8
  br label %12

48:                                               ; preds = %32, %12
  store i32 -1, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @os_strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
