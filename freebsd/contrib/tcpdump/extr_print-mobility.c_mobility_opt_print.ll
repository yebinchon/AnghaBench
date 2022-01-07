; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-mobility.c_mobility_opt_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-mobility.c_mobility_opt_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"(pad1)\00", align 1
@IP6MOPT_MINLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"(padn: trunc)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(padn)\00", align 1
@IP6MOPT_REFRESH_MINLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"(refresh: trunc)\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"(refresh: %u)\00", align 1
@IP6MOPT_ALTCOA_MINLEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"(altcoa: trunc)\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"(alt-CoA: %s)\00", align 1
@IP6MOPT_NONCEID_MINLEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"(ni: trunc)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"(ni: ho=0x%04x co=0x%04x)\00", align 1
@IP6MOPT_AUTH_MINLEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"(auth: trunc)\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"(auth)\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"(sopt_type %u: trunc)\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"(type-0x%02x: len=%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @mobility_opt_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mobility_opt_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %223, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %227

14:                                               ; preds = %10
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ND_TCHECK(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 130
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  store i32 1, i32* %9, align 4
  br label %50

28:                                               ; preds = %14
  %29 = load i32, i32* %8, align 4
  %30 = add i32 %29, 1
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ND_TCHECK(i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 2
  store i32 %47, i32* %9, align 4
  br label %49

48:                                               ; preds = %28
  br label %228

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49, %27
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %228

57:                                               ; preds = %50
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %59, %60
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ND_TCHECK(i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %190 [
    i32 130, label %71
    i32 129, label %74
    i32 128, label %86
    i32 133, label %113
    i32 131, label %140
    i32 132, label %178
  ]

71:                                               ; preds = %57
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str to i32*))
  br label %222

74:                                               ; preds = %57
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sub i32 %75, %76
  %78 = load i32, i32* @IP6MOPT_MINLEN, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str.1 to i32*))
  br label %228

83:                                               ; preds = %74
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.2 to i32*))
  br label %222

86:                                               ; preds = %57
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = sub i32 %87, %88
  %90 = load i32, i32* @IP6MOPT_REFRESH_MINLEN, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @ND_PRINT(i32* bitcast ([17 x i8]* @.str.3 to i32*))
  br label %228

95:                                               ; preds = %86
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add i32 %97, 2
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = call i32 @ND_TCHECK_16BITS(i32* %100)
  %102 = load i32*, i32** %5, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add i32 %104, 2
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = call i32 @EXTRACT_16BITS(i32* %107)
  %109 = shl i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i32*
  %112 = call i32 @ND_PRINT(i32* %111)
  br label %222

113:                                              ; preds = %57
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = sub i32 %114, %115
  %117 = load i32, i32* @IP6MOPT_ALTCOA_MINLEN, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @ND_PRINT(i32* bitcast ([16 x i8]* @.str.5 to i32*))
  br label %228

122:                                              ; preds = %113
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %8, align 4
  %125 = add i32 %124, 2
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  %128 = call i32 @ND_TCHECK_128BITS(i32* %127)
  %129 = load i32*, i32** %5, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %8, align 4
  %133 = add i32 %132, 2
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = call i32 @ip6addr_string(i32* %130, i32* %135)
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i32*
  %139 = call i32 @ND_PRINT(i32* %138)
  br label %222

140:                                              ; preds = %57
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %8, align 4
  %143 = sub i32 %141, %142
  %144 = load i32, i32* @IP6MOPT_NONCEID_MINLEN, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i32*, i32** %5, align 8
  %148 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.7 to i32*))
  br label %228

149:                                              ; preds = %140
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* %8, align 4
  %152 = add i32 %151, 2
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = call i32 @ND_TCHECK_16BITS(i32* %154)
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* %8, align 4
  %158 = add i32 %157, 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = call i32 @ND_TCHECK_16BITS(i32* %160)
  %162 = load i32*, i32** %5, align 8
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* %8, align 4
  %165 = add i32 %164, 2
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = call i32 @EXTRACT_16BITS(i32* %167)
  %169 = load i32*, i32** %6, align 8
  %170 = load i32, i32* %8, align 4
  %171 = add i32 %170, 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = call i32 @EXTRACT_16BITS(i32* %173)
  %175 = sext i32 %174 to i64
  %176 = inttoptr i64 %175 to i32*
  %177 = call i32 @ND_PRINT(i32* %176)
  br label %222

178:                                              ; preds = %57
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %8, align 4
  %181 = sub i32 %179, %180
  %182 = load i32, i32* @IP6MOPT_AUTH_MINLEN, align 4
  %183 = icmp ult i32 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = load i32*, i32** %5, align 8
  %186 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str.9 to i32*))
  br label %228

187:                                              ; preds = %178
  %188 = load i32*, i32** %5, align 8
  %189 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.10 to i32*))
  br label %222

190:                                              ; preds = %57
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* %8, align 4
  %193 = sub i32 %191, %192
  %194 = load i32, i32* @IP6MOPT_MINLEN, align 4
  %195 = icmp ult i32 %193, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %190
  %197 = load i32*, i32** %5, align 8
  %198 = load i32*, i32** %6, align 8
  %199 = load i32, i32* %8, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = inttoptr i64 %203 to i32*
  %205 = call i32 @ND_PRINT(i32* %204)
  br label %228

206:                                              ; preds = %190
  %207 = load i32*, i32** %5, align 8
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* %8, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %6, align 8
  %214 = load i32, i32* %8, align 4
  %215 = add i32 %214, 1
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = inttoptr i64 %219 to i32*
  %221 = call i32 @ND_PRINT(i32* %220)
  br label %222

222:                                              ; preds = %206, %187, %149, %122, %95, %83, %71
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %8, align 4
  %226 = add i32 %225, %224
  store i32 %226, i32* %8, align 4
  br label %10

227:                                              ; preds = %10
  store i32 0, i32* %4, align 4
  br label %229

228:                                              ; preds = %196, %184, %146, %119, %92, %80, %56, %48
  store i32 1, i32* %4, align 4
  br label %229

229:                                              ; preds = %228, %227
  %230 = load i32, i32* %4, align 4
  ret i32 %230
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK_16BITS(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_TCHECK_128BITS(i32*) #1

declare dso_local i32 @ip6addr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
