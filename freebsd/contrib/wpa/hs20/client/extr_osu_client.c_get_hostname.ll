; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_get_hostname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_get_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_hostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_hostname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %104

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @os_strchr(i8* %12, i8 signext 47)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i8* null, i8** %2, align 8
  br label %104

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 47
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i8* null, i8** %2, align 8
  br label %104

25:                                               ; preds = %17
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i8* @os_strchr(i8* %28, i8 signext 47)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i8* @os_strchr(i8* %30, i8 signext 58)
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ult i8* %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %37, %34, %25
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44, %37
  %48 = load i8*, i8** %6, align 8
  store i8* %48, i8** %5, align 8
  br label %49

49:                                               ; preds = %47, %44, %41
  %50 = load i8*, i8** %5, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 -1
  store i8* %54, i8** %5, align 8
  br label %72

55:                                               ; preds = %49
  %56 = load i8*, i8** %4, align 8
  store i8* %56, i8** %5, align 8
  br label %57

57:                                               ; preds = %61, %55
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %5, align 8
  br label %57

64:                                               ; preds = %57
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = icmp ugt i8* %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 -1
  store i8* %70, i8** %5, align 8
  br label %71

71:                                               ; preds = %68, %64
  br label %72

72:                                               ; preds = %71, %52
  %73 = load i8*, i8** %5, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = add nsw i64 %77, 2
  %79 = trunc i64 %78 to i32
  %80 = call i8* @os_malloc(i32 %79)
  store i8* %80, i8** %7, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  store i8* null, i8** %2, align 8
  br label %104

84:                                               ; preds = %72
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = add nsw i64 %91, 1
  %93 = trunc i64 %92 to i32
  %94 = call i32 @os_memcpy(i8* %85, i8* %86, i32 %93)
  %95 = load i8*, i8** %7, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = add nsw i64 %100, 1
  %102 = getelementptr inbounds i8, i8* %95, i64 %101
  store i8 0, i8* %102, align 1
  %103 = load i8*, i8** %7, align 8
  store i8* %103, i8** %2, align 8
  br label %104

104:                                              ; preds = %84, %83, %24, %16, %10
  %105 = load i8*, i8** %2, align 8
  ret i8* %105
}

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
