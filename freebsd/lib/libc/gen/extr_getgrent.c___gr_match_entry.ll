; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getgrent.c___gr_match_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getgrent.c___gr_match_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NS_NOTFOUND = common dso_local global i32 0, align 4
@NS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__gr_match_entry(i8* %0, i64 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i64, i64* %8, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @is_comment_line(i8* %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %5
  %27 = load i32, i32* @NS_NOTFOUND, align 4
  store i32 %27, i32* %6, align 4
  br label %112

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %32 [
    i32 128, label %30
    i32 129, label %31
  ]

30:                                               ; preds = %28
  store i32 1, i32* %18, align 4
  br label %33

31:                                               ; preds = %28
  store i32 2, i32* %18, align 4
  br label %33

32:                                               ; preds = %28
  store i32 2, i32* %18, align 4
  br label %33

33:                                               ; preds = %32, %31, %30
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %14, align 8
  %37 = load i8*, i8** %7, align 8
  store i8* %37, i8** %13, align 8
  store i32 0, i32* %17, align 4
  br label %38

38:                                               ; preds = %57, %33
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %18, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i8*, i8** %13, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = icmp ult i8* %43, %44
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ false, %38 ], [ %45, %42 ]
  br i1 %47, label %48, label %60

48:                                               ; preds = %46
  %49 = load i8*, i8** %13, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 58
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %17, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %17, align 4
  br label %56

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %13, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %13, align 8
  br label %38

60:                                               ; preds = %46
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %18, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @NS_NOTFOUND, align 4
  store i32 %65, i32* %6, align 4
  br label %112

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  switch i32 %67, label %109 [
    i32 128, label %68
    i32 129, label %88
    i32 130, label %107
  ]

68:                                               ; preds = %66
  %69 = load i8*, i8** %10, align 8
  %70 = call i64 @strlen(i8* %69)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = add i64 %71, 1
  %73 = load i8*, i8** %13, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = icmp eq i64 %72, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %68
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @memcmp(i8* %80, i8* %81, i64 %82)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @NS_SUCCESS, align 4
  store i32 %86, i32* %6, align 4
  br label %112

87:                                               ; preds = %79, %68
  br label %110

88:                                               ; preds = %66
  %89 = load i8*, i8** %13, align 8
  %90 = call i64 @strtoul(i8* %89, i8** %15, i32 10)
  store i64 %90, i64* %16, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = icmp ult i8* %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %88
  %95 = load i8*, i8** %15, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 58
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load i32, i32* %11, align 4
  %101 = load i64, i64* %16, align 8
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @NS_SUCCESS, align 4
  store i32 %105, i32* %6, align 4
  br label %112

106:                                              ; preds = %99, %94, %88
  br label %110

107:                                              ; preds = %66
  %108 = load i32, i32* @NS_SUCCESS, align 4
  store i32 %108, i32* %6, align 4
  br label %112

109:                                              ; preds = %66
  br label %110

110:                                              ; preds = %109, %106, %87
  %111 = load i32, i32* @NS_NOTFOUND, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %110, %107, %104, %85, %64, %26
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i64 @is_comment_line(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
