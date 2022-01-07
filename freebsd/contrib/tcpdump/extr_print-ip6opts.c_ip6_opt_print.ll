; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ip6opts.c_ip6_opt_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ip6opts.c_ip6_opt_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"(pad1)\00", align 1
@IP6OPT_MINLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"(padn: trunc)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(padn)\00", align 1
@IP6OPT_RTALERT_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"(rtalert: trunc)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"(rtalert: invalid len %d)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"(rtalert: 0x%04x) \00", align 1
@IP6OPT_JUMBO_LEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"(jumbo: trunc)\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"(jumbo: invalid len %d)\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"(jumbo: %u) \00", align 1
@IP6OPT_HOMEADDR_MINLEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"(homeaddr: trunc)\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"(homeaddr: invalid len %d)\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"(homeaddr: %s\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"(type %d: trunc)\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"(opt_type 0x%02x: len=%d)\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"[trunc] \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @ip6_opt_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_opt_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %259

12:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %249, %12
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %253

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 130
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 1, i32* %8, align 4
  br label %40

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 2
  store i32 %37, i32* %8, align 4
  br label %39

38:                                               ; preds = %25
  br label %256

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %256

47:                                               ; preds = %40
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %216 [
    i32 130, label %53
    i32 129, label %56
    i32 128, label %68
    i32 131, label %109
    i32 132, label %150
  ]

53:                                               ; preds = %47
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str to i32*))
  br label %248

56:                                               ; preds = %47
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load i32, i32* @IP6OPT_MINLEN, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str.1 to i32*))
  br label %256

65:                                               ; preds = %56
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.2 to i32*))
  br label %248

68:                                               ; preds = %47
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load i32, i32* @IP6OPT_RTALERT_LEN, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @ND_PRINT(i32* bitcast ([17 x i8]* @.str.3 to i32*))
  br label %256

77:                                               ; preds = %68
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IP6OPT_RTALERT_LEN, align 4
  %85 = sub nsw i32 %84, 2
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %77
  %88 = load i32*, i32** %4, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i32*
  %97 = call i32 @ND_PRINT(i32* %96)
  br label %256

98:                                               ; preds = %77
  %99 = load i32*, i32** %4, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = call i32 @EXTRACT_16BITS(i32* %104)
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i32*
  %108 = call i32 @ND_PRINT(i32* %107)
  br label %248

109:                                              ; preds = %47
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32, i32* @IP6OPT_JUMBO_LEN, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @ND_PRINT(i32* bitcast ([15 x i8]* @.str.6 to i32*))
  br label %256

118:                                              ; preds = %109
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @IP6OPT_JUMBO_LEN, align 4
  %126 = sub nsw i32 %125, 2
  %127 = icmp ne i32 %124, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %118
  %129 = load i32*, i32** %4, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i32*
  %138 = call i32 @ND_PRINT(i32* %137)
  br label %256

139:                                              ; preds = %118
  %140 = load i32*, i32** %4, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 2
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = call i32 @EXTRACT_32BITS(i32* %145)
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i32*
  %149 = call i32 @ND_PRINT(i32* %148)
  br label %248

150:                                              ; preds = %47
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %7, align 4
  %153 = sub nsw i32 %151, %152
  %154 = load i32, i32* @IP6OPT_HOMEADDR_MINLEN, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load i32*, i32** %4, align 8
  %158 = call i32 @ND_PRINT(i32* bitcast ([18 x i8]* @.str.9 to i32*))
  br label %256

159:                                              ; preds = %150
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @IP6OPT_HOMEADDR_MINLEN, align 4
  %167 = sub nsw i32 %166, 2
  %168 = icmp slt i32 %165, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %159
  %170 = load i32*, i32** %4, align 8
  %171 = load i32*, i32** %5, align 8
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to i32*
  %179 = call i32 @ND_PRINT(i32* %178)
  br label %256

180:                                              ; preds = %159
  %181 = load i32*, i32** %4, align 8
  %182 = load i32*, i32** %4, align 8
  %183 = load i32*, i32** %5, align 8
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 2
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = call i32 @ip6addr_string(i32* %182, i32* %187)
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to i32*
  %191 = call i32 @ND_PRINT(i32* %190)
  %192 = load i32*, i32** %5, align 8
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @IP6OPT_HOMEADDR_MINLEN, align 4
  %199 = sub nsw i32 %198, 2
  %200 = icmp sgt i32 %197, %199
  br i1 %200, label %201, label %213

201:                                              ; preds = %180
  %202 = load i32*, i32** %4, align 8
  %203 = load i32*, i32** %5, align 8
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @IP6OPT_HOMEADDR_MINLEN, align 4
  %206 = add nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %203, i64 %207
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* @IP6OPT_HOMEADDR_MINLEN, align 4
  %211 = sub nsw i32 %209, %210
  %212 = call i32 @ip6_sopt_print(i32* %202, i32* %208, i32 %211)
  br label %213

213:                                              ; preds = %201, %180
  %214 = load i32*, i32** %4, align 8
  %215 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.12 to i32*))
  br label %248

216:                                              ; preds = %47
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* %7, align 4
  %219 = sub nsw i32 %217, %218
  %220 = load i32, i32* @IP6OPT_MINLEN, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %232

222:                                              ; preds = %216
  %223 = load i32*, i32** %4, align 8
  %224 = load i32*, i32** %5, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = inttoptr i64 %229 to i32*
  %231 = call i32 @ND_PRINT(i32* %230)
  br label %256

232:                                              ; preds = %216
  %233 = load i32*, i32** %4, align 8
  %234 = load i32*, i32** %5, align 8
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %5, align 8
  %240 = load i32, i32* %7, align 4
  %241 = add nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %239, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = inttoptr i64 %245 to i32*
  %247 = call i32 @ND_PRINT(i32* %246)
  br label %248

248:                                              ; preds = %232, %213, %139, %98, %65, %53
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %8, align 4
  %251 = load i32, i32* %7, align 4
  %252 = add nsw i32 %251, %250
  store i32 %252, i32* %7, align 4
  br label %13

253:                                              ; preds = %13
  %254 = load i32*, i32** %4, align 8
  %255 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.15 to i32*))
  br label %259

256:                                              ; preds = %222, %169, %156, %128, %115, %87, %74, %62, %46, %38
  %257 = load i32*, i32** %4, align 8
  %258 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.16 to i32*))
  br label %259

259:                                              ; preds = %256, %253, %11
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ip6addr_string(i32*, i32*) #1

declare dso_local i32 @ip6_sopt_print(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
