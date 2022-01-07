; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_bsd-getline.c_getdelim.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_bsd-getline.c_getdelim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i32, i32*)* @getdelim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getdelim(i8** %0, i64* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20, %4
  %25 = load i64, i64* @BUFSIZ, align 8
  %26 = call i8* @malloc(i64 %25)
  %27 = load i8**, i8*** %6, align 8
  store i8* %26, i8** %27, align 8
  %28 = icmp eq i8* %26, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %117

30:                                               ; preds = %24
  %31 = load i64, i64* @BUFSIZ, align 8
  %32 = load i64*, i64** %7, align 8
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %20
  %34 = load i8**, i8*** %6, align 8
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %10, align 8
  %36 = load i8**, i8*** %6, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i64*, i64** %7, align 8
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8* %40, i8** %11, align 8
  br label %41

41:                                               ; preds = %116, %33
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @fgetc(i32* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @feof(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i8*, i8** %10, align 8
  %52 = load i8**, i8*** %6, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = ptrtoint i8* %51 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i8*, i8** %10, align 8
  store i8 0, i8* %61, align 1
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %5, align 4
  br label %117

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %46
  store i32 -1, i32* %5, align 4
  br label %117

65:                                               ; preds = %41
  %66 = load i32, i32* %12, align 4
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %10, align 8
  store i8 %67, i8* %68, align 1
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load i8*, i8** %10, align 8
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %10, align 8
  %76 = load i8**, i8*** %6, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = ptrtoint i8* %75 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %117

82:                                               ; preds = %65
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  %85 = load i8*, i8** %11, align 8
  %86 = icmp uge i8* %84, %85
  br i1 %86, label %87, label %116

87:                                               ; preds = %82
  %88 = load i64*, i64** %7, align 8
  %89 = load i64, i64* %88, align 8
  %90 = mul i64 %89, 2
  store i64 %90, i64* %15, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = load i8**, i8*** %6, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = ptrtoint i8* %91 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %16, align 4
  %98 = load i8**, i8*** %6, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = load i64, i64* %15, align 8
  %101 = call i8* @realloc(i8* %99, i64 %100)
  store i8* %101, i8** %14, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %87
  store i32 -1, i32* %5, align 4
  br label %117

104:                                              ; preds = %87
  %105 = load i8*, i8** %14, align 8
  %106 = load i8**, i8*** %6, align 8
  store i8* %105, i8** %106, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load i64*, i64** %7, align 8
  store i64 %107, i64* %108, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = load i64, i64* %15, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %11, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  store i8* %115, i8** %10, align 8
  br label %116

116:                                              ; preds = %104, %82
  br label %41

117:                                              ; preds = %103, %73, %64, %60, %29
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
