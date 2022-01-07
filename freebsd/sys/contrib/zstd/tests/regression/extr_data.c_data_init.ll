; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_data.c_data_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_data.c_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@g_data_dir = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@g_data = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @data_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  store i32 %8, i32* %2, align 4
  br label %50

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @ensure_directory_exists(i8* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %50

16:                                               ; preds = %9
  %17 = load i8*, i8** %3, align 8
  %18 = call i32* @strdup(i8* %17)
  store i32* %18, i32** @g_data_dir, align 8
  %19 = load i32*, i32** @g_data_dir, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %2, align 4
  br label %50

23:                                               ; preds = %16
  %24 = load i32, i32* @g_data, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @data_create_paths(i32 %24, i8* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %50

31:                                               ; preds = %23
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* @data, align 4
  %34 = call i64 @stamp_check(i8* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %50

37:                                               ; preds = %31
  %38 = load i32, i32* @data, align 4
  %39 = call i32 @curl_download_data(i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %44

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* @data, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @stamp_write(i8* %45, i32 %46, i32 %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %36, %29, %21, %14, %7
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @ensure_directory_exists(i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @data_create_paths(i32, i8*) #1

declare dso_local i64 @stamp_check(i8*, i32) #1

declare dso_local i32 @curl_download_data(i32) #1

declare dso_local i32 @stamp_write(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
