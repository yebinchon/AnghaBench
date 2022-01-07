; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_cli.c_cli_txt_list_del_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_cli.c_cli_txt_list_del_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dl_list = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MACSTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cli_txt_list_del_addr(%struct.dl_list* %0, i8* %1) #0 {
  %3 = alloca %struct.dl_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [18 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.dl_list* %0, %struct.dl_list** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @ETH_ALEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @hwaddr_aton(i8* %13, i32* %12)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %25

17:                                               ; preds = %2
  %18 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 0
  %19 = load i32, i32* @MACSTR, align 4
  %20 = call i32 @MAC2STR(i32* %12)
  %21 = call i32 @os_snprintf(i8* %18, i32 18, i32 %19, i32 %20)
  %22 = load %struct.dl_list*, %struct.dl_list** %3, align 8
  %23 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 0
  %24 = call i32 @cli_txt_list_del(%struct.dl_list* %22, i8* %23)
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %17, %16
  %26 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %26)
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %29 [
    i32 0, label %28
    i32 1, label %28
  ]

28:                                               ; preds = %25, %25
  ret void

29:                                               ; preds = %25
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local i32 @os_snprintf(i8*, i32, i32, i32) #2

declare dso_local i32 @MAC2STR(i32*) #2

declare dso_local i32 @cli_txt_list_del(%struct.dl_list*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
