; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_parse_memsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_parse_memsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"not a size: '%s'\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unknown size specifier: '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg_parse_memsize(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 1, i64* %7, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @log_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 0, i32* %3, align 4
  br label %161

17:                                               ; preds = %10
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @isalldigit(i8* %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @atol(i8* %23)
  %25 = load i64*, i64** %5, align 8
  store i64 %24, i64* %25, align 8
  store i32 1, i32* %3, align 4
  br label %161

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i64, i64* %6, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub i64 %32, 1
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 32
  br label %38

38:                                               ; preds = %30, %27
  %39 = phi i1 [ false, %27 ], [ %37, %30 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %6, align 8
  br label %27

43:                                               ; preds = %38
  %44 = load i64, i64* %6, align 8
  %45 = icmp ugt i64 %44, 1
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %6, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 98
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %6, align 8
  br label %72

57:                                               ; preds = %46, %43
  %58 = load i64, i64* %6, align 8
  %59 = icmp ugt i64 %58, 1
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load i8*, i8** %4, align 8
  %62 = load i64, i64* %6, align 8
  %63 = sub i64 %62, 1
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, -1
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %68, %60, %57
  br label %72

72:                                               ; preds = %71, %54
  %73 = load i64, i64* %6, align 8
  %74 = icmp ugt i64 %73, 1
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i8*, i8** %4, align 8
  %77 = load i64, i64* %6, align 8
  %78 = sub i64 %77, 1
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = call signext i8 @tolower(i8 zeroext %80)
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 103
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  store i64 1073741824, i64* %7, align 8
  br label %129

85:                                               ; preds = %75, %72
  %86 = load i64, i64* %6, align 8
  %87 = icmp ugt i64 %86, 1
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load i8*, i8** %4, align 8
  %90 = load i64, i64* %6, align 8
  %91 = sub i64 %90, 1
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = call signext i8 @tolower(i8 zeroext %93)
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 109
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  store i64 1048576, i64* %7, align 8
  br label %128

98:                                               ; preds = %88, %85
  %99 = load i64, i64* %6, align 8
  %100 = icmp ugt i64 %99, 1
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load i8*, i8** %4, align 8
  %103 = load i64, i64* %6, align 8
  %104 = sub i64 %103, 1
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = call signext i8 @tolower(i8 zeroext %106)
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 107
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  store i64 1024, i64* %7, align 8
  br label %127

111:                                              ; preds = %101, %98
  %112 = load i64, i64* %6, align 8
  %113 = icmp ugt i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i8*, i8** %4, align 8
  %116 = load i64, i64* %6, align 8
  %117 = sub i64 %116, 1
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = call i64 @isdigit(i8 zeroext %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i64 1, i64* %7, align 8
  br label %126

123:                                              ; preds = %114, %111
  %124 = load i8*, i8** %4, align 8
  %125 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %124)
  store i32 0, i32* %3, align 4
  br label %161

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %126, %110
  br label %128

128:                                              ; preds = %127, %97
  br label %129

129:                                              ; preds = %128, %84
  br label %130

130:                                              ; preds = %143, %129
  %131 = load i64, i64* %6, align 8
  %132 = icmp ugt i64 %131, 1
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load i8*, i8** %4, align 8
  %135 = load i64, i64* %6, align 8
  %136 = sub i64 %135, 2
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 32
  br label %141

141:                                              ; preds = %133, %130
  %142 = phi i1 [ false, %130 ], [ %140, %133 ]
  br i1 %142, label %143, label %146

143:                                              ; preds = %141
  %144 = load i64, i64* %6, align 8
  %145 = add i64 %144, -1
  store i64 %145, i64* %6, align 8
  br label %130

146:                                              ; preds = %141
  %147 = load i8*, i8** %4, align 8
  %148 = load i64, i64* %6, align 8
  %149 = sub i64 %148, 1
  %150 = call i64 @isalldigit(i8* %147, i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %146
  %153 = load i8*, i8** %4, align 8
  %154 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %153)
  store i32 0, i32* %3, align 4
  br label %161

155:                                              ; preds = %146
  %156 = load i8*, i8** %4, align 8
  %157 = call i64 @atol(i8* %156)
  %158 = load i64, i64* %7, align 8
  %159 = mul i64 %157, %158
  %160 = load i64*, i64** %5, align 8
  store i64 %159, i64* %160, align 8
  store i32 1, i32* %3, align 4
  br label %161

161:                                              ; preds = %155, %152, %123, %22, %14
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @log_err(i8*, i8*) #1

declare dso_local i64 @isalldigit(i8*, i64) #1

declare dso_local i64 @atol(i8*) #1

declare dso_local signext i8 @tolower(i8 zeroext) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
