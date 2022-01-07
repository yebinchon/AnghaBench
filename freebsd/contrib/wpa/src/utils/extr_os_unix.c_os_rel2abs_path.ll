; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os_unix.c_os_rel2abs_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os_unix.c_os_rel2abs_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

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
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i64 128, i64* %7, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %95

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 47
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @os_strdup(i8* %22)
  store i8* %23, i8** %2, align 8
  br label %95

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %57, %24
  %26 = load i64, i64* %7, align 8
  %27 = call i8* @os_malloc(i64 %26)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i8* null, i8** %2, align 8
  br label %95

31:                                               ; preds = %25
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i8* @getcwd(i8* %32, i64 %33)
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load i32, i32* @errno, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @os_free(i8* %39)
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @ERANGE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i8* null, i8** %2, align 8
  br label %95

45:                                               ; preds = %37
  %46 = load i64, i64* %7, align 8
  %47 = mul i64 %46, 2
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ugt i64 %48, 2000
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i8* null, i8** %2, align 8
  br label %95

51:                                               ; preds = %45
  br label %57

52:                                               ; preds = %31
  %53 = load i8*, i8** %4, align 8
  %54 = load i64, i64* %7, align 8
  %55 = sub i64 %54, 1
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 0, i8* %56, align 1
  br label %58

57:                                               ; preds = %51
  br label %25

58:                                               ; preds = %52
  %59 = load i8*, i8** %5, align 8
  %60 = call i64 @os_strlen(i8* %59)
  store i64 %60, i64* %8, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = call i64 @os_strlen(i8* %61)
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %63, 1
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %64, %65
  %67 = add i64 %66, 1
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i8* @os_malloc(i64 %68)
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %91

72:                                               ; preds = %58
  %73 = load i8*, i8** %6, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @os_memcpy(i8* %73, i8* %74, i64 %75)
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8 47, i8* %79, align 1
  %80 = load i8*, i8** %6, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8*, i8** %3, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @os_memcpy(i8* %83, i8* %84, i64 %85)
  %87 = load i8*, i8** %6, align 8
  %88 = load i64, i64* %10, align 8
  %89 = sub i64 %88, 1
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 0, i8* %90, align 1
  br label %91

91:                                               ; preds = %72, %58
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 @os_free(i8* %92)
  %94 = load i8*, i8** %6, align 8
  store i8* %94, i8** %2, align 8
  br label %95

95:                                               ; preds = %91, %50, %44, %30, %21, %14
  %96 = load i8*, i8** %2, align 8
  ret i8* %96
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
