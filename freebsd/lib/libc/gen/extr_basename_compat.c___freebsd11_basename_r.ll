; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_basename_compat.c___freebsd11_basename_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_basename_compat.c___freebsd11_basename_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__freebsd11_basename_r(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11, %2
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 46, i8* %18, align 1
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %3, align 8
  br label %96

22:                                               ; preds = %11
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 -1
  store i8* %28, i8** %6, align 8
  br label %29

29:                                               ; preds = %40, %22
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ugt i8* %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 47
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i1 [ false, %29 ], [ %37, %33 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %42, i8** %6, align 8
  br label %29

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 47
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 47, i8* %54, align 1
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %5, align 8
  store i8* %57, i8** %3, align 8
  br label %96

58:                                               ; preds = %47, %43
  %59 = load i8*, i8** %6, align 8
  store i8* %59, i8** %7, align 8
  br label %60

60:                                               ; preds = %72, %58
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = icmp ugt i8* %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 -1
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 47
  br label %70

70:                                               ; preds = %64, %60
  %71 = phi i1 [ false, %60 ], [ %69, %64 ]
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 -1
  store i8* %74, i8** %7, align 8
  br label %60

75:                                               ; preds = %70
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @MAXPATHLEN, align 8
  %84 = icmp uge i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %86, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %96

87:                                               ; preds = %75
  %88 = load i8*, i8** %5, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @memcpy(i8* %88, i8* %89, i64 %90)
  %92 = load i8*, i8** %5, align 8
  %93 = load i64, i64* %8, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8 0, i8* %94, align 1
  %95 = load i8*, i8** %5, align 8
  store i8* %95, i8** %3, align 8
  br label %96

96:                                               ; preds = %87, %85, %52, %16
  %97 = load i8*, i8** %3, align 8
  ret i8* %97
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
