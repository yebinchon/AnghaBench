; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_scan_id_list_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_scan_id_list_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }

@MAX_SCAN_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*, i32*, i32*)* @scan_id_list_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_id_list_parse(%struct.wpa_supplicant* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %7, align 8
  store i8* %11, i8** %10, align 8
  br label %12

12:                                               ; preds = %48, %4
  %13 = load i8*, i8** %10, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %49

15:                                               ; preds = %12
  %16 = load i8*, i8** %10, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 32
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %10, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %15
  br label %49

26:                                               ; preds = %20
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MAX_SCAN_ID, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %50

32:                                               ; preds = %26
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @atoi(i8* %33)
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = call i8* @os_strchr(i8* %41, i8 signext 44)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %10, align 8
  br label %48

48:                                               ; preds = %45, %32
  br label %12

49:                                               ; preds = %25, %12
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %31
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
