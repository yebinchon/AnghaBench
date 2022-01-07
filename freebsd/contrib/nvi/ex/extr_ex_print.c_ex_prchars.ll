; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_print.c_ex_prchars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_print.c_ex_prchars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32* }

@O_LIST = common dso_local global i32 0, align 4
@E_C_LIST = common dso_local global i32 0, align 4
@O_TABSTOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i64*, i64, i32, i32)* @ex_prchars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ex_prchars(%struct.TYPE_10__* %0, i32* %1, i64* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = load i32, i32* @O_LIST, align 4
  %21 = call i64 @O_ISSET(%struct.TYPE_10__* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @E_C_LIST, align 4
  %25 = call i32 @LF_SET(i32 %24)
  br label %26

26:                                               ; preds = %23, %6
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %15, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = load i32, i32* @O_TABSTOP, align 4
  %32 = call i64 @O_VAL(%struct.TYPE_10__* %30, i32 %31)
  store i64 %32, i64* %18, align 8
  %33 = load i64*, i64** %9, align 8
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %16, align 8
  br label %35

35:                                               ; preds = %143, %26
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %10, align 8
  %38 = icmp ne i64 %36, 0
  br i1 %38, label %39, label %144

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %8, align 8
  %42 = load i32, i32* %40, align 4
  store i32 %42, i32* %13, align 4
  %43 = call i32 @L(i8 signext 9)
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %86

45:                                               ; preds = %39
  %46 = load i32, i32* @E_C_LIST, align 4
  %47 = call i32 @LF_ISSET(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %86, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %18, align 8
  %51 = load i64, i64* %16, align 8
  %52 = load i64, i64* %18, align 8
  %53 = urem i64 %51, %52
  %54 = sub i64 %50, %53
  store i64 %54, i64* %17, align 8
  br label %55

55:                                               ; preds = %82, %49
  %56 = load i64, i64* %16, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i64, i64* %17, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* %17, align 8
  %64 = icmp ne i64 %62, 0
  br label %65

65:                                               ; preds = %61, %55
  %66 = phi i1 [ false, %55 ], [ %64, %61 ]
  br i1 %66, label %67, label %85

67:                                               ; preds = %65
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %12, align 4
  br label %74

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 32, %73 ]
  %76 = call i32 @ex_printf(%struct.TYPE_10__* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = call i64 @INTERRUPTED(%struct.TYPE_10__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %145

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %16, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %16, align 8
  br label %55

85:                                               ; preds = %65
  br label %143

86:                                               ; preds = %45, %39
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i8* @KEY_NAME(%struct.TYPE_10__* %87, i32 %88)
  store i8* %89, i8** %14, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i64 @KEY_COL(%struct.TYPE_10__* %90, i32 %91)
  store i64 %92, i64* %17, align 8
  %93 = load i64, i64* %16, align 8
  %94 = load i64, i64* %17, align 8
  %95 = add i64 %93, %94
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ugt i64 %95, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %86
  store i64 0, i64* %16, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = call i32 @ex_puts(%struct.TYPE_10__* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %86
  %104 = load i64, i64* %17, align 8
  %105 = load i64, i64* %16, align 8
  %106 = add i64 %105, %104
  store i64 %106, i64* %16, align 8
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %103
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %111 = load i8*, i8** %14, align 8
  %112 = call i32 @ex_puts(%struct.TYPE_10__* %110, i8* %111)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = call i64 @INTERRUPTED(%struct.TYPE_10__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %145

117:                                              ; preds = %109
  br label %133

118:                                              ; preds = %103
  br label %119

119:                                              ; preds = %131, %118
  %120 = load i64, i64* %17, align 8
  %121 = add i64 %120, -1
  store i64 %121, i64* %17, align 8
  %122 = icmp ne i64 %120, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @ex_printf(%struct.TYPE_10__* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %125)
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %128 = call i64 @INTERRUPTED(%struct.TYPE_10__* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %145

131:                                              ; preds = %123
  br label %119

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132, %117
  %134 = load i64, i64* %16, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %134, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  store i64 0, i64* %16, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %141 = call i32 @ex_puts(%struct.TYPE_10__* %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %133
  br label %143

143:                                              ; preds = %142, %85
  br label %35

144:                                              ; preds = %35
  br label %145

145:                                              ; preds = %144, %130, %116, %80
  %146 = load i64, i64* %16, align 8
  %147 = load i64*, i64** %9, align 8
  store i64 %146, i64* %147, align 8
  ret i32 0
}

declare dso_local i64 @O_ISSET(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @LF_SET(i32) #1

declare dso_local i64 @O_VAL(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @L(i8 signext) #1

declare dso_local i32 @LF_ISSET(i32) #1

declare dso_local i32 @ex_printf(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i64 @INTERRUPTED(%struct.TYPE_10__*) #1

declare dso_local i8* @KEY_NAME(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @KEY_COL(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ex_puts(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
