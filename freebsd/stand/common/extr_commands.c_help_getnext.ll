; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_commands.c_help_getnext.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_commands.c_help_getnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8**, i8**)* @help_getnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @help_getnext(i32 %0, i8** %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca [81 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i8**, i8*** %9, align 8
  store i8* null, i8** %13, align 8
  %14 = load i8**, i8*** %8, align 8
  store i8* null, i8** %14, align 8
  %15 = load i8**, i8*** %7, align 8
  store i8* null, i8** %15, align 8
  br label %16

16:                                               ; preds = %110, %36, %4
  %17 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i64 0, i64 0
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @fgetstr(i8* %17, i32 80, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %120

22:                                               ; preds = %16
  %23 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i64 0, i64 0
  %24 = call i32 @strlen(i8* %23)
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i64 0, i64 0
  %28 = load i8, i8* %27, align 16
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 35
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i64 0, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 32
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %26, %22
  br label %16

37:                                               ; preds = %31
  %38 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i64 0, i64 0
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  store i8* %39, i8** %11, align 8
  br label %40

40:                                               ; preds = %104, %37
  %41 = load i8*, i8** %11, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i8*, i8** %11, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %43, %40
  %49 = phi i1 [ false, %40 ], [ %47, %43 ]
  br i1 %49, label %50, label %106

50:                                               ; preds = %48
  %51 = load i8*, i8** %11, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 32)
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 84
  br i1 %56, label %57, label %72

57:                                               ; preds = %50
  %58 = load i8**, i8*** %7, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load i8*, i8** %12, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i8*, i8** %12, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %12, align 8
  store i8 0, i8* %65, align 1
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = call i8* @strdup(i8* %69)
  %71 = load i8**, i8*** %7, align 8
  store i8* %70, i8** %71, align 8
  br label %104

72:                                               ; preds = %57, %50
  %73 = load i8*, i8** %11, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 83
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load i8**, i8*** %8, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load i8*, i8** %12, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %12, align 8
  store i8 0, i8* %85, align 1
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i8*, i8** %11, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = call i8* @strdup(i8* %89)
  %91 = load i8**, i8*** %8, align 8
  store i8* %90, i8** %91, align 8
  br label %103

92:                                               ; preds = %77, %72
  %93 = load i8*, i8** %11, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 68
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i8*, i8** %11, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = call i8* @strdup(i8* %99)
  %101 = load i8**, i8*** %9, align 8
  store i8* %100, i8** %101, align 8
  store i8* null, i8** %12, align 8
  br label %102

102:                                              ; preds = %97, %92
  br label %103

103:                                              ; preds = %102, %87
  br label %104

104:                                              ; preds = %103, %67
  %105 = load i8*, i8** %12, align 8
  store i8* %105, i8** %11, align 8
  br label %40

106:                                              ; preds = %48
  %107 = load i8**, i8*** %7, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i8**, i8*** %8, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @free(i8* %112)
  %114 = load i8**, i8*** %9, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @free(i8* %115)
  %117 = load i8**, i8*** %9, align 8
  store i8* null, i8** %117, align 8
  %118 = load i8**, i8*** %8, align 8
  store i8* null, i8** %118, align 8
  br label %16

119:                                              ; preds = %106
  store i32 1, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %21
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i64 @fgetstr(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
