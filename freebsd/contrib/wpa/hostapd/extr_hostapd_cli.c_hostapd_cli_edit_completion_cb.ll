; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_edit_completion_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_edit_completion_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i8*, i32)* @hostapd_cli_edit_completion_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @hostapd_cli_edit_completion_cb(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @os_strchr(i8* %11, i8 signext 32)
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15, %3
  %23 = call i8** (...) @list_cmd_list()
  store i8** %23, i8*** %4, align 8
  br label %50

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i8* @os_malloc(i32 %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i8** null, i8*** %4, align 8
  br label %50

31:                                               ; preds = %24
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @os_memcpy(i8* %32, i8* %33, i32 %34)
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = getelementptr inbounds i8, i8* %36, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i8** @hostapd_cli_cmd_completion(i8* %43, i8* %44, i32 %45)
  store i8** %46, i8*** %8, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @os_free(i8* %47)
  %49 = load i8**, i8*** %8, align 8
  store i8** %49, i8*** %4, align 8
  br label %50

50:                                               ; preds = %31, %30, %22
  %51 = load i8**, i8*** %4, align 8
  ret i8** %51
}

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i8** @list_cmd_list(...) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #1

declare dso_local i8** @hostapd_cli_cmd_completion(i8*, i8*, i32) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
