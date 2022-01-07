; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pim.c_cisco_autorp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pim.c_cisco_autorp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c" auto-rp \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"candidate-advert\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"mapping\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"type-0x%02x\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" Hold \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"FOREVER\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" RP %s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" PIMv?\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" PIMv1\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" PIMv2\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" PIMv1+2\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c" [rsvd=0x%02x]\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"%c%s%s/%d\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" bidir\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"[rsvd=0x%02x]\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"[|autorp]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cisco_autorp_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %218

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ND_TCHECK(i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str to i32*))
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %32 [
    i32 17, label %26
    i32 18, label %29
  ]

26:                                               ; preds = %15
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @ND_PRINT(i32* bitcast ([17 x i8]* @.str.1 to i32*))
  br label %38

29:                                               ; preds = %15
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.2 to i32*))
  br label %38

32:                                               ; preds = %15
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  %37 = call i32 @ND_PRINT(i32* %36)
  br label %38

38:                                               ; preds = %32, %29, %26
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ND_TCHECK(i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ND_TCHECK2(i32 %48, i32 2)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.4 to i32*))
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = call i32 @EXTRACT_16BITS(i32* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %38
  %58 = load i32*, i32** %4, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = call i32 @EXTRACT_16BITS(i32* %60)
  %62 = call i32 @unsigned_relts_print(i32* %58, i32 %61)
  br label %66

63:                                               ; preds = %38
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.5 to i32*))
  br label %66

66:                                               ; preds = %63, %57
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  store i32* %68, i32** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 8
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %216, %66
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %8, align 4
  %74 = icmp ne i32 %72, 0
  br i1 %74, label %75, label %217

75:                                               ; preds = %71
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 4
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %218

79:                                               ; preds = %75
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ND_TCHECK2(i32 %82, i32 4)
  %84 = load i32*, i32** %4, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @ipaddr_string(i32* %85, i32* %86)
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i32*
  %90 = call i32 @ND_PRINT(i32* %89)
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  store i32* %92, i32** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %93, 4
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %79
  br label %218

98:                                               ; preds = %79
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ND_TCHECK(i32 %101)
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 3
  switch i32 %106, label %119 [
    i32 0, label %107
    i32 1, label %110
    i32 2, label %113
    i32 3, label %116
  ]

107:                                              ; preds = %98
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.7 to i32*))
  br label %119

110:                                              ; preds = %98
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.8 to i32*))
  br label %119

113:                                              ; preds = %98
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.9 to i32*))
  br label %119

116:                                              ; preds = %98
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.10 to i32*))
  br label %119

119:                                              ; preds = %98, %116, %113, %110, %107
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 252
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %119
  %126 = load i32*, i32** %4, align 8
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 252
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i32*
  %133 = call i32 @ND_PRINT(i32* %132)
  br label %134

134:                                              ; preds = %125, %119
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  store i32* %136, i32** %5, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sub nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp slt i32 %139, 1
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %218

142:                                              ; preds = %134
  %143 = load i32*, i32** %5, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ND_TCHECK(i32 %145)
  %147 = load i32*, i32** %5, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %10, align 4
  %150 = load i32*, i32** %5, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  store i32* %151, i32** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sub nsw i32 %152, 1
  store i32 %153, i32* %6, align 4
  store i8 32, i8* %11, align 1
  br label %154

154:                                              ; preds = %213, %142
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %216

157:                                              ; preds = %154
  %158 = load i32, i32* %6, align 4
  %159 = icmp slt i32 %158, 6
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %218

161:                                              ; preds = %157
  %162 = load i32*, i32** %5, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @ND_TCHECK2(i32 %164, i32 6)
  %166 = load i32*, i32** %4, align 8
  %167 = load i8, i8* %11, align 1
  %168 = load i32*, i32** %5, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 1
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %175 = load i32*, i32** %4, align 8
  %176 = load i32*, i32** %5, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 2
  %178 = call i32 @ipaddr_string(i32* %175, i32* %177)
  %179 = load i32*, i32** %5, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to i32*
  %184 = call i32 @ND_PRINT(i32* %183)
  %185 = load i32*, i32** %5, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 2
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %161
  %191 = load i32*, i32** %4, align 8
  %192 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.15 to i32*))
  br label %193

193:                                              ; preds = %190, %161
  %194 = load i32*, i32** %5, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, 252
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %193
  %200 = load i32*, i32** %4, align 8
  %201 = load i32*, i32** %5, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, 252
  %205 = sext i32 %204 to i64
  %206 = inttoptr i64 %205 to i32*
  %207 = call i32 @ND_PRINT(i32* %206)
  br label %208

208:                                              ; preds = %199, %193
  store i8 44, i8* %11, align 1
  %209 = load i32*, i32** %5, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 6
  store i32* %210, i32** %5, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sub nsw i32 %211, 6
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %208
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %10, align 4
  br label %154

216:                                              ; preds = %154
  br label %71

217:                                              ; preds = %71
  br label %221

218:                                              ; preds = %160, %141, %97, %78, %14
  %219 = load i32*, i32** %4, align 8
  %220 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.17 to i32*))
  br label %221

221:                                              ; preds = %218, %217
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @unsigned_relts_print(i32*, i32) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
