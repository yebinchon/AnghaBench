; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_showHelp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_showHelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-all\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@azHelp = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".%s*\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%%%s%%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @showHelp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @showHelp(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 48
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %22, %18, %12, %2
  %27 = load i8*, i8** %5, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %30

30:                                               ; preds = %29, %26
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %63, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i8**, i8*** @azHelp, align 8
  %34 = call i32 @ArraySize(i8** %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %31
  %37 = load i8**, i8*** @azHelp, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 46
  br i1 %45, label %52, label %46

46:                                               ; preds = %36
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %46, %36
  %53 = load i32*, i32** %4, align 8
  %54 = load i8**, i8*** @azHelp, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @utf8_printf(i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %52, %46
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %31

66:                                               ; preds = %31
  br label %217

67:                                               ; preds = %22
  %68 = load i8*, i8** %5, align 8
  %69 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  store i8* %69, i8** %9, align 8
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %97, %67
  %71 = load i32, i32* %6, align 4
  %72 = load i8**, i8*** @azHelp, align 8
  %73 = call i32 @ArraySize(i8** %72)
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %70
  %76 = load i8*, i8** %9, align 8
  %77 = load i8**, i8*** @azHelp, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @sqlite3_strglob(i8* %76, i8* %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %75
  %85 = load i32*, i32** %4, align 8
  %86 = load i8**, i8*** @azHelp, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @utf8_printf(i32* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %84, %75
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %70

100:                                              ; preds = %70
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @sqlite3_free(i8* %101)
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %140

105:                                              ; preds = %100
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %138

108:                                              ; preds = %105
  br label %109

109:                                              ; preds = %127, %108
  %110 = load i32, i32* %7, align 4
  %111 = load i8**, i8*** @azHelp, align 8
  %112 = call i32 @ArraySize(i8** %111)
  %113 = sub nsw i32 %112, 1
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load i8**, i8*** @azHelp, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 46
  br label %125

125:                                              ; preds = %115, %109
  %126 = phi i1 [ false, %109 ], [ %124, %115 ]
  br i1 %126, label %127, label %137

127:                                              ; preds = %125
  %128 = load i32*, i32** %4, align 8
  %129 = load i8**, i8*** @azHelp, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @utf8_printf(i32* %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %133)
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %109

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %137, %105
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %3, align 4
  br label %219

140:                                              ; preds = %100
  %141 = load i8*, i8** %5, align 8
  %142 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %141)
  store i8* %142, i8** %9, align 8
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %211, %140
  %144 = load i32, i32* %6, align 4
  %145 = load i8**, i8*** @azHelp, align 8
  %146 = call i32 @ArraySize(i8** %145)
  %147 = icmp slt i32 %144, %146
  br i1 %147, label %148, label %214

148:                                              ; preds = %143
  %149 = load i8**, i8*** @azHelp, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 46
  br i1 %157, label %158, label %160

158:                                              ; preds = %148
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %158, %148
  %161 = load i8*, i8** %9, align 8
  %162 = load i8**, i8*** @azHelp, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = call i64 @sqlite3_strlike(i8* %161, i8* %166, i32 0)
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %210

169:                                              ; preds = %160
  %170 = load i32*, i32** %4, align 8
  %171 = load i8**, i8*** @azHelp, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @utf8_printf(i32* %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %196, %169
  %178 = load i32, i32* %7, align 4
  %179 = load i8**, i8*** @azHelp, align 8
  %180 = call i32 @ArraySize(i8** %179)
  %181 = sub nsw i32 %180, 1
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %177
  %184 = load i8**, i8*** @azHelp, align 8
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %184, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp ne i32 %192, 46
  br label %194

194:                                              ; preds = %183, %177
  %195 = phi i1 [ false, %177 ], [ %193, %183 ]
  br i1 %195, label %196, label %206

196:                                              ; preds = %194
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %7, align 4
  %199 = load i32*, i32** %4, align 8
  %200 = load i8**, i8*** @azHelp, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @utf8_printf(i32* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %204)
  br label %177

206:                                              ; preds = %194
  %207 = load i32, i32* %7, align 4
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  br label %210

210:                                              ; preds = %206, %160
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %6, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %6, align 4
  br label %143

214:                                              ; preds = %143
  %215 = load i8*, i8** %9, align 8
  %216 = call i32 @sqlite3_free(i8* %215)
  br label %217

217:                                              ; preds = %214, %66
  %218 = load i32, i32* %8, align 4
  store i32 %218, i32* %3, align 4
  br label %219

219:                                              ; preds = %217, %138
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ArraySize(i8**) #1

declare dso_local i32 @utf8_printf(i32*, i8*, i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i64 @sqlite3_strglob(i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i64 @sqlite3_strlike(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
