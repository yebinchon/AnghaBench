; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_atoascii.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_atoascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i64)* @atoascii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atoascii(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp eq i8* null, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i64, i64* %8, align 8
  %22 = icmp ult i64 0, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i8*, i8** %11, align 8
  store i8 0, i8* %24, align 1
  br label %25

25:                                               ; preds = %23, %20
  br label %149

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %136, %26
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %139

31:                                               ; preds = %27
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %12, align 1
  %34 = load i8, i8* %12, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 0, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %139

38:                                               ; preds = %31
  %39 = load i8, i8* %12, align 1
  %40 = sext i8 %39 to i32
  %41 = and i32 %40, 128
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %8, align 8
  %47 = icmp eq i64 0, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i8*, i8** %11, align 8
  store i8 0, i8* %49, align 1
  br label %149

50:                                               ; preds = %44
  %51 = load i8*, i8** %11, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %11, align 8
  store i8 77, i8* %51, align 1
  br label %53

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %8, align 8
  %57 = icmp eq i64 0, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i8*, i8** %11, align 8
  store i8 0, i8* %59, align 1
  br label %149

60:                                               ; preds = %54
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %11, align 8
  store i8 45, i8* %61, align 1
  br label %63

63:                                               ; preds = %60
  %64 = load i8, i8* %12, align 1
  %65 = sext i8 %64 to i32
  %66 = and i32 %65, 127
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %12, align 1
  br label %68

68:                                               ; preds = %63, %38
  %69 = load i8, i8* %12, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp slt i32 %70, 32
  br i1 %71, label %72, label %97

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, -1
  store i64 %75, i64* %8, align 8
  %76 = icmp eq i64 0, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i8*, i8** %11, align 8
  store i8 0, i8* %78, align 1
  br label %149

79:                                               ; preds = %73
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %11, align 8
  store i8 94, i8* %80, align 1
  br label %82

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, -1
  store i64 %85, i64* %8, align 8
  %86 = icmp eq i64 0, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i8*, i8** %11, align 8
  store i8 0, i8* %88, align 1
  br label %149

89:                                               ; preds = %83
  %90 = load i8, i8* %12, align 1
  %91 = sext i8 %90 to i32
  %92 = add nsw i32 %91, 64
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %11, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %11, align 8
  store i8 %93, i8* %94, align 1
  br label %96

96:                                               ; preds = %89
  br label %135

97:                                               ; preds = %68
  %98 = load i8, i8* %12, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 127, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %8, align 8
  %104 = add i64 %103, -1
  store i64 %104, i64* %8, align 8
  %105 = icmp eq i64 0, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i8*, i8** %11, align 8
  store i8 0, i8* %107, align 1
  br label %149

108:                                              ; preds = %102
  %109 = load i8*, i8** %11, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %11, align 8
  store i8 94, i8* %109, align 1
  br label %111

111:                                              ; preds = %108
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %8, align 8
  %114 = add i64 %113, -1
  store i64 %114, i64* %8, align 8
  %115 = icmp eq i64 0, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i8*, i8** %11, align 8
  store i8 0, i8* %117, align 1
  br label %149

118:                                              ; preds = %112
  %119 = load i8*, i8** %11, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %11, align 8
  store i8 63, i8* %119, align 1
  br label %121

121:                                              ; preds = %118
  br label %134

122:                                              ; preds = %97
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %8, align 8
  %125 = add i64 %124, -1
  store i64 %125, i64* %8, align 8
  %126 = icmp eq i64 0, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8
  store i8 0, i8* %128, align 1
  br label %149

129:                                              ; preds = %123
  %130 = load i8, i8* %12, align 1
  %131 = load i8*, i8** %11, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %11, align 8
  store i8 %130, i8* %131, align 1
  br label %133

133:                                              ; preds = %129
  br label %134

134:                                              ; preds = %133, %121
  br label %135

135:                                              ; preds = %134, %96
  br label %136

136:                                              ; preds = %135
  %137 = load i8*, i8** %9, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %9, align 8
  br label %27

139:                                              ; preds = %37, %27
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %8, align 8
  %142 = add i64 %141, -1
  store i64 %142, i64* %8, align 8
  %143 = icmp eq i64 0, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i8*, i8** %11, align 8
  store i8 0, i8* %145, align 1
  br label %149

146:                                              ; preds = %140
  %147 = load i8*, i8** %11, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %11, align 8
  store i8 0, i8* %147, align 1
  br label %149

149:                                              ; preds = %25, %48, %58, %77, %87, %106, %116, %127, %144, %146
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
