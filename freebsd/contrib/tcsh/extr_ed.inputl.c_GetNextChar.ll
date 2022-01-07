; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.inputl.c_GetNextChar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.inputl.c_GetNextChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_LEN_MAX = common dso_local global i32 0, align 4
@haveungetchar = common dso_local global i64 0, align 8
@ungetchar = common dso_local global i8 0, align 1
@MacroLvl = common dso_local global i64 0, align 8
@KeyMacro = common dso_local global i64** null, align 8
@CHAR = common dso_local global i8 0, align 1
@SHIN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CurrentKeyMap = common dso_local global i64* null, align 8
@F_XKEY = common dso_local global i64 0, align 8
@MB_CUR_MAX = common dso_local global i64 0, align 8
@INVALID_BYTE = common dso_local global i8 0, align 1
@ERR_SYSTEM = common dso_local global i32 0, align 4
@__nt_vcode = common dso_local global i8 0, align 1
@__nt_want_vcode = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@windowchg = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetNextChar(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @MB_LEN_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i64, i64* @haveungetchar, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  store i64 0, i64* @haveungetchar, align 8
  %17 = load i8, i8* @ungetchar, align 1
  %18 = load i8*, i8** %3, align 8
  store i8 %17, i8* %18, align 1
  store i32 1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %123

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %35, %19
  %21 = load i64, i64* @MacroLvl, align 8
  %22 = icmp ult i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = call i32 (...) @Load_input_line()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %60

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i64**, i64*** @KeyMacro, align 8
  %30 = load i64, i64* @MacroLvl, align 8
  %31 = getelementptr inbounds i64*, i64** %29, i64 %30
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i64, i64* @MacroLvl, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* @MacroLvl, align 8
  br label %20

38:                                               ; preds = %28
  %39 = load i64**, i64*** @KeyMacro, align 8
  %40 = load i64, i64* @MacroLvl, align 8
  %41 = getelementptr inbounds i64*, i64** %39, i64 %40
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %41, align 8
  %44 = load i64, i64* %42, align 8
  %45 = load i8, i8* @CHAR, align 1
  %46 = sext i8 %45 to i64
  %47 = and i64 %44, %46
  %48 = trunc i64 %47 to i8
  %49 = load i8*, i8** %3, align 8
  store i8 %48, i8* %49, align 1
  %50 = load i64**, i64*** @KeyMacro, align 8
  %51 = load i64, i64* @MacroLvl, align 8
  %52 = getelementptr inbounds i64*, i64** %50, i64 %51
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %38
  %57 = load i64, i64* @MacroLvl, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* @MacroLvl, align 8
  br label %59

59:                                               ; preds = %56, %38
  store i32 1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %123

60:                                               ; preds = %26
  %61 = call i64 (...) @Rawmode()
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %123

64:                                               ; preds = %60
  store i64 0, i64* %8, align 8
  br label %65

65:                                               ; preds = %110, %64
  br label %66

66:                                               ; preds = %83, %65
  %67 = load i32, i32* @SHIN, align 4
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds i8, i8* %13, i64 %68
  %70 = call i32 @xread(i32 %67, i8* %69, i32 1)
  store i32 %70, i32* %4, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @SHIN, align 4
  %77 = load i32, i32* @errno, align 4
  %78 = call i32 @fixio(i32 %76, i32 %77)
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 1, i32* %5, align 4
  br label %83

81:                                               ; preds = %75, %72
  %82 = load i8*, i8** %3, align 8
  store i8 0, i8* %82, align 1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %123

83:                                               ; preds = %80
  br label %66

84:                                               ; preds = %66
  %85 = load i64, i64* %8, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load i64*, i64** @CurrentKeyMap, align 8
  %89 = load i8, i8* %13, align 16
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @F_XKEY, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i8, i8* %13, align 16
  %97 = load i8*, i8** %3, align 8
  store i8 %96, i8* %97, align 1
  br label %120

98:                                               ; preds = %87, %84
  %99 = load i64, i64* %8, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %8, align 8
  %101 = load i8*, i8** %3, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @normal_mbtowc(i8* %101, i8* %13, i64 %102)
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %119

105:                                              ; preds = %98
  %106 = call i32 (...) @reset_mbtowc()
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* @MB_CUR_MAX, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %65

111:                                              ; preds = %105
  %112 = load i8, i8* %13, align 16
  %113 = zext i8 %112 to i32
  %114 = load i8, i8* @INVALID_BYTE, align 1
  %115 = zext i8 %114 to i32
  %116 = or i32 %113, %115
  %117 = trunc i32 %116 to i8
  %118 = load i8*, i8** %3, align 8
  store i8 %117, i8* %118, align 1
  br label %119

119:                                              ; preds = %111, %98
  br label %120

120:                                              ; preds = %119, %95
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %4, align 4
  store i32 %122, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %123

123:                                              ; preds = %121, %81, %63, %59, %16
  %124 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Load_input_line(...) #2

declare dso_local i64 @Rawmode(...) #2

declare dso_local i32 @xread(i32, i8*, i32) #2

declare dso_local i32 @fixio(i32, i32) #2

declare dso_local i32 @normal_mbtowc(i8*, i8*, i64) #2

declare dso_local i32 @reset_mbtowc(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
