; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_get_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_param(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @os_strstr(i8* %10, i8* %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %50

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @os_strlen(i8* %17)
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 %18
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @os_strchr(i8* %21, i8 signext 32)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  store i64 %30, i64* %9, align 8
  br label %34

31:                                               ; preds = %16
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @os_strlen(i8* %32)
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, 1
  %37 = call i8* @os_malloc(i64 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i8* null, i8** %3, align 8
  br label %50

41:                                               ; preds = %34
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @os_memcpy(i8* %42, i8* %43, i64 %44)
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %8, align 8
  store i8* %49, i8** %3, align 8
  br label %50

50:                                               ; preds = %41, %40, %15
  %51 = load i8*, i8** %3, align 8
  ret i8* %51
}

declare dso_local i8* @os_strstr(i8*, i8*) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
