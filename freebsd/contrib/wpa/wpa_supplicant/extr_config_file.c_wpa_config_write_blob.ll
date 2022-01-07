; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_wpa_config_write_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_wpa_config_write_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_config_blob = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"\0Ablob-base64-%s={\0A%s}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.wpa_config_blob*)* @wpa_config_write_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_config_write_blob(i32* %0, %struct.wpa_config_blob* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_config_blob*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.wpa_config_blob* %1, %struct.wpa_config_blob** %5, align 8
  %7 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %5, align 8
  %8 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %5, align 8
  %11 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @base64_encode(i32 %9, i32 %12, i32* null)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %26

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %5, align 8
  %20 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @fprintf(i32* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @os_free(i8* %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %17, %16
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i8* @base64_encode(i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
