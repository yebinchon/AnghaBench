; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_xdelta.c_find_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_xdelta.c_find_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blocks = type { i32 }

@NO_POSITION = common dso_local global i32 0, align 4
@MATCH_BLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blocks*, i32, i8*, i32, i8*, i32, i32*, i32*, i32)* @find_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_match(%struct.blocks* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32* %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.blocks*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.blocks* %0, %struct.blocks** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  %24 = load i32*, i32** %17, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %21, align 4
  %26 = load %struct.blocks*, %struct.blocks** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i8*, i8** %15, align 8
  %29 = load i32, i32* %21, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = call i32 @find_block(%struct.blocks* %26, i32 %27, i8* %31)
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* %20, align 4
  %34 = load i32, i32* @NO_POSITION, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  br label %119

37:                                               ; preds = %9
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %20, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %21, align 4
  %45 = sub nsw i32 %43, %44
  %46 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %47 = sub nsw i32 %45, %46
  %48 = icmp slt i32 %42, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %37
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %20, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %54 = sub nsw i32 %52, %53
  br label %61

55:                                               ; preds = %37
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %21, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %60 = sub nsw i32 %58, %59
  br label %61

61:                                               ; preds = %55, %49
  %62 = phi i32 [ %54, %49 ], [ %60, %55 ]
  store i32 %62, i32* %23, align 4
  %63 = load i8*, i8** %13, align 8
  %64 = load i32, i32* %20, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8*, i8** %15, align 8
  %71 = load i32, i32* %21, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i32, i32* %23, align 4
  %78 = call i32 @svn_cstring__match_length(i8* %69, i8* %76, i32 %77)
  store i32 %78, i32* %22, align 4
  br label %79

79:                                               ; preds = %104, %61
  %80 = load i32, i32* %20, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  %83 = load i32, i32* %21, align 4
  %84 = load i32, i32* %19, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load i8*, i8** %13, align 8
  %88 = load i32, i32* %20, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = load i8*, i8** %15, align 8
  %95 = load i32, i32* %21, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %93, %100
  br label %102

102:                                              ; preds = %86, %82, %79
  %103 = phi i1 [ false, %82 ], [ false, %79 ], [ %101, %86 ]
  br i1 %103, label %104, label %111

104:                                              ; preds = %102
  %105 = load i32, i32* %20, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %20, align 4
  %107 = load i32, i32* %21, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %21, align 4
  %109 = load i32, i32* %22, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %22, align 4
  br label %79

111:                                              ; preds = %102
  %112 = load i32, i32* %20, align 4
  %113 = load i32*, i32** %18, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* %21, align 4
  %115 = load i32*, i32** %17, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %117 = load i32, i32* %22, align 4
  %118 = add nsw i32 %116, %117
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %111, %36
  %120 = load i32, i32* %10, align 4
  ret i32 %120
}

declare dso_local i32 @find_block(%struct.blocks*, i32, i8*) #1

declare dso_local i32 @svn_cstring__match_length(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
