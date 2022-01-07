; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_wpa_config_get_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_wpa_config_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Long line in configuration file truncated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32*, i32*, i8**)* @wpa_config_get_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wpa_config_get_line(i8* %0, i32 %1, i32* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  br label %15

15:                                               ; preds = %143, %76, %5
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = call i64 @fgets(i8* %16, i32 %17, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %152

21:                                               ; preds = %15
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  store i8 0, i8* %29, align 1
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @newline_terminated(i8* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* @MSG_INFO, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @skip_line_end(i32* %37)
  br label %39

39:                                               ; preds = %34, %21
  %40 = load i8*, i8** %7, align 8
  store i8* %40, i8** %12, align 8
  br label %41

41:                                               ; preds = %58, %39
  %42 = load i8*, i8** %12, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 32
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %12, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 9
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %12, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 13
  br label %56

56:                                               ; preds = %51, %46, %41
  %57 = phi i1 [ true, %46 ], [ true, %41 ], [ %55, %51 ]
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = load i8*, i8** %12, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %12, align 8
  br label %41

61:                                               ; preds = %56
  %62 = load i8*, i8** %12, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 35
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** %12, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 10
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %12, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %66, %61
  br label %15

77:                                               ; preds = %71
  %78 = load i8*, i8** %12, align 8
  %79 = call i8* @os_strchr(i8* %78, i8 signext 34)
  store i8* %79, i8** %14, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i8*, i8** %14, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = call i8* @os_strrchr(i8* %84, i8 signext 34)
  store i8* %85, i8** %14, align 8
  br label %86

86:                                               ; preds = %82, %77
  %87 = load i8*, i8** %14, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load i8*, i8** %12, align 8
  store i8* %90, i8** %14, align 8
  br label %91

91:                                               ; preds = %89, %86
  %92 = load i8*, i8** %14, align 8
  %93 = call i8* @os_strchr(i8* %92, i8 signext 35)
  store i8* %93, i8** %13, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i8*, i8** %13, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 -1
  store i8* %98, i8** %13, align 8
  store i8 0, i8* %97, align 1
  br label %106

99:                                               ; preds = %91
  %100 = load i8*, i8** %12, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = call i32 @os_strlen(i8* %101)
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  %105 = getelementptr inbounds i8, i8* %104, i64 -1
  store i8* %105, i8** %13, align 8
  br label %106

106:                                              ; preds = %99, %96
  br label %107

107:                                              ; preds = %135, %106
  %108 = load i8*, i8** %13, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = icmp ugt i8* %108, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %107
  %112 = load i8*, i8** %13, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 10
  br i1 %115, label %131, label %116

116:                                              ; preds = %111
  %117 = load i8*, i8** %13, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 32
  br i1 %120, label %131, label %121

121:                                              ; preds = %116
  %122 = load i8*, i8** %13, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 9
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load i8*, i8** %13, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 13
  br label %131

131:                                              ; preds = %126, %121, %116, %111
  %132 = phi i1 [ true, %121 ], [ true, %116 ], [ true, %111 ], [ %130, %126 ]
  br label %133

133:                                              ; preds = %131, %107
  %134 = phi i1 [ false, %107 ], [ %132, %131 ]
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = load i8*, i8** %13, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 -1
  store i8* %137, i8** %13, align 8
  store i8 0, i8* %136, align 1
  br label %107

138:                                              ; preds = %133
  %139 = load i8*, i8** %12, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %15

144:                                              ; preds = %138
  %145 = load i8**, i8*** %11, align 8
  %146 = icmp ne i8** %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i8*, i8** %12, align 8
  %149 = load i8**, i8*** %11, align 8
  store i8* %148, i8** %149, align 8
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i8*, i8** %12, align 8
  store i8* %151, i8** %6, align 8
  br label %158

152:                                              ; preds = %15
  %153 = load i8**, i8*** %11, align 8
  %154 = icmp ne i8** %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i8**, i8*** %11, align 8
  store i8* null, i8** %156, align 8
  br label %157

157:                                              ; preds = %155, %152
  store i8* null, i8** %6, align 8
  br label %158

158:                                              ; preds = %157, %150
  %159 = load i8*, i8** %6, align 8
  ret i8* %159
}

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @newline_terminated(i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @skip_line_end(i32*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i8* @os_strrchr(i8*, i8 signext) #1

declare dso_local i32 @os_strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
