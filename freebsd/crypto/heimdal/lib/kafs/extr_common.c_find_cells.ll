; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_common.c_find_cells.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_common.c_find_cells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8***, i32*)* @find_cells to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_cells(i8* %0, i8*** %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i8*** %1, i8**** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %131

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %125, %67, %20
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @fgets(i8* %22, i32 64, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %126

26:                                               ; preds = %21
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %29 = call i32 @strlen(i8* %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  store i8* %31, i8** %11, align 8
  br label %32

32:                                               ; preds = %54, %26
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %35 = icmp uge i8* %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load i8*, i8** %11, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %11, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 9
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %11, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %41, %36
  %52 = load i8*, i8** %11, align 8
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %51, %46
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 -1
  store i8* %56, i8** %11, align 8
  br label %32

57:                                               ; preds = %32
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %59 = load i8, i8* %58, align 16
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %64 = load i8, i8* %63, align 16
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 35
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %57
  br label %21

68:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %85, %68
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %69
  %74 = load i8***, i8**** %5, align 8
  %75 = load i8**, i8*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %81 = call i64 @strcmp(i8* %79, i8* %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %88

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %69

88:                                               ; preds = %83, %69
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %125

92:                                               ; preds = %88
  %93 = load i8***, i8**** %5, align 8
  %94 = load i8**, i8*** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 8
  %99 = trunc i64 %98 to i32
  %100 = call i8** @realloc(i8** %94, i32 %99)
  store i8** %100, i8*** %12, align 8
  %101 = load i8**, i8*** %12, align 8
  %102 = icmp eq i8** %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  br label %126

104:                                              ; preds = %92
  %105 = load i8**, i8*** %12, align 8
  %106 = load i8***, i8**** %5, align 8
  store i8** %105, i8*** %106, align 8
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %108 = call i8* @strdup(i8* %107)
  %109 = load i8***, i8**** %5, align 8
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  store i8* %108, i8** %113, align 8
  %114 = load i8***, i8**** %5, align 8
  %115 = load i8**, i8*** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %104
  br label %126

122:                                              ; preds = %104
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %122, %88
  br label %21

126:                                              ; preds = %121, %103, %21
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @fclose(i32* %127)
  %129 = load i32, i32* %10, align 4
  %130 = load i32*, i32** %6, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %126, %19
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
