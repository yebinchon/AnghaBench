; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_dfa.c_enlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_dfa.c_enlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**, i8*, i64)* @enlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @enlist(i8** %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = icmp eq i8** %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i8** null, i8*** %4, align 8
  br label %120

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @icpyalloc(i8* %14)
  store i8* %15, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @freelist(i8** %18)
  store i8** null, i8*** %4, align 8
  br label %120

20:                                               ; preds = %13
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8 0, i8* %23, align 1
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %45, %20
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %24
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32* @istrstr(i8* %36, i8* %37)
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i8**, i8*** %5, align 8
  store i8** %43, i8*** %4, align 8
  br label %120

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %24

48:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %94, %48
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %95

56:                                               ; preds = %49
  %57 = load i8*, i8** %6, align 8
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32* @istrstr(i8* %57, i8* %62)
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %94

68:                                               ; preds = %56
  %69 = load i8**, i8*** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %95

80:                                               ; preds = %68
  %81 = load i8**, i8*** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = load i8**, i8*** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  store i8* %85, i8** %89, align 8
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  store i8* null, i8** %93, align 8
  br label %94

94:                                               ; preds = %80, %65
  br label %49

95:                                               ; preds = %79, %49
  %96 = load i8**, i8*** %5, align 8
  %97 = bitcast i8** %96 to i8*
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 8
  %102 = trunc i64 %101 to i32
  %103 = call i64 @realloc(i8* %97, i32 %102)
  %104 = inttoptr i64 %103 to i8**
  store i8** %104, i8*** %5, align 8
  %105 = load i8**, i8*** %5, align 8
  %106 = icmp eq i8** %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  store i8** null, i8*** %4, align 8
  br label %120

108:                                              ; preds = %95
  %109 = load i8*, i8** %6, align 8
  %110 = load i8**, i8*** %5, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  store i8* %109, i8** %113, align 8
  %114 = load i8**, i8*** %5, align 8
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %114, i64 %117
  store i8* null, i8** %118, align 8
  %119 = load i8**, i8*** %5, align 8
  store i8** %119, i8*** %4, align 8
  br label %120

120:                                              ; preds = %108, %107, %40, %17, %12
  %121 = load i8**, i8*** %4, align 8
  ret i8** %121
}

declare dso_local i8* @icpyalloc(i8*) #1

declare dso_local i32 @freelist(i8**) #1

declare dso_local i32* @istrstr(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @realloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
