; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_cli.c_cli_txt_list_add_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_cli.c_cli_txt_list_add_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dl_list = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MACSTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cli_txt_list_add_addr(%struct.dl_list* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dl_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [18 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.dl_list* %0, %struct.dl_list** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @ETH_ALEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @hwaddr_aton(i8* %14, i32* %13)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %26

18:                                               ; preds = %2
  %19 = getelementptr inbounds [18 x i8], [18 x i8]* %8, i64 0, i64 0
  %20 = load i32, i32* @MACSTR, align 4
  %21 = call i32 @MAC2STR(i32* %13)
  %22 = call i32 @os_snprintf(i8* %19, i32 18, i32 %20, i32 %21)
  %23 = load %struct.dl_list*, %struct.dl_list** %4, align 8
  %24 = getelementptr inbounds [18 x i8], [18 x i8]* %8, i64 0, i64 0
  %25 = call i32 @cli_txt_list_add(%struct.dl_list* %23, i8* %24)
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %26

26:                                               ; preds = %18, %17
  %27 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %27)
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local i32 @os_snprintf(i8*, i32, i32, i32) #2

declare dso_local i32 @MAC2STR(i32*) #2

declare dso_local i32 @cli_txt_list_add(%struct.dl_list*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
