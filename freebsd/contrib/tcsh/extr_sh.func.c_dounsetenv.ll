; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_dounsetenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_dounsetenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }

@STR_environ = common dso_local global i8** null, align 8
@xfree = common dso_local global i32 0, align 4
@STRNOREBIND = common dso_local global i32 0, align 4
@NoNLSRebind = common dso_local global i64 0, align 8
@MapsAreInited = common dso_local global i64 0, align 8
@NLSMapsAreInited = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@AsciiOnly = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@LC_COLLATE = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4
@LC_MESSAGES = common dso_local global i32 0, align 4
@MB_CUR_MAX = common dso_local global i32 0, align 4
@STRLSCOLORS = common dso_local global i32 0, align 4
@STRLS_COLORS = common dso_local global i32 0, align 4
@STRNLSPATH = common dso_local global i32 0, align 4
@STRSYSTYPE = common dso_local global i32 0, align 4
@STRtcshlang = common dso_local global i32 0, align 4
@dont_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dounsetenv(i8** %0, %struct.command* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %11 = load %struct.command*, %struct.command** %4, align 8
  %12 = call i32 @USE(%struct.command* %11)
  store i32 0, i32* %10, align 4
  %13 = load i8**, i8*** @STR_environ, align 8
  store i8** %13, i8*** %5, align 8
  br label %14

14:                                               ; preds = %46, %2
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %34, %18
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 61
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i1 [ false, %21 ], [ %30, %26 ]
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %21

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %43, %39
  br label %46

46:                                               ; preds = %45
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i32 1
  store i8** %48, i8*** %5, align 8
  br label %14

49:                                               ; preds = %14
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = call i8* @xmalloc(i32 %54)
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* @xfree, align 4
  %58 = call i32 @cleanup_push(i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %147, %49
  %60 = load i8**, i8*** %3, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %3, align 8
  %62 = icmp ne i8** %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i8**, i8*** %3, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ]
  br i1 %68, label %69, label %148

69:                                               ; preds = %67
  store i32 1, i32* %10, align 4
  br label %70

70:                                               ; preds = %146, %69
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %147

73:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  %74 = load i8**, i8*** @STR_environ, align 8
  store i8** %74, i8*** %5, align 8
  br label %75

75:                                               ; preds = %143, %73
  %76 = load i8**, i8*** %5, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %146

79:                                               ; preds = %75
  %80 = load i8*, i8** %8, align 8
  store i8* %80, i8** %7, align 8
  %81 = load i8**, i8*** %5, align 8
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %6, align 8
  br label %83

83:                                               ; preds = %96, %79
  %84 = load i8*, i8** %6, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i8*, i8** %6, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 61
  br label %93

93:                                               ; preds = %88, %83
  %94 = phi i1 [ false, %83 ], [ %92, %88 ]
  br i1 %94, label %95, label %102

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %6, align 8
  %99 = load i8, i8* %97, align 1
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %7, align 8
  store i8 %99, i8* %100, align 1
  br label %83

102:                                              ; preds = %93
  %103 = load i8*, i8** %7, align 8
  store i8 0, i8* %103, align 1
  %104 = load i8*, i8** %8, align 8
  %105 = load i8**, i8*** %3, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @Gmatch(i8* %104, i8* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %102
  br label %143

110:                                              ; preds = %102
  store i32 1, i32* %10, align 4
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @Unsetenv(i8* %111)
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* @STRNOREBIND, align 4
  %115 = call i64 @eq(i8* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  store i64 0, i64* @NoNLSRebind, align 8
  store i64 0, i64* @MapsAreInited, align 8
  store i64 0, i64* @NLSMapsAreInited, align 8
  %118 = call i32 (...) @ed_InitMaps()
  br label %142

119:                                              ; preds = %110
  %120 = load i8*, i8** %8, align 8
  %121 = call i64 @islocale_var(i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %119
  %124 = call i32* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = call i32* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %128 = icmp eq i32* %127, null
  br label %129

129:                                              ; preds = %126, %123
  %130 = phi i1 [ false, %123 ], [ %128, %126 ]
  %131 = zext i1 %130 to i32
  store i32 %131, i32* @AsciiOnly, align 4
  store i64 0, i64* @NLSMapsAreInited, align 8
  %132 = call i32 (...) @ed_Init()
  %133 = load i64, i64* @MapsAreInited, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load i64, i64* @NLSMapsAreInited, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = call i32 (...) @ed_InitNLSMaps()
  br label %140

140:                                              ; preds = %138, %135, %129
  br label %141

141:                                              ; preds = %140, %119
  br label %142

142:                                              ; preds = %141, %117
  br label %146

143:                                              ; preds = %109
  %144 = load i8**, i8*** %5, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i32 1
  store i8** %145, i8*** %5, align 8
  br label %75

146:                                              ; preds = %142, %75
  br label %70

147:                                              ; preds = %70
  br label %59

148:                                              ; preds = %67
  %149 = load i8*, i8** %8, align 8
  %150 = call i32 @cleanup_until(i8* %149)
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @cleanup_push(i8*, i32) #1

declare dso_local i32 @Gmatch(i8*, i8*) #1

declare dso_local i32 @Unsetenv(i8*) #1

declare dso_local i64 @eq(i8*, i32) #1

declare dso_local i32 @ed_InitMaps(...) #1

declare dso_local i64 @islocale_var(i8*) #1

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @ed_Init(...) #1

declare dso_local i32 @ed_InitNLSMaps(...) #1

declare dso_local i32 @cleanup_until(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
