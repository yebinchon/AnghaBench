; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_edit_read_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_edit_read_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@edit_read_key.esc = internal global i32 -1, align 4
@edit_read_key.esc_buf = internal global [7 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@EDIT_KEY_EOF = common dso_local global i32 0, align 4
@EDIT_KEY_NONE = common dso_local global i32 0, align 4
@EDIT_KEY_CTRL_A = common dso_local global i32 0, align 4
@EDIT_KEY_CTRL_B = common dso_local global i32 0, align 4
@EDIT_KEY_CTRL_D = common dso_local global i32 0, align 4
@EDIT_KEY_CTRL_E = common dso_local global i32 0, align 4
@EDIT_KEY_CTRL_F = common dso_local global i32 0, align 4
@EDIT_KEY_CTRL_G = common dso_local global i32 0, align 4
@EDIT_KEY_CTRL_H = common dso_local global i32 0, align 4
@EDIT_KEY_TAB = common dso_local global i32 0, align 4
@EDIT_KEY_CTRL_J = common dso_local global i32 0, align 4
@EDIT_KEY_ENTER = common dso_local global i32 0, align 4
@EDIT_KEY_CTRL_K = common dso_local global i32 0, align 4
@EDIT_KEY_CTRL_L = common dso_local global i32 0, align 4
@EDIT_KEY_CTRL_N = common dso_local global i32 0, align 4
@EDIT_KEY_CTRL_O = common dso_local global i32 0, align 4
@EDIT_KEY_CTRL_P = common dso_local global i32 0, align 4
@EDIT_KEY_CTRL_R = common dso_local global i32 0, align 4
@EDIT_KEY_CTRL_T = common dso_local global i32 0, align 4
@EDIT_KEY_CTRL_U = common dso_local global i32 0, align 4
@EDIT_KEY_CTRL_V = common dso_local global i32 0, align 4
@EDIT_KEY_CTRL_W = common dso_local global i32 0, align 4
@EDIT_KEY_BACKSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @edit_read_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edit_read_key(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i64 0, i64 0
  %9 = call i32 @read(i32 %7, i8* %8, i32 1)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i32, i32* %6, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @EDIT_KEY_EOF, align 4
  store i32 %18, i32* %2, align 4
  br label %141

19:                                               ; preds = %14
  %20 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i64 0, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @edit_read_key.esc, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 27
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  store i32 0, i32* @edit_read_key.esc, align 4
  %29 = load i32, i32* @EDIT_KEY_NONE, align 4
  store i32 %29, i32* %2, align 4
  br label %141

30:                                               ; preds = %25
  %31 = load i32, i32* @edit_read_key.esc, align 4
  %32 = icmp eq i32 %31, 6
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @show_esc_buf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @edit_read_key.esc_buf, i64 0, i64 0), i32 %34, i32 0)
  store i32 -1, i32* @edit_read_key.esc, align 4
  br label %46

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = trunc i32 %37 to i8
  %39 = load i32, i32* @edit_read_key.esc, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @edit_read_key.esc, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds [7 x i8], [7 x i8]* @edit_read_key.esc_buf, i64 0, i64 %41
  store i8 %38, i8* %42, align 1
  %43 = load i32, i32* @edit_read_key.esc, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [7 x i8], [7 x i8]* @edit_read_key.esc_buf, i64 0, i64 %44
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %36, %33
  br label %47

47:                                               ; preds = %46, %19
  %48 = load i32, i32* @edit_read_key.esc, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @edit_read_key.esc_buf, i64 0, i64 0), align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 91
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @edit_read_key.esc_buf, i64 0, i64 0), align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 79
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @show_esc_buf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @edit_read_key.esc_buf, i64 0, i64 0), i32 %59, i32 1)
  store i32 -1, i32* @edit_read_key.esc, align 4
  %61 = load i32, i32* @EDIT_KEY_NONE, align 4
  store i32 %61, i32* %2, align 4
  br label %141

62:                                               ; preds = %54, %50
  %63 = load i32, i32* @EDIT_KEY_NONE, align 4
  store i32 %63, i32* %2, align 4
  br label %141

64:                                               ; preds = %47
  %65 = load i32, i32* @edit_read_key.esc, align 4
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %93

67:                                               ; preds = %64
  %68 = load i32, i32* %4, align 4
  %69 = icmp sge i32 %68, 48
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  %72 = icmp sle i32 %71, 57
  br i1 %72, label %76, label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 59
  br i1 %75, label %76, label %78

76:                                               ; preds = %73, %70
  %77 = load i32, i32* @EDIT_KEY_NONE, align 4
  store i32 %77, i32* %2, align 4
  br label %141

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %79, 126
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = icmp sge i32 %82, 65
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = icmp sle i32 %85, 90
  br i1 %86, label %87, label %89

87:                                               ; preds = %84, %78
  store i32 -1, i32* @edit_read_key.esc, align 4
  %88 = call i32 @esc_seq_to_key(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @edit_read_key.esc_buf, i64 0, i64 0))
  store i32 %88, i32* %2, align 4
  br label %141

89:                                               ; preds = %84, %81
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @show_esc_buf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @edit_read_key.esc_buf, i64 0, i64 0), i32 %90, i32 2)
  store i32 -1, i32* @edit_read_key.esc, align 4
  %92 = load i32, i32* @EDIT_KEY_NONE, align 4
  store i32 %92, i32* %2, align 4
  br label %141

93:                                               ; preds = %64
  %94 = load i32, i32* %4, align 4
  switch i32 %94, label %139 [
    i32 1, label %95
    i32 2, label %97
    i32 4, label %99
    i32 5, label %101
    i32 6, label %103
    i32 7, label %105
    i32 8, label %107
    i32 9, label %109
    i32 10, label %111
    i32 13, label %113
    i32 11, label %115
    i32 12, label %117
    i32 14, label %119
    i32 15, label %121
    i32 16, label %123
    i32 18, label %125
    i32 20, label %127
    i32 21, label %129
    i32 22, label %131
    i32 23, label %133
    i32 27, label %135
    i32 127, label %137
  ]

95:                                               ; preds = %93
  %96 = load i32, i32* @EDIT_KEY_CTRL_A, align 4
  store i32 %96, i32* %2, align 4
  br label %141

97:                                               ; preds = %93
  %98 = load i32, i32* @EDIT_KEY_CTRL_B, align 4
  store i32 %98, i32* %2, align 4
  br label %141

99:                                               ; preds = %93
  %100 = load i32, i32* @EDIT_KEY_CTRL_D, align 4
  store i32 %100, i32* %2, align 4
  br label %141

101:                                              ; preds = %93
  %102 = load i32, i32* @EDIT_KEY_CTRL_E, align 4
  store i32 %102, i32* %2, align 4
  br label %141

103:                                              ; preds = %93
  %104 = load i32, i32* @EDIT_KEY_CTRL_F, align 4
  store i32 %104, i32* %2, align 4
  br label %141

105:                                              ; preds = %93
  %106 = load i32, i32* @EDIT_KEY_CTRL_G, align 4
  store i32 %106, i32* %2, align 4
  br label %141

107:                                              ; preds = %93
  %108 = load i32, i32* @EDIT_KEY_CTRL_H, align 4
  store i32 %108, i32* %2, align 4
  br label %141

109:                                              ; preds = %93
  %110 = load i32, i32* @EDIT_KEY_TAB, align 4
  store i32 %110, i32* %2, align 4
  br label %141

111:                                              ; preds = %93
  %112 = load i32, i32* @EDIT_KEY_CTRL_J, align 4
  store i32 %112, i32* %2, align 4
  br label %141

113:                                              ; preds = %93
  %114 = load i32, i32* @EDIT_KEY_ENTER, align 4
  store i32 %114, i32* %2, align 4
  br label %141

115:                                              ; preds = %93
  %116 = load i32, i32* @EDIT_KEY_CTRL_K, align 4
  store i32 %116, i32* %2, align 4
  br label %141

117:                                              ; preds = %93
  %118 = load i32, i32* @EDIT_KEY_CTRL_L, align 4
  store i32 %118, i32* %2, align 4
  br label %141

119:                                              ; preds = %93
  %120 = load i32, i32* @EDIT_KEY_CTRL_N, align 4
  store i32 %120, i32* %2, align 4
  br label %141

121:                                              ; preds = %93
  %122 = load i32, i32* @EDIT_KEY_CTRL_O, align 4
  store i32 %122, i32* %2, align 4
  br label %141

123:                                              ; preds = %93
  %124 = load i32, i32* @EDIT_KEY_CTRL_P, align 4
  store i32 %124, i32* %2, align 4
  br label %141

125:                                              ; preds = %93
  %126 = load i32, i32* @EDIT_KEY_CTRL_R, align 4
  store i32 %126, i32* %2, align 4
  br label %141

127:                                              ; preds = %93
  %128 = load i32, i32* @EDIT_KEY_CTRL_T, align 4
  store i32 %128, i32* %2, align 4
  br label %141

129:                                              ; preds = %93
  %130 = load i32, i32* @EDIT_KEY_CTRL_U, align 4
  store i32 %130, i32* %2, align 4
  br label %141

131:                                              ; preds = %93
  %132 = load i32, i32* @EDIT_KEY_CTRL_V, align 4
  store i32 %132, i32* %2, align 4
  br label %141

133:                                              ; preds = %93
  %134 = load i32, i32* @EDIT_KEY_CTRL_W, align 4
  store i32 %134, i32* %2, align 4
  br label %141

135:                                              ; preds = %93
  store i32 0, i32* @edit_read_key.esc, align 4
  %136 = load i32, i32* @EDIT_KEY_NONE, align 4
  store i32 %136, i32* %2, align 4
  br label %141

137:                                              ; preds = %93
  %138 = load i32, i32* @EDIT_KEY_BACKSPACE, align 4
  store i32 %138, i32* %2, align 4
  br label %141

139:                                              ; preds = %93
  %140 = load i32, i32* %4, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %137, %135, %133, %131, %129, %127, %125, %123, %121, %119, %117, %115, %113, %111, %109, %107, %105, %103, %101, %99, %97, %95, %89, %87, %76, %62, %58, %28, %17
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @show_esc_buf(i8*, i32, i32) #1

declare dso_local i32 @esc_seq_to_key(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
