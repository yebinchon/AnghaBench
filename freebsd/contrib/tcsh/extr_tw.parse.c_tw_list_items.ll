; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_tw_list_items.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_tw_list_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRlistmax = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i64* null, align 8
@STRlistmaxrows = common dso_local global i32 0, align 4
@TW_JOB = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"items\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rows\00", align 1
@xfree = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"There are %d %s, list them anyway? [n/y] \00", align 1
@SHIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%c\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"Yy\00", align 1
@TW_SIGNAL = common dso_local global i32 0, align 4
@fcompare = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%S\00", align 1
@Tty_raw_mode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @tw_list_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw_list_items(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64**, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %199

20:                                               ; preds = %3
  %21 = load i32, i32* @STRlistmax, align 4
  %22 = call i64* @varval(i32 %21)
  store i64* %22, i64** %7, align 8
  %23 = load i64*, i64** @STRNULL, align 8
  %24 = icmp ne i64* %22, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %36, %25
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i64*, i64** %7, align 8
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @Isdigit(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %46

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 %37, 10
  %39 = sext i32 %38 to i64
  %40 = load i64*, i64** %7, align 8
  %41 = getelementptr inbounds i64, i64* %40, i32 1
  store i64* %41, i64** %7, align 8
  %42 = load i64, i64* %40, align 8
  %43 = add nsw i64 %39, %42
  %44 = sub nsw i64 %43, 48
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %8, align 4
  br label %26

46:                                               ; preds = %35, %26
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %8, align 4
  br label %59

58:                                               ; preds = %53, %49, %46
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %58, %56
  br label %60

60:                                               ; preds = %59, %20
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %117

63:                                               ; preds = %60
  %64 = load i32, i32* @STRlistmaxrows, align 4
  %65 = call i64* @varval(i32 %64)
  store i64* %65, i64** %7, align 8
  %66 = load i64*, i64** @STRNULL, align 8
  %67 = icmp ne i64* %65, %66
  br i1 %67, label %68, label %117

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %79, %68
  %70 = load i64*, i64** %7, align 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load i64*, i64** %7, align 8
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @Isdigit(i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  store i32 0, i32* %9, align 4
  br label %89

79:                                               ; preds = %73
  %80 = load i32, i32* %9, align 4
  %81 = mul nsw i32 %80, 10
  %82 = sext i32 %81 to i64
  %83 = load i64*, i64** %7, align 8
  %84 = getelementptr inbounds i64, i64* %83, i32 1
  store i64* %84, i64** %7, align 8
  %85 = load i64, i64* %83, align 8
  %86 = add nsw i64 %82, %85
  %87 = sub nsw i64 %86, 48
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %9, align 4
  br label %69

89:                                               ; preds = %78, %69
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @TW_JOB, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = call i64** (...) @tw_item_get()
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @TRUE, align 4
  %100 = call i32 @find_rows(i64** %97, i32 %98, i32 %99)
  store i32 %100, i32* %10, align 4
  br label %103

101:                                              ; preds = %92, %89
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %101, %96
  %104 = load i32, i32* %9, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %9, align 4
  br label %116

115:                                              ; preds = %110, %106, %103
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %115, %113
  br label %117

117:                                              ; preds = %116, %63, %60
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %156

123:                                              ; preds = %120, %117
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = call i8* @CGETS(i32 30, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %127, i8** %13, align 8
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %14, align 4
  br label %132

129:                                              ; preds = %123
  %130 = call i8* @CGETS(i32 30, i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %130, i8** %13, align 8
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i8*, i8** %13, align 8
  %134 = call i8* @strsave(i8* %133)
  store i8* %134, i8** %12, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = load i32, i32* @xfree, align 4
  %137 = call i32 @cleanup_push(i8* %135, i32 %136)
  %138 = call i8* @CGETS(i32 30, i32 7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %139 = load i32, i32* %14, align 4
  %140 = load i8*, i8** %12, align 8
  %141 = call i32 (i8*, i32, ...) @xprintf(i8* %138, i32 %139, i8* %140)
  %142 = load i8*, i8** %12, align 8
  %143 = call i32 @cleanup_until(i8* %142)
  %144 = call i32 (...) @flush()
  %145 = load i32, i32* @SHIN, align 4
  %146 = call i32 @xread(i32 %145, i8* %11, i32 1)
  %147 = load i8, i8* %11, align 1
  %148 = sext i8 %147 to i32
  %149 = call i32 (i8*, i32, ...) @xprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %148)
  %150 = call i8* @CGETS(i32 30, i32 13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %151 = load i8, i8* %11, align 1
  %152 = call i32* @strchr(i8* %150, i8 signext %151)
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %132
  br label %199

155:                                              ; preds = %132
  br label %156

156:                                              ; preds = %155, %120
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @TW_SIGNAL, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = call i64** (...) @tw_item_get()
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* @fcompare, align 4
  %164 = call i32 @qsort(i64** %161, i32 %162, i32 8, i32 %163)
  br label %165

165:                                              ; preds = %160, %156
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @TW_JOB, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load i64*, i64** @STRNULL, align 8
  %171 = call i64** (...) @tw_item_get()
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @TRUE, align 4
  %174 = call i32 @print_by_column(i64* %170, i64** %171, i32 %172, i32 %173)
  br label %199

175:                                              ; preds = %165
  %176 = call i64** (...) @tw_item_get()
  store i64** %176, i64*** %16, align 8
  store i32 0, i32* %15, align 4
  br label %177

177:                                              ; preds = %195, %175
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* %5, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %198

181:                                              ; preds = %177
  %182 = load i64**, i64*** %16, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64*, i64** %182, i64 %184
  %186 = load i64*, i64** %185, align 8
  %187 = ptrtoint i64* %186 to i32
  %188 = call i32 (i8*, i32, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %187)
  %189 = load i64, i64* @Tty_raw_mode, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %181
  %192 = call i32 @xputchar(i8 signext 13)
  br label %193

193:                                              ; preds = %191, %181
  %194 = call i32 @xputchar(i8 signext 10)
  br label %195

195:                                              ; preds = %193
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %15, align 4
  br label %177

198:                                              ; preds = %177
  br label %199

199:                                              ; preds = %19, %154, %198, %169
  ret void
}

declare dso_local i64* @varval(i32) #1

declare dso_local i32 @Isdigit(i64) #1

declare dso_local i32 @find_rows(i64**, i32, i32) #1

declare dso_local i64** @tw_item_get(...) #1

declare dso_local i8* @CGETS(i32, i32, i8*) #1

declare dso_local i8* @strsave(i8*) #1

declare dso_local i32 @cleanup_push(i8*, i32) #1

declare dso_local i32 @xprintf(i8*, i32, ...) #1

declare dso_local i32 @cleanup_until(i8*) #1

declare dso_local i32 @flush(...) #1

declare dso_local i32 @xread(i32, i8*, i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @qsort(i64**, i32, i32, i32) #1

declare dso_local i32 @print_by_column(i64*, i64**, i32, i32) #1

declare dso_local i32 @xputchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
