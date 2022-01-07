; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_p_bracket.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_p_bracket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"[:<:]]\00", align 1
@OBOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"[:>:]]\00", align 1
@OEOW = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@REG_EBRACK = common dso_local global i32 0, align 4
@REG_NEWLINE = common dso_local global i32 0, align 4
@OUT = common dso_local global i32 0, align 4
@OANYOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*)* @p_bracket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_bracket(%struct.parse* %0) #0 {
  %2 = alloca %struct.parse*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %2, align 8
  %5 = load %struct.parse*, %struct.parse** %2, align 8
  %6 = getelementptr inbounds %struct.parse, %struct.parse* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 5
  %9 = load %struct.parse*, %struct.parse** %2, align 8
  %10 = getelementptr inbounds %struct.parse, %struct.parse* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.parse*, %struct.parse** %2, align 8
  %15 = getelementptr inbounds %struct.parse, %struct.parse* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @strncmp(i64 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @OBOW, align 4
  %21 = call i32 @EMIT(i32 %20, i32 0)
  %22 = call i32 @NEXTn(i32 6)
  br label %160

23:                                               ; preds = %13, %1
  %24 = load %struct.parse*, %struct.parse** %2, align 8
  %25 = getelementptr inbounds %struct.parse, %struct.parse* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 5
  %28 = load %struct.parse*, %struct.parse** %2, align 8
  %29 = getelementptr inbounds %struct.parse, %struct.parse* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.parse*, %struct.parse** %2, align 8
  %34 = getelementptr inbounds %struct.parse, %struct.parse* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @strncmp(i64 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @OEOW, align 4
  %40 = call i32 @EMIT(i32 %39, i32 0)
  %41 = call i32 @NEXTn(i32 6)
  br label %160

42:                                               ; preds = %32, %23
  %43 = load %struct.parse*, %struct.parse** %2, align 8
  %44 = call %struct.TYPE_9__* @allocset(%struct.parse* %43)
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %3, align 8
  %45 = icmp eq %struct.TYPE_9__* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %160

47:                                               ; preds = %42
  %48 = load %struct.parse*, %struct.parse** %2, align 8
  %49 = getelementptr inbounds %struct.parse, %struct.parse* %48, i32 0, i32 3
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @REG_ICASE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %47
  %60 = call i64 @EAT(i8 signext 94)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = call i64 @EAT(i8 signext 93)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.parse*, %struct.parse** %2, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = call i32 @CHadd(%struct.parse* %69, %struct.TYPE_9__* %70, i8 signext 93)
  br label %80

72:                                               ; preds = %65
  %73 = call i64 @EAT(i8 signext 45)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.parse*, %struct.parse** %2, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = call i32 @CHadd(%struct.parse* %76, %struct.TYPE_9__* %77, i8 signext 45)
  br label %79

79:                                               ; preds = %75, %72
  br label %80

80:                                               ; preds = %79, %68
  br label %81

81:                                               ; preds = %94, %80
  %82 = call i64 (...) @MORE()
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = call signext i8 (...) @PEEK()
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 93
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = call i32 @SEETWO(i8 signext 45, i8 signext 93)
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  br label %92

92:                                               ; preds = %88, %84, %81
  %93 = phi i1 [ false, %84 ], [ false, %81 ], [ %91, %88 ]
  br i1 %93, label %94, label %98

94:                                               ; preds = %92
  %95 = load %struct.parse*, %struct.parse** %2, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = call i32 @p_b_term(%struct.parse* %95, %struct.TYPE_9__* %96)
  br label %81

98:                                               ; preds = %92
  %99 = call i64 @EAT(i8 signext 45)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load %struct.parse*, %struct.parse** %2, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = call i32 @CHadd(%struct.parse* %102, %struct.TYPE_9__* %103, i8 signext 45)
  br label %105

105:                                              ; preds = %101, %98
  %106 = load i32, i32* @REG_EBRACK, align 4
  %107 = call i32 @MUSTEAT(i8 signext 93, i32 %106)
  %108 = load %struct.parse*, %struct.parse** %2, align 8
  %109 = getelementptr inbounds %struct.parse, %struct.parse* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %160

113:                                              ; preds = %105
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %113
  %119 = load %struct.parse*, %struct.parse** %2, align 8
  %120 = getelementptr inbounds %struct.parse, %struct.parse* %119, i32 0, i32 3
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @REG_NEWLINE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %118
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, 4
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %127, %118, %113
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %136 = call i32 @singleton(%struct.TYPE_9__* %135)
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* @OUT, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load %struct.parse*, %struct.parse** %2, align 8
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @ordinary(%struct.parse* %140, i32 %141)
  %143 = load %struct.parse*, %struct.parse** %2, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %145 = call i32 @freeset(%struct.parse* %143, %struct.TYPE_9__* %144)
  br label %160

146:                                              ; preds = %134
  %147 = load i32, i32* @OANYOF, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %149 = load %struct.parse*, %struct.parse** %2, align 8
  %150 = getelementptr inbounds %struct.parse, %struct.parse* %149, i32 0, i32 3
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = ptrtoint %struct.TYPE_9__* %148 to i64
  %155 = ptrtoint %struct.TYPE_9__* %153 to i64
  %156 = sub i64 %154, %155
  %157 = sdiv exact i64 %156, 16
  %158 = trunc i64 %157 to i32
  %159 = call i32 @EMIT(i32 %147, i32 %158)
  br label %160

160:                                              ; preds = %19, %38, %46, %112, %146, %139
  ret void
}

declare dso_local i64 @strncmp(i64, i8*, i32) #1

declare dso_local i32 @EMIT(i32, i32) #1

declare dso_local i32 @NEXTn(i32) #1

declare dso_local %struct.TYPE_9__* @allocset(%struct.parse*) #1

declare dso_local i64 @EAT(i8 signext) #1

declare dso_local i32 @CHadd(%struct.parse*, %struct.TYPE_9__*, i8 signext) #1

declare dso_local i64 @MORE(...) #1

declare dso_local signext i8 @PEEK(...) #1

declare dso_local i32 @SEETWO(i8 signext, i8 signext) #1

declare dso_local i32 @p_b_term(%struct.parse*, %struct.TYPE_9__*) #1

declare dso_local i32 @MUSTEAT(i8 signext, i32) #1

declare dso_local i32 @singleton(%struct.TYPE_9__*) #1

declare dso_local i32 @ordinary(%struct.parse*, i32) #1

declare dso_local i32 @freeset(%struct.parse*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
