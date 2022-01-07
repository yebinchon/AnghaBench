; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_json.c_json_parse_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_json.c_json_parse_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32*)* @json_parse_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_parse_number(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %8, align 8
  br label %13

13:                                               ; preds = %36, %3
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 45
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp slt i32 %25, 48
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sgt i32 %30, 57
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %22
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 -1
  store i8* %34, i8** %8, align 8
  br label %39

35:                                               ; preds = %27, %17
  br label %36

36:                                               ; preds = %35
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %8, align 8
  br label %13

39:                                               ; preds = %32, %13
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %45, i8** %8, align 8
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i8*, i8** %8, align 8
  %48 = load i8**, i8*** %5, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ult i8* %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %82

52:                                               ; preds = %46
  %53 = load i8*, i8** %8, align 8
  %54 = load i8**, i8*** %5, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = ptrtoint i8* %53 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, 1
  %62 = call i8* @os_malloc(i64 %61)
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %52
  store i32 -1, i32* %4, align 4
  br label %82

66:                                               ; preds = %52
  %67 = load i8*, i8** %10, align 8
  %68 = load i8**, i8*** %5, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @os_memcpy(i8* %67, i8* %69, i64 %70)
  %72 = load i8*, i8** %10, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @atoi(i8* %75)
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @os_free(i8* %78)
  %80 = load i8*, i8** %8, align 8
  %81 = load i8**, i8*** %5, align 8
  store i8* %80, i8** %81, align 8
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %66, %65, %51
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
