; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_dirname_compat.c___freebsd11_dirname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_dirname_compat.c___freebsd11_dirname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__freebsd11_dirname.dname = internal global i8* null, align 8
@MAXPATHLEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__freebsd11_dirname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** @__freebsd11_dirname.dname, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i64, i64* @MAXPATHLEN, align 8
  %10 = call i64 @malloc(i64 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @__freebsd11_dirname.dname, align 8
  %12 = load i8*, i8** @__freebsd11_dirname.dname, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8* null, i8** %2, align 8
  br label %120

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i8*, i8** %3, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** @__freebsd11_dirname.dname, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 46, i8* %26, align 1
  %27 = load i8*, i8** @__freebsd11_dirname.dname, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** @__freebsd11_dirname.dname, align 8
  store i8* %29, i8** %2, align 8
  br label %120

30:                                               ; preds = %19
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = getelementptr inbounds i8, i8* %35, i64 -1
  store i8* %36, i8** %5, align 8
  br label %37

37:                                               ; preds = %48, %30
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = icmp ugt i8* %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 47
  br label %46

46:                                               ; preds = %41, %37
  %47 = phi i1 [ false, %37 ], [ %45, %41 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 -1
  store i8* %50, i8** %5, align 8
  br label %37

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %63, %51
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = icmp ugt i8* %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i8*, i8** %5, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 47
  br label %61

61:                                               ; preds = %56, %52
  %62 = phi i1 [ false, %52 ], [ %60, %56 ]
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 -1
  store i8* %65, i8** %5, align 8
  br label %52

66:                                               ; preds = %61
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = icmp eq i8* %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i8*, i8** %5, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 47
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 47, i32 46
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** @__freebsd11_dirname.dname, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  store i8 %77, i8* %79, align 1
  %80 = load i8*, i8** @__freebsd11_dirname.dname, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  store i8 0, i8* %81, align 1
  %82 = load i8*, i8** @__freebsd11_dirname.dname, align 8
  store i8* %82, i8** %2, align 8
  br label %120

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %96, %83
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 -1
  store i8* %86, i8** %5, align 8
  br label %87

87:                                               ; preds = %84
  %88 = load i8*, i8** %5, align 8
  %89 = load i8*, i8** %3, align 8
  %90 = icmp ugt i8* %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i8*, i8** %5, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 47
  br label %96

96:                                               ; preds = %91, %87
  %97 = phi i1 [ false, %87 ], [ %95, %91 ]
  br i1 %97, label %84, label %98

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %98
  %100 = load i8*, i8** %5, align 8
  %101 = load i8*, i8** %3, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %4, align 8
  %106 = load i64, i64* %4, align 8
  %107 = load i64, i64* @MAXPATHLEN, align 8
  %108 = icmp uge i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %110, i32* @errno, align 4
  store i8* null, i8** %2, align 8
  br label %120

111:                                              ; preds = %99
  %112 = load i8*, i8** @__freebsd11_dirname.dname, align 8
  %113 = load i8*, i8** %3, align 8
  %114 = load i64, i64* %4, align 8
  %115 = call i32 @memcpy(i8* %112, i8* %113, i64 %114)
  %116 = load i8*, i8** @__freebsd11_dirname.dname, align 8
  %117 = load i64, i64* %4, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8 0, i8* %118, align 1
  %119 = load i8*, i8** @__freebsd11_dirname.dname, align 8
  store i8* %119, i8** %2, align 8
  br label %120

120:                                              ; preds = %111, %109, %70, %24, %14
  %121 = load i8*, i8** %2, align 8
  ret i8* %121
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
