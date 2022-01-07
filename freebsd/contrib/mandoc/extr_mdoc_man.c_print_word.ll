; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_man.c_print_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_man.c_print_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMAN_PP = common dso_local global i32 0, align 4
@MMAN_sp = common dso_local global i32 0, align 4
@MMAN_br = common dso_local global i32 0, align 4
@MMAN_nl = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@MMAN_PD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\0A.PD\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\0A.PD 0\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\0A.PP\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\0A.sp\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\0A.br\0A\00", align 1
@MMAN_spc = common dso_local global i32 0, align 4
@TPremain = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c".br\0A\00", align 1
@MMAN_spc_force = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c".,:;)]?!\00", align 1
@MMAN_Bk = common dso_local global i32 0, align 4
@MMAN_Bk_susp = common dso_local global i32 0, align 4
@MMAN_Sm = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"\\ \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\\:\00", align 1
@MMAN_nbrword = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @print_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_word(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @MMAN_PP, align 4
  %4 = load i32, i32* @MMAN_sp, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @MMAN_br, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MMAN_nl, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @outflags, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %90

13:                                               ; preds = %1
  %14 = load i32, i32* @MMAN_PP, align 4
  %15 = load i32, i32* @outflags, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %13
  %19 = load i32, i32* @MMAN_sp, align 4
  %20 = load i32, i32* @outflags, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load i32, i32* @MMAN_PD, align 4
  %25 = load i32, i32* @outflags, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @MMAN_PD, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* @outflags, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* @outflags, align 4
  br label %34

34:                                               ; preds = %28, %23
  br label %46

35:                                               ; preds = %18
  %36 = load i32, i32* @MMAN_PD, align 4
  %37 = load i32, i32* @outflags, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @MMAN_PD, align 4
  %43 = load i32, i32* @outflags, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* @outflags, align 4
  br label %45

45:                                               ; preds = %40, %35
  br label %46

46:                                               ; preds = %45, %34
  %47 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %72

48:                                               ; preds = %13
  %49 = load i32, i32* @MMAN_sp, align 4
  %50 = load i32, i32* @outflags, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %71

55:                                               ; preds = %48
  %56 = load i32, i32* @MMAN_br, align 4
  %57 = load i32, i32* @outflags, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %70

62:                                               ; preds = %55
  %63 = load i32, i32* @MMAN_nl, align 4
  %64 = load i32, i32* @outflags, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 @putchar(i8 zeroext 10)
  br label %69

69:                                               ; preds = %67, %62
  br label %70

70:                                               ; preds = %69, %60
  br label %71

71:                                               ; preds = %70, %53
  br label %72

72:                                               ; preds = %71, %46
  %73 = load i32, i32* @MMAN_PP, align 4
  %74 = load i32, i32* @MMAN_sp, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @MMAN_br, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @MMAN_nl, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @MMAN_spc, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* @outflags, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* @outflags, align 4
  %85 = load i32, i32* @TPremain, align 4
  %86 = icmp eq i32 1, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %72
  store i32 0, i32* @TPremain, align 4
  br label %140

90:                                               ; preds = %1
  %91 = load i32, i32* @MMAN_spc, align 4
  %92 = load i32, i32* @outflags, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %139

95:                                               ; preds = %90
  %96 = load i32, i32* @MMAN_spc_force, align 4
  %97 = load i32, i32* @outflags, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %118, label %100

100:                                              ; preds = %95
  %101 = load i8*, i8** %2, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 0, %104
  br i1 %105, label %118, label %106

106:                                              ; preds = %100
  %107 = load i8*, i8** %2, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = call i32* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8 signext %109)
  %111 = icmp eq i32* null, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = load i8*, i8** %2, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 0, %116
  br i1 %117, label %118, label %138

118:                                              ; preds = %112, %106, %100, %95
  %119 = load i32, i32* @MMAN_Bk, align 4
  %120 = load i32, i32* @outflags, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i32, i32* @MMAN_Bk_susp, align 4
  %125 = load i32, i32* @outflags, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %123
  %129 = call i32 @putchar(i8 zeroext 92)
  br label %130

130:                                              ; preds = %128, %123, %118
  %131 = call i32 @putchar(i8 zeroext 32)
  %132 = load i32, i32* @TPremain, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* @TPremain, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* @TPremain, align 4
  br label %137

137:                                              ; preds = %134, %130
  br label %138

138:                                              ; preds = %137, %112
  br label %139

139:                                              ; preds = %138, %90
  br label %140

140:                                              ; preds = %139, %89
  %141 = load i32, i32* @MMAN_Sm, align 4
  %142 = load i32, i32* @outflags, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %173

145:                                              ; preds = %140
  %146 = load i8*, i8** %2, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 0, %149
  br i1 %150, label %169, label %151

151:                                              ; preds = %145
  %152 = load i8*, i8** %2, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 40, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = load i8*, i8** %2, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 91, %161
  br i1 %162, label %169, label %163

163:                                              ; preds = %157, %151
  %164 = load i8*, i8** %2, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 0, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %163, %157, %145
  %170 = load i32, i32* @MMAN_spc, align 4
  %171 = load i32, i32* @outflags, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* @outflags, align 4
  br label %178

173:                                              ; preds = %163, %140
  %174 = load i32, i32* @MMAN_spc, align 4
  %175 = xor i32 %174, -1
  %176 = load i32, i32* @outflags, align 4
  %177 = and i32 %176, %175
  store i32 %177, i32* @outflags, align 4
  br label %178

178:                                              ; preds = %173, %169
  %179 = load i32, i32* @MMAN_spc_force, align 4
  %180 = load i32, i32* @MMAN_Bk_susp, align 4
  %181 = or i32 %179, %180
  %182 = xor i32 %181, -1
  %183 = load i32, i32* @outflags, align 4
  %184 = and i32 %183, %182
  store i32 %184, i32* @outflags, align 4
  br label %185

185:                                              ; preds = %218, %178
  %186 = load i8*, i8** %2, align 8
  %187 = load i8, i8* %186, align 1
  %188 = icmp ne i8 %187, 0
  br i1 %188, label %189, label %221

189:                                              ; preds = %185
  %190 = load i8*, i8** %2, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  switch i32 %192, label %207 [
    i32 128, label %193
    i32 129, label %195
    i32 130, label %197
    i32 32, label %199
  ]

193:                                              ; preds = %189
  %194 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %211

195:                                              ; preds = %189
  %196 = call i32 @putchar(i8 zeroext 45)
  br label %211

197:                                              ; preds = %189
  %198 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %211

199:                                              ; preds = %189
  %200 = load i32, i32* @MMAN_nbrword, align 4
  %201 = load i32, i32* @outflags, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %211

206:                                              ; preds = %199
  br label %207

207:                                              ; preds = %189, %206
  %208 = load i8*, i8** %2, align 8
  %209 = load i8, i8* %208, align 1
  %210 = call i32 @putchar(i8 zeroext %209)
  br label %211

211:                                              ; preds = %207, %204, %197, %195, %193
  %212 = load i32, i32* @TPremain, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i32, i32* @TPremain, align 4
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* @TPremain, align 4
  br label %217

217:                                              ; preds = %214, %211
  br label %218

218:                                              ; preds = %217
  %219 = load i8*, i8** %2, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %2, align 8
  br label %185

221:                                              ; preds = %185
  %222 = load i32, i32* @MMAN_nbrword, align 4
  %223 = xor i32 %222, -1
  %224 = load i32, i32* @outflags, align 4
  %225 = and i32 %224, %223
  store i32 %225, i32* @outflags, align 4
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @putchar(i8 zeroext) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
