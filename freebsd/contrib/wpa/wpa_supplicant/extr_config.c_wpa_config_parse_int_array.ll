; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_parse_int_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_parse_int_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @wpa_config_parse_int_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wpa_config_parse_int_array(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 10, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = add i64 %10, 1
  %12 = call i32* @os_calloc(i64 %11, i32 4)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %83

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %7, align 8
  br label %18

18:                                               ; preds = %75, %16
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %81

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %27, %21
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %7, align 8
  br label %22

30:                                               ; preds = %22
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = mul i64 %36, 2
  %38 = add i64 %37, 1
  %39 = call i32* @os_realloc_array(i32* %35, i64 %38, i32 4)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @os_free(i32* %43)
  store i32* null, i32** %2, align 8
  br label %83

45:                                               ; preds = %34
  %46 = load i64, i64* %6, align 8
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %56, %45
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %6, align 8
  %50 = mul i64 %49, 2
  %51 = icmp ule i64 %48, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32*, i32** %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %9, align 8
  br label %47

59:                                               ; preds = %47
  %60 = load i32*, i32** %8, align 8
  store i32* %60, i32** %4, align 8
  %61 = load i64, i64* %6, align 8
  %62 = mul i64 %61, 2
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %59, %30
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @atoi(i8* %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %65, i32* %68, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %81

75:                                               ; preds = %63
  %76 = load i64, i64* %5, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %5, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = call i8* @os_strchr(i8* %79, i8 signext 32)
  store i8* %80, i8** %7, align 8
  br label %18

81:                                               ; preds = %74, %18
  %82 = load i32*, i32** %4, align 8
  store i32* %82, i32** %2, align 8
  br label %83

83:                                               ; preds = %81, %42, %15
  %84 = load i32*, i32** %2, align 8
  ret i32* %84
}

declare dso_local i32* @os_calloc(i64, i32) #1

declare dso_local i32* @os_realloc_array(i32*, i64, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
