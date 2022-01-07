; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_simple.c_bgscan_simple_get_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_simple.c_bgscan_simple_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgscan_simple_data = type { i8*, i8*, i8* }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"bgscan simple: Missing scan interval for high signal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bgscan_simple_data*, i8*)* @bgscan_simple_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgscan_simple_get_params(%struct.bgscan_simple_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bgscan_simple_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.bgscan_simple_data* %0, %struct.bgscan_simple_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i8* @atoi(i8* %7)
  %9 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %4, align 8
  %10 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @os_strchr(i8* %11, i8 signext 58)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @atoi(i8* %19)
  %21 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %4, align 8
  %22 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @os_strchr(i8* %23, i8 signext 58)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i32, i32* @MSG_ERROR, align 4
  %29 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %37

30:                                               ; preds = %16
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i8* @atoi(i8* %33)
  %35 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %4, align 8
  %36 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %30, %27, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i8* @atoi(i8*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
