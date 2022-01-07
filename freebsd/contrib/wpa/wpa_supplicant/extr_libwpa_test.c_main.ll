; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_libwpa_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_libwpa_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.wpa_ctrl*, align 8
  %7 = alloca [10 x i8], align 1
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call %struct.wpa_ctrl* @wpa_ctrl_open(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.wpa_ctrl* %9, %struct.wpa_ctrl** %6, align 8
  %10 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %6, align 8
  %11 = icmp ne %struct.wpa_ctrl* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %6, align 8
  %15 = call i64 @wpa_ctrl_attach(%struct.wpa_ctrl* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %6, align 8
  %19 = call i32 @wpa_ctrl_detach(%struct.wpa_ctrl* %18)
  br label %20

20:                                               ; preds = %17, %13
  %21 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %6, align 8
  %22 = call i64 @wpa_ctrl_pending(%struct.wpa_ctrl* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  store i64 10, i64* %8, align 8
  %25 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %6, align 8
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %27 = call i32 @wpa_ctrl_recv(%struct.wpa_ctrl* %25, i8* %26, i64* %8)
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %6, align 8
  %30 = call i32 @wpa_ctrl_close(%struct.wpa_ctrl* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.wpa_ctrl* @wpa_ctrl_open(i8*) #1

declare dso_local i64 @wpa_ctrl_attach(%struct.wpa_ctrl*) #1

declare dso_local i32 @wpa_ctrl_detach(%struct.wpa_ctrl*) #1

declare dso_local i64 @wpa_ctrl_pending(%struct.wpa_ctrl*) #1

declare dso_local i32 @wpa_ctrl_recv(%struct.wpa_ctrl*, i8*, i64*) #1

declare dso_local i32 @wpa_ctrl_close(%struct.wpa_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
