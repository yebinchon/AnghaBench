; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_makeargv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_makeargv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@margv = common dso_local global i8** null, align 8
@margc = common dso_local global i64 0, align 8
@line = common dso_local global i8* null, align 8
@saveline = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @makeargv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makeargv() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = load i8**, i8*** @margv, align 8
  store i8** %6, i8*** %4, align 8
  store i64 0, i64* @margc, align 8
  %7 = load i8*, i8** @line, align 8
  store i8* %7, i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 33
  br i1 %11, label %12, label %25

12:                                               ; preds = %0
  %13 = load i32, i32* @saveline, align 4
  %14 = load i8*, i8** @line, align 8
  %15 = call i32 @strcpy(i32 %13, i8* %14)
  %16 = call i32 @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %20, i8*** %4, align 8
  store i8* %18, i8** %19, align 8
  %21 = load i64, i64* @margc, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @margc, align 8
  %23 = load i8*, i8** %1, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %1, align 8
  br label %25

25:                                               ; preds = %12, %0
  br label %26

26:                                               ; preds = %110, %25
  %27 = load i8*, i8** %1, align 8
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %3, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %113

30:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %35, %30
  %32 = load i8, i8* %3, align 1
  %33 = call i64 @isspace(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** %1, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %1, align 8
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %3, align 1
  br label %31

39:                                               ; preds = %31
  %40 = load i8, i8* %3, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %113

44:                                               ; preds = %39
  %45 = load i8*, i8** %1, align 8
  %46 = load i8**, i8*** %4, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %47, i8*** %4, align 8
  store i8* %45, i8** %46, align 8
  %48 = load i64, i64* @margc, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* @margc, align 8
  %50 = load i8*, i8** %1, align 8
  store i8* %50, i8** %2, align 8
  br label %51

51:                                               ; preds = %100, %44
  %52 = load i8, i8* %3, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %104

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i8, i8* %3, align 1
  %60 = sext i8 %59 to i32
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %100

64:                                               ; preds = %58
  br label %96

65:                                               ; preds = %55
  %66 = load i8, i8* %3, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 92
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i8*, i8** %1, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %1, align 8
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %3, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %104

76:                                               ; preds = %69
  br label %95

77:                                               ; preds = %65
  %78 = load i8, i8* %3, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 34
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 34, i32* %5, align 4
  br label %100

82:                                               ; preds = %77
  %83 = load i8, i8* %3, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 39
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 39, i32* %5, align 4
  br label %100

87:                                               ; preds = %82
  %88 = load i8, i8* %3, align 1
  %89 = call i64 @isspace(i8 signext %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %104

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94, %76
  br label %96

96:                                               ; preds = %95, %64
  %97 = load i8, i8* %3, align 1
  %98 = load i8*, i8** %2, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %2, align 8
  store i8 %97, i8* %98, align 1
  br label %100

100:                                              ; preds = %96, %86, %81, %63
  %101 = load i8*, i8** %1, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %1, align 8
  %103 = load i8, i8* %102, align 1
  store i8 %103, i8* %3, align 1
  br label %51

104:                                              ; preds = %91, %75, %51
  %105 = load i8*, i8** %2, align 8
  store i8 0, i8* %105, align 1
  %106 = load i8, i8* %3, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %113

110:                                              ; preds = %104
  %111 = load i8*, i8** %1, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %1, align 8
  br label %26

113:                                              ; preds = %109, %43, %26
  %114 = load i8**, i8*** %4, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i32 1
  store i8** %115, i8*** %4, align 8
  store i8* null, i8** %114, align 8
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
