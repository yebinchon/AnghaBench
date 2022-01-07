; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_get_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_get_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_config = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.wpa_config*, i64, i8*, i64, i32)* @wpa_config_get_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_config_get_str(i8* %0, %struct.wpa_config* %1, i64 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wpa_config*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.wpa_config* %1, %struct.wpa_config** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.wpa_config*, %struct.wpa_config** %9, align 8
  %17 = bitcast %struct.wpa_config* %16 to i32*
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = bitcast i32* %19 to i8**
  store i8** %20, i8*** %14, align 8
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %6
  %24 = load i8*, i8** %11, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8**, i8*** %14, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i8**, i8*** %14, align 8
  %32 = load i8*, i8** %31, align 8
  br label %34

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i8* [ %32, %30 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %33 ]
  %36 = call i32 (i8*, i64, i8*, i8*, ...) @os_snprintf(i8* %24, i64 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %35)
  store i32 %36, i32* %15, align 4
  br label %49

37:                                               ; preds = %6
  %38 = load i8**, i8*** %14, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 -1, i32* %7, align 4
  br label %57

42:                                               ; preds = %37
  %43 = load i8*, i8** %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i8**, i8*** %14, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, i64, i8*, i8*, ...) @os_snprintf(i8* %43, i64 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  store i32 %47, i32* %15, align 4
  br label %48

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i64, i64* %12, align 8
  %51 = load i32, i32* %15, align 4
  %52 = call i64 @os_snprintf_error(i64 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 -1, i32* %15, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %41
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i64 @os_snprintf_error(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
