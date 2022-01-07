; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/largeNbDicts/extr_largeNbDicts.c_readU32FromChar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/largeNbDicts/extr_largeNbDicts.c_readU32FromChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @readU32FromChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readU32FromChar(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i8**, i8*** %2, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp sge i32 %10, 48
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load i8**, i8*** %2, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp sle i32 %16, 57
  br label %18

18:                                               ; preds = %12, %6
  %19 = phi i1 [ false, %6 ], [ %17, %12 ]
  br i1 %19, label %20, label %37

20:                                               ; preds = %18
  store i32 429496728, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ule i32 %21, 429496728
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = mul i32 %25, 10
  store i32 %26, i32* %3, align 4
  %27 = load i8**, i8*** %2, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = sub nsw i32 %30, 48
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i8**, i8*** %2, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %34, align 8
  br label %6

37:                                               ; preds = %18
  %38 = load i8**, i8*** %2, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 75
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i8**, i8*** %2, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 77
  br i1 %48, label %49, label %92

49:                                               ; preds = %43, %37
  store i32 4194303, i32* %5, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ule i32 %50, 4194303
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = shl i32 %54, 10
  store i32 %55, i32* %3, align 4
  %56 = load i8**, i8*** %2, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 77
  br i1 %60, label %61, label %68

61:                                               ; preds = %49
  %62 = load i32, i32* %3, align 4
  %63 = icmp ule i32 %62, 4194303
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = shl i32 %66, 10
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %61, %49
  %69 = load i8**, i8*** %2, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %69, align 8
  %72 = load i8**, i8*** %2, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 105
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load i8**, i8*** %2, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %78, align 8
  br label %81

81:                                               ; preds = %77, %68
  %82 = load i8**, i8*** %2, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 66
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i8**, i8*** %2, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %88, align 8
  br label %91

91:                                               ; preds = %87, %81
  br label %92

92:                                               ; preds = %91, %43
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
