; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libefivar/extr_efivar-dp-xlate.c_build_dp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libefivar/extr_efivar-dp-xlate.c_build_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8**)* @build_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_dp(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @strdup(i8* %14)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  store i8* %16, i8** %9, align 8
  br label %17

17:                                               ; preds = %29, %3
  %18 = load i8*, i8** %9, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i8*, i8** %9, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 47
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i8*, i8** %9, align 8
  store i8 92, i8* %27, align 1
  br label %28

28:                                               ; preds = %26, %21
  br label %29

29:                                               ; preds = %28
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %9, align 8
  br label %17

32:                                               ; preds = %17
  %33 = load i8*, i8** %10, align 8
  %34 = call i8* @path_to_file_dp(i8* %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i8*, i8** %7, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %11, align 4
  br label %61

41:                                               ; preds = %32
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @asprintf(i8** %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %42, i8* %43)
  %45 = call i8* @malloc(i32 8192)
  store i8* %45, i8** %12, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i64 @efidp_parse_device_path(i8* %46, i8* %47, i32 8192)
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %13, align 8
  %50 = icmp ugt i64 %49, 8192
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* %11, align 4
  br label %61

53:                                               ; preds = %41
  %54 = load i64, i64* %13, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %11, align 4
  br label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %12, align 8
  %60 = load i8**, i8*** %6, align 8
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %58, %56, %51, %39
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @free(i8* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i32, i32* %11, align 4
  ret i32 %72
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @path_to_file_dp(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @efidp_parse_device_path(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
