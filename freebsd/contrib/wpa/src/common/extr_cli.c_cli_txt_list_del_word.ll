; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_cli.c_cli_txt_list_del_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_cli.c_cli_txt_list_del_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dl_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cli_txt_list_del_word(%struct.dl_list* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dl_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.dl_list* %0, %struct.dl_list** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i8* @os_strchr(i8* %9, i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @os_strlen(i8* %16)
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8* %19, i8** %7, align 8
  br label %20

20:                                               ; preds = %14, %3
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  %28 = call i8* @dup_binstr(i8* %21, i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %38

32:                                               ; preds = %20
  %33 = load %struct.dl_list*, %struct.dl_list** %4, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @cli_txt_list_del(%struct.dl_list* %33, i8* %34)
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @os_free(i8* %36)
  br label %38

38:                                               ; preds = %32, %31
  ret void
}

declare dso_local i8* @os_strchr(i8*, i32) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i8* @dup_binstr(i8*, i32) #1

declare dso_local i32 @cli_txt_list_del(%struct.dl_list*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
