; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_wpa_config_process_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_wpa_config_process_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_config = type { i32 }
%struct.wpa_config_blob = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Line %d: no blob name terminator\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Line %d: failed to read blob %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_config*, i32*, i32*, i8*)* @wpa_config_process_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_config_process_blob(%struct.wpa_config* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_config*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.wpa_config_blob*, align 8
  store %struct.wpa_config* %0, %struct.wpa_config** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i8* @os_strchr(i8* %12, i8 signext 61)
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32, i32* @MSG_ERROR, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 -1, i32* %5, align 4
  br label %39

21:                                               ; preds = %4
  %22 = load i8*, i8** %10, align 8
  store i8 0, i8* %22, align 1
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call %struct.wpa_config_blob* @wpa_config_read_blob(i32* %23, i32* %24, i8* %25)
  store %struct.wpa_config_blob* %26, %struct.wpa_config_blob** %11, align 8
  %27 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %11, align 8
  %28 = icmp eq %struct.wpa_config_blob* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load i32, i32* @MSG_ERROR, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %32, i8* %33)
  store i32 -1, i32* %5, align 4
  br label %39

35:                                               ; preds = %21
  %36 = load %struct.wpa_config*, %struct.wpa_config** %6, align 8
  %37 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %11, align 8
  %38 = call i32 @wpa_config_set_blob(%struct.wpa_config* %36, %struct.wpa_config_blob* %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %29, %16
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local %struct.wpa_config_blob* @wpa_config_read_blob(i32*, i32*, i8*) #1

declare dso_local i32 @wpa_config_set_blob(%struct.wpa_config*, %struct.wpa_config_blob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
