; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c__rl_compat_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c__rl_compat_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i32)* @_rl_compat_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_rl_compat_sub(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %13, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @strlen(i8* %18)
  store i64 %19, i64* %14, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %15, align 8
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %10, align 8
  br label %23

23:                                               ; preds = %57, %4
  %24 = load i8*, i8** %10, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %23
  %28 = load i8*, i8** %10, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %27
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %15, align 8
  %39 = call i32 @strncmp(i8* %36, i8* %37, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %15, align 8
  %44 = sub i64 %42, %43
  %45 = load i64, i64* %13, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %13, align 8
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %58

50:                                               ; preds = %41
  %51 = load i64, i64* %15, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 %51
  store i8* %53, i8** %10, align 8
  br label %57

54:                                               ; preds = %35, %27
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %10, align 8
  br label %57

57:                                               ; preds = %54, %50
  br label %23

58:                                               ; preds = %49, %23
  %59 = load i64, i64* %13, align 8
  %60 = add i64 %59, 1
  %61 = call i8* @el_calloc(i64 %60, i32 1)
  store i8* %61, i8** %12, align 8
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i8* null, i8** %5, align 8
  br label %114

65:                                               ; preds = %58
  %66 = load i8*, i8** %6, align 8
  store i8* %66, i8** %10, align 8
  br label %67

67:                                               ; preds = %110, %65
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %111

71:                                               ; preds = %67
  %72 = load i8*, i8** %10, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %71
  %80 = load i8*, i8** %10, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load i64, i64* %15, align 8
  %83 = call i32 @strncmp(i8* %80, i8* %81, i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %104, label %85

85:                                               ; preds = %79
  %86 = load i8*, i8** %11, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i64, i64* %14, align 8
  %89 = call i32 @strncpy(i8* %86, i8* %87, i64 %88)
  %90 = load i64, i64* %14, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 %90
  store i8* %92, i8** %11, align 8
  %93 = load i64, i64* %15, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 %93
  store i8* %95, i8** %10, align 8
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %85
  %99 = load i8*, i8** %11, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @strcpy(i8* %99, i8* %100)
  %102 = load i8*, i8** %12, align 8
  store i8* %102, i8** %5, align 8
  br label %114

103:                                              ; preds = %85
  br label %110

104:                                              ; preds = %79, %71
  %105 = load i8*, i8** %10, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %10, align 8
  %107 = load i8, i8* %105, align 1
  %108 = load i8*, i8** %11, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %11, align 8
  store i8 %107, i8* %108, align 1
  br label %110

110:                                              ; preds = %104, %103
  br label %67

111:                                              ; preds = %67
  %112 = load i8*, i8** %11, align 8
  store i8 0, i8* %112, align 1
  %113 = load i8*, i8** %12, align 8
  store i8* %113, i8** %5, align 8
  br label %114

114:                                              ; preds = %111, %98, %64
  %115 = load i8*, i8** %5, align 8
  ret i8* %115
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @el_calloc(i64, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
