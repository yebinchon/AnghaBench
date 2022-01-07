; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_init.c_exrc_isok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_init.c_exrc_isok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@NOEXIST = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@RCOK = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"128|%s: not sourced: not owned by you or root\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"129|%s: not sourced: not owned by you\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"130|%s: not sourced: writeable by a user other than the owner\00", align 1
@NOPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.stat*, i8*, i32, i32)* @exrc_isok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exrc_isok(i32* %0, %struct.stat* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.stat* %1, %struct.stat** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = load %struct.stat*, %struct.stat** %8, align 8
  %22 = call i64 @stat(i8* %20, %struct.stat* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @NOEXIST, align 4
  store i32 %25, i32* %6, align 4
  br label %143

26:                                               ; preds = %5
  %27 = call i64 (...) @geteuid()
  store i64 %27, i64* %13, align 8
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.stat*, %struct.stat** %8, align 8
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %30, %26
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i64, i64* %13, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.stat*, %struct.stat** %8, align 8
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 0, i32 1
  store i32 %51, i32* %12, align 4
  br label %64

52:                                               ; preds = %41, %38, %30
  %53 = load %struct.stat*, %struct.stat** %8, align 8
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @S_IWGRP, align 4
  %57 = load i32, i32* @S_IWOTH, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 2, i32* %12, align 4
  br label %64

62:                                               ; preds = %52
  %63 = load i32, i32* @RCOK, align 4
  store i32 %63, i32* %6, align 4
  br label %143

64:                                               ; preds = %61, %47
  %65 = load i32*, i32** %7, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = call i8* @msg_print(i32* %65, i8* %66, i32* %14)
  store i8* %67, i8** %16, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32* @strchr(i8* %68, i8 signext 47)
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %116

71:                                               ; preds = %64
  %72 = call i8* @getcwd(i32* null, i32 0)
  store i8* %72, i8** %18, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %116

74:                                               ; preds = %71
  %75 = load i32*, i32** %7, align 8
  %76 = load i8*, i8** %18, align 8
  %77 = call i8* @msg_print(i32* %75, i8* %76, i32* %15)
  store i8* %77, i8** %17, align 8
  %78 = load i8*, i8** %17, align 8
  %79 = load i8*, i8** %16, align 8
  %80 = call i8* @join(i8* %78, i8* %79)
  store i8* %80, i8** %19, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* @M_SYSERR, align 4
  %85 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %83, i32 %84, i8* null)
  br label %106

86:                                               ; preds = %74
  %87 = load i32, i32* %12, align 4
  switch i32 %87, label %103 [
    i32 0, label %88
    i32 1, label %93
    i32 2, label %98
  ]

88:                                               ; preds = %86
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* @M_ERR, align 4
  %91 = load i8*, i8** %19, align 8
  %92 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %89, i32 %90, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %91)
  br label %103

93:                                               ; preds = %86
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* @M_ERR, align 4
  %96 = load i8*, i8** %19, align 8
  %97 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %94, i32 %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  br label %103

98:                                               ; preds = %86
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* @M_ERR, align 4
  %101 = load i8*, i8** %19, align 8
  %102 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %99, i32 %100, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %86, %98, %93, %88
  %104 = load i8*, i8** %19, align 8
  %105 = call i32 @free(i8* %104)
  br label %106

106:                                              ; preds = %103, %82
  %107 = load i8*, i8** %18, align 8
  %108 = call i32 @free(i8* %107)
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32*, i32** %7, align 8
  %113 = load i8*, i8** %17, align 8
  %114 = call i32 @FREE_SPACE(i32* %112, i8* %113, i32 0)
  br label %115

115:                                              ; preds = %111, %106
  br label %134

116:                                              ; preds = %71, %64
  %117 = load i32, i32* %12, align 4
  switch i32 %117, label %133 [
    i32 0, label %118
    i32 1, label %123
    i32 2, label %128
  ]

118:                                              ; preds = %116
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* @M_ERR, align 4
  %121 = load i8*, i8** %16, align 8
  %122 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %119, i32 %120, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %121)
  br label %133

123:                                              ; preds = %116
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* @M_ERR, align 4
  %126 = load i8*, i8** %16, align 8
  %127 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %124, i32 %125, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %126)
  br label %133

128:                                              ; preds = %116
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* @M_ERR, align 4
  %131 = load i8*, i8** %16, align 8
  %132 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %129, i32 %130, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %116, %128, %123, %118
  br label %134

134:                                              ; preds = %133, %115
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32*, i32** %7, align 8
  %139 = load i8*, i8** %16, align 8
  %140 = call i32 @FREE_SPACE(i32* %138, i8* %139, i32 0)
  br label %141

141:                                              ; preds = %137, %134
  %142 = load i32, i32* @NOPERM, align 4
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %141, %62, %24
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i8* @msg_print(i32*, i8*, i32*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @getcwd(i32*, i32) #1

declare dso_local i8* @join(i8*, i8*) #1

declare dso_local i32 @msgq(i32*, i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @FREE_SPACE(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
