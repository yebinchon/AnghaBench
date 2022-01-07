; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os_internal.c_os_rel2abs_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os_internal.c_os_rel2abs_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @os_rel2abs_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i64 128, i64* %7, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 47
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @os_strdup(i8* %17)
  store i8* %18, i8** %2, align 8
  br label %81

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %43, %19
  %21 = load i64, i64* %7, align 8
  %22 = call i8* @os_malloc(i64 %21)
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i8* null, i8** %2, align 8
  br label %81

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i8* @getcwd(i8* %27, i64 %28)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @os_free(i8* %33)
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @ERANGE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i8* null, i8** %2, align 8
  br label %81

39:                                               ; preds = %32
  %40 = load i64, i64* %7, align 8
  %41 = mul i64 %40, 2
  store i64 %41, i64* %7, align 8
  br label %43

42:                                               ; preds = %26
  br label %44

43:                                               ; preds = %39
  br label %20

44:                                               ; preds = %42
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @os_strlen(i8* %45)
  store i64 %46, i64* %8, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = call i64 @os_strlen(i8* %47)
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, 1
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %50, %51
  %53 = add i64 %52, 1
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i8* @os_malloc(i64 %54)
  store i8* %55, i8** %6, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %77

58:                                               ; preds = %44
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @os_memcpy(i8* %59, i8* %60, i64 %61)
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8 47, i8* %65, align 1
  %66 = load i8*, i8** %6, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8*, i8** %3, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @os_memcpy(i8* %69, i8* %70, i64 %71)
  %73 = load i8*, i8** %6, align 8
  %74 = load i64, i64* %10, align 8
  %75 = sub i64 %74, 1
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 0, i8* %76, align 1
  br label %77

77:                                               ; preds = %58, %44
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @os_free(i8* %78)
  %80 = load i8*, i8** %6, align 8
  store i8* %80, i8** %2, align 8
  br label %81

81:                                               ; preds = %77, %38, %25, %16
  %82 = load i8*, i8** %2, align 8
  ret i8* %82
}

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i8* @getcwd(i8*, i64) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
