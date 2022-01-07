; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib.c_solib_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib.c_solib_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@solib_absolute_prefix = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@solib_search_path = common dso_local global i32* null, align 8
@inferior_environ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"LD_LIBRARY_PATH\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solib_open(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 -1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %7, align 8
  br label %10

10:                                               ; preds = %23, %2
  %11 = load i8*, i8** %7, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @IS_DIR_SEPARATOR(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %10
  %22 = phi i1 [ false, %10 ], [ %20, %15 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %7, align 8
  br label %10

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %81

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @IS_ABSOLUTE_PATH(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** @solib_absolute_prefix, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %30
  %38 = load i8*, i8** %3, align 8
  store i8* %38, i8** %6, align 8
  br label %77

39:                                               ; preds = %34
  %40 = load i8*, i8** @solib_absolute_prefix, align 8
  %41 = call i32 @strlen(i8* %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %56, %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i8*, i8** @solib_absolute_prefix, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @IS_DIR_SEPARATOR(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %45, %42
  %55 = phi i1 [ false, %42 ], [ %53, %45 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %8, align 4
  br label %42

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = add nsw i32 %60, %62
  %64 = add nsw i32 %63, 1
  %65 = call i8* @alloca(i32 %64)
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** @solib_absolute_prefix, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @strncpy(i8* %66, i8* %67, i32 %68)
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @strcat(i8* %74, i8* %75)
  br label %77

77:                                               ; preds = %59, %37
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* @O_RDONLY, align 4
  %80 = call i32 @open(i8* %78, i32 %79, i32 0)
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %26
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %81
  %85 = load i8*, i8** %3, align 8
  %86 = call i64 @IS_ABSOLUTE_PATH(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %95, %88
  %90 = load i8*, i8** %3, align 8
  %91 = load i8, i8* %90, align 1
  %92 = call i64 @IS_DIR_SEPARATOR(i8 signext %91)
  %93 = icmp ne i64 %92, 0
  %94 = xor i1 %93, true
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i8*, i8** %3, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %3, align 8
  br label %89

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %104, %98
  %100 = load i8*, i8** %3, align 8
  %101 = load i8, i8* %100, align 1
  %102 = call i64 @IS_DIR_SEPARATOR(i8 signext %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i8*, i8** %3, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %3, align 8
  br label %99

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %84, %81
  %109 = load i32, i32* %5, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i32*, i32** @solib_search_path, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32*, i32** @solib_search_path, align 8
  %116 = load i8*, i8** %3, align 8
  %117 = load i32, i32* @O_RDONLY, align 4
  %118 = call i32 @openp(i32* %115, i32 1, i8* %116, i32 %117, i32 0, i8** %6)
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %114, %111, %108
  %120 = load i32, i32* %5, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load i32*, i32** @solib_search_path, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32*, i32** @solib_search_path, align 8
  %127 = load i8*, i8** %3, align 8
  %128 = call i8* @lbasename(i8* %127)
  %129 = load i32, i32* @O_RDONLY, align 4
  %130 = call i32 @openp(i32* %126, i32 1, i8* %128, i32 %129, i32 0, i8** %6)
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %125, %122, %119
  %132 = load i32, i32* %5, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i8*, i8** %3, align 8
  %136 = load i32, i32* @O_RDONLY, align 4
  %137 = call i32 @TARGET_SO_FIND_AND_OPEN_SOLIB(i8* %135, i32 %136, i8** %6)
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %134, %131
  %139 = load i32, i32* %5, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load i8*, i8** @solib_absolute_prefix, align 8
  %143 = icmp eq i8* %142, null
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i32, i32* @inferior_environ, align 4
  %146 = call i32* @get_in_environ(i32 %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %147 = load i8*, i8** %3, align 8
  %148 = load i32, i32* @O_RDONLY, align 4
  %149 = call i32 @openp(i32* %146, i32 1, i8* %147, i32 %148, i32 0, i8** %6)
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %144, %141, %138
  %151 = load i32, i32* %5, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load i8*, i8** @solib_absolute_prefix, align 8
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load i32, i32* @inferior_environ, align 4
  %158 = call i32* @get_in_environ(i32 %157, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %159 = load i8*, i8** %3, align 8
  %160 = load i32, i32* @O_RDONLY, align 4
  %161 = call i32 @openp(i32* %158, i32 1, i8* %159, i32 %160, i32 0, i8** %6)
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %156, %153, %150
  %163 = load i8**, i8*** %4, align 8
  %164 = icmp ne i8** %163, null
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = load i8*, i8** %6, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load i8*, i8** %6, align 8
  %170 = call i8* @xstrdup(i8* %169)
  %171 = load i8**, i8*** %4, align 8
  store i8* %170, i8** %171, align 8
  br label %172

172:                                              ; preds = %168, %165, %162
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i64 @IS_DIR_SEPARATOR(i8 signext) #1

declare dso_local i64 @IS_ABSOLUTE_PATH(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @openp(i32*, i32, i8*, i32, i32, i8**) #1

declare dso_local i8* @lbasename(i8*) #1

declare dso_local i32 @TARGET_SO_FIND_AND_OPEN_SOLIB(i8*, i32, i8**) #1

declare dso_local i32* @get_in_environ(i32, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
