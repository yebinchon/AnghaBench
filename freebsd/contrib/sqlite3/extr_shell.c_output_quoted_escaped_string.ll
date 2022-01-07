; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_output_quoted_escaped_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_output_quoted_escaped_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"replace(\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\\012\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\\015\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c",'%s',char(13))\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c",'%s',char(10))\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @output_quoted_escaped_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_quoted_escaped_string(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [20 x i8], align 16
  %12 = alloca [20 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @setBinaryMode(i32* %13, i32 1)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %38, %2
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %6, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load i8, i8* %6, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 39
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i8, i8* %6, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 10
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i8, i8* %6, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 13
  br label %35

35:                                               ; preds = %31, %27, %23, %15
  %36 = phi i1 [ false, %27 ], [ false, %23 ], [ false, %15 ], [ %34, %31 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %15

41:                                               ; preds = %35
  %42 = load i8, i8* %6, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32*, i32** %3, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 (i32*, i8*, ...) @utf8_printf(i32* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %47)
  br label %197

49:                                               ; preds = %41
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %80, %49
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %50
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %65, %57
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 13
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %76, %68
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %50

83:                                               ; preds = %50
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 (i32*, i8*, ...) @raw_printf(i32* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %91 = call i8* @unused_string(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  store i8* %91, i8** %7, align 8
  br label %92

92:                                               ; preds = %86, %83
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 (i32*, i8*, ...) @raw_printf(i32* %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %100 = call i8* @unused_string(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %99)
  store i8* %100, i8** %8, align 8
  br label %101

101:                                              ; preds = %95, %92
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 (i32*, i8*, ...) @raw_printf(i32* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %104

104:                                              ; preds = %176, %172, %158, %101
  %105 = load i8*, i8** %4, align 8
  %106 = load i8, i8* %105, align 1
  %107 = icmp ne i8 %106, 0
  br i1 %107, label %108, label %180

108:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %132, %108
  %110 = load i8*, i8** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  store i8 %114, i8* %6, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %109
  %118 = load i8, i8* %6, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 10
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load i8, i8* %6, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 13
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i8, i8* %6, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 39
  br label %129

129:                                              ; preds = %125, %121, %117, %109
  %130 = phi i1 [ false, %121 ], [ false, %117 ], [ false, %109 ], [ %128, %125 ]
  br i1 %130, label %131, label %135

131:                                              ; preds = %129
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %109

135:                                              ; preds = %129
  %136 = load i8, i8* %6, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 39
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %139, %135
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %142
  %146 = load i32*, i32** %3, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load i8*, i8** %4, align 8
  %149 = call i32 (i32*, i8*, ...) @utf8_printf(i32* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %147, i8* %148)
  %150 = load i32, i32* %5, align 4
  %151 = load i8*, i8** %4, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  store i8* %153, i8** %4, align 8
  br label %154

154:                                              ; preds = %145, %142
  %155 = load i8, i8* %6, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 39
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32*, i32** %3, align 8
  %160 = call i32 (i32*, i8*, ...) @raw_printf(i32* %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %104

161:                                              ; preds = %154
  %162 = load i8, i8* %6, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %180

166:                                              ; preds = %161
  %167 = load i8*, i8** %4, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %4, align 8
  %169 = load i8, i8* %6, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 10
  br i1 %171, label %172, label %176

172:                                              ; preds = %166
  %173 = load i32*, i32** %3, align 8
  %174 = load i8*, i8** %7, align 8
  %175 = call i32 (i32*, i8*, ...) @raw_printf(i32* %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %174)
  br label %104

176:                                              ; preds = %166
  %177 = load i32*, i32** %3, align 8
  %178 = load i8*, i8** %8, align 8
  %179 = call i32 (i32*, i8*, ...) @raw_printf(i32* %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %178)
  br label %104

180:                                              ; preds = %165, %104
  %181 = load i32*, i32** %3, align 8
  %182 = call i32 (i32*, i8*, ...) @raw_printf(i32* %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %183 = load i32, i32* %10, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i32*, i32** %3, align 8
  %187 = load i8*, i8** %8, align 8
  %188 = call i32 (i32*, i8*, ...) @raw_printf(i32* %186, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %187)
  br label %189

189:                                              ; preds = %185, %180
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load i32*, i32** %3, align 8
  %194 = load i8*, i8** %7, align 8
  %195 = call i32 (i32*, i8*, ...) @raw_printf(i32* %193, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %194)
  br label %196

196:                                              ; preds = %192, %189
  br label %197

197:                                              ; preds = %196, %45
  %198 = load i32*, i32** %3, align 8
  %199 = call i32 @setTextMode(i32* %198, i32 1)
  ret void
}

declare dso_local i32 @setBinaryMode(i32*, i32) #1

declare dso_local i32 @utf8_printf(i32*, i8*, ...) #1

declare dso_local i32 @raw_printf(i32*, i8*, ...) #1

declare dso_local i8* @unused_string(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @setTextMode(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
