; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_print.c_addname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_print.c_addname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOSPC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32**, i8*, i8**, i64*)* @addname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addname(i32* %0, i64 %1, i32** %2, i8* %3, i8** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32** %2, i32*** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i64* %5, i64** %13, align 8
  %18 = load i64*, i64** %13, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %15, align 8
  %20 = load i8**, i8*** %12, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %16, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32**, i32*** %10, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = load i8**, i8*** %12, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i64*, i64** %13, align 8
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dn_expand(i32* %22, i32* %25, i32* %27, i8* %29, i64 %31)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %6
  br label %139

36:                                               ; preds = %6
  %37 = load i8**, i8*** %12, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i64 @prune_origin(i8* %38, i8* %39)
  store i64 %40, i64* %14, align 8
  %41 = load i8**, i8*** %12, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %106

47:                                               ; preds = %36
  %48 = load i64, i64* %14, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load i64, i64* %14, align 8
  %52 = add i64 %51, 2
  %53 = load i64*, i64** %13, align 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp ugt i64 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %139

57:                                               ; preds = %50
  %58 = load i8**, i8*** %12, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %14, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %14, align 8
  %62 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 64, i8* %62, align 1
  %63 = load i8**, i8*** %12, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = load i64, i64* %14, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 0, i8* %66, align 1
  br label %124

67:                                               ; preds = %47
  %68 = load i8*, i8** %11, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %96, label %70

70:                                               ; preds = %67
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %96, label %76

76:                                               ; preds = %70
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 46
  br i1 %81, label %82, label %123

82:                                               ; preds = %76
  %83 = load i8*, i8** %11, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %123

88:                                               ; preds = %82
  %89 = load i8**, i8*** %12, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = load i64, i64* %14, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %123

96:                                               ; preds = %88, %70, %67
  %97 = load i8**, i8*** %12, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = load i64, i64* %14, align 8
  %100 = sub i64 %99, 1
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 46
  br i1 %104, label %105, label %123

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %46
  %107 = load i64, i64* %14, align 8
  %108 = add i64 %107, 2
  %109 = load i64*, i64** %13, align 8
  %110 = load i64, i64* %109, align 8
  %111 = icmp ugt i64 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %139

113:                                              ; preds = %106
  %114 = load i8**, i8*** %12, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = load i64, i64* %14, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %14, align 8
  %118 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8 46, i8* %118, align 1
  %119 = load i8**, i8*** %12, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = load i64, i64* %14, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8 0, i8* %122, align 1
  br label %123

123:                                              ; preds = %113, %96, %88, %82, %76
  br label %124

124:                                              ; preds = %123, %57
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %17, align 4
  %127 = load i32**, i32*** %10, align 8
  %128 = load i32*, i32** %127, align 8
  %129 = sext i32 %126 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %127, align 8
  %131 = load i64, i64* %14, align 8
  %132 = load i8**, i8*** %12, align 8
  %133 = load i64*, i64** %13, align 8
  %134 = call i32 @addlen(i64 %131, i8** %132, i64* %133)
  %135 = load i8**, i8*** %12, align 8
  %136 = load i8*, i8** %135, align 8
  store i8 0, i8* %136, align 1
  %137 = load i64, i64* %14, align 8
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %7, align 4
  br label %145

139:                                              ; preds = %112, %56, %35
  %140 = load i32, i32* @ENOSPC, align 4
  store i32 %140, i32* @errno, align 4
  %141 = load i8*, i8** %16, align 8
  %142 = load i8**, i8*** %12, align 8
  store i8* %141, i8** %142, align 8
  %143 = load i64, i64* %15, align 8
  %144 = load i64*, i64** %13, align 8
  store i64 %143, i64* %144, align 8
  store i32 -1, i32* %7, align 4
  br label %145

145:                                              ; preds = %139, %125
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local i32 @dn_expand(i32*, i32*, i32*, i8*, i64) #1

declare dso_local i64 @prune_origin(i8*, i8*) #1

declare dso_local i32 @addlen(i64, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
