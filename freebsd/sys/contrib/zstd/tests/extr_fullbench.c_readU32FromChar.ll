; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_fullbench.c_readU32FromChar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_fullbench.c_readU32FromChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.readU32FromChar.errorMsg = private unnamed_addr constant [31 x i8] c"error: numeric value too large\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @readU32FromChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readU32FromChar(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca [31 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %7 = bitcast [31 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([31 x i8], [31 x i8]* @__const.readU32FromChar.errorMsg, i32 0, i32 0), i64 31, i1 false)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %28, %1
  %9 = load i8**, i8*** %2, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp sge i32 %12, 48
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load i8**, i8*** %2, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sle i32 %18, 57
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i1 [ false, %8 ], [ %19, %14 ]
  br i1 %21, label %22, label %41

22:                                               ; preds = %20
  store i32 429496728, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ugt i32 %23, 429496728
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds [31 x i8], [31 x i8]* %3, i64 0, i64 0
  %27 = call i32 @ERROR_OUT(i8* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %4, align 4
  %30 = mul i32 %29, 10
  store i32 %30, i32* %4, align 4
  %31 = load i8**, i8*** %2, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = sub nsw i32 %34, 48
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i8**, i8*** %2, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %38, align 8
  br label %8

41:                                               ; preds = %20
  %42 = load i8**, i8*** %2, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 75
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i8**, i8*** %2, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 77
  br i1 %52, label %53, label %100

53:                                               ; preds = %47, %41
  store i32 4194303, i32* %6, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ugt i32 %54, 4194303
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = getelementptr inbounds [31 x i8], [31 x i8]* %3, i64 0, i64 0
  %58 = call i32 @ERROR_OUT(i8* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %4, align 4
  %61 = shl i32 %60, 10
  store i32 %61, i32* %4, align 4
  %62 = load i8**, i8*** %2, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 77
  br i1 %66, label %67, label %76

67:                                               ; preds = %59
  %68 = load i32, i32* %4, align 4
  %69 = icmp ugt i32 %68, 4194303
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = getelementptr inbounds [31 x i8], [31 x i8]* %3, i64 0, i64 0
  %72 = call i32 @ERROR_OUT(i8* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %4, align 4
  %75 = shl i32 %74, 10
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %59
  %77 = load i8**, i8*** %2, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %77, align 8
  %80 = load i8**, i8*** %2, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 105
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load i8**, i8*** %2, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %86, align 8
  br label %89

89:                                               ; preds = %85, %76
  %90 = load i8**, i8*** %2, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 66
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i8**, i8*** %2, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %96, align 8
  br label %99

99:                                               ; preds = %95, %89
  br label %100

100:                                              ; preds = %99, %47
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ERROR_OUT(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
