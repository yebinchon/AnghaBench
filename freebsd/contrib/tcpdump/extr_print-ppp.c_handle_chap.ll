; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ppp.c_handle_chap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ppp.c_handle_chap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"[|chap]\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"[|chap 0x%02x]\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"CHAP, %s (0x%02x)\00", align 1
@chapcode_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c", id %u\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c", Value \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c", Name \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c", Msg \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @handle_chap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_chap(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32*, i32** %5, align 8
  store i32* %14, i32** %12, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str to i32*))
  br label %187

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ND_TCHECK(i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i32*
  %32 = call i32 @ND_PRINT(i32* %31)
  br label %187

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ND_TCHECK(i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @chapcode_values, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @tok2str(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i32*
  %47 = call i32 @ND_PRINT(i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %5, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ND_TCHECK(i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i32*
  %58 = call i32 @ND_PRINT(i32* %57)
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %5, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ND_TCHECK2(i32 %62, i32 2)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @EXTRACT_16BITS(i32* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32* %67, i32** %5, align 8
  %68 = load i32, i32* %7, align 4
  switch i32 %68, label %183 [
    i32 131, label %69
    i32 129, label %69
    i32 128, label %153
    i32 130, label %153
  ]

69:                                               ; preds = %34, %34
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = ptrtoint i32* %72 to i64
  %75 = ptrtoint i32* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 4
  %78 = sub nsw i64 %71, %77
  %79 = icmp slt i64 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %187

81:                                               ; preds = %69
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ND_TCHECK(i32 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %9, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = load i32*, i32** %5, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = ptrtoint i32* %91 to i64
  %94 = ptrtoint i32* %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 4
  %97 = sub nsw i64 %90, %96
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %81
  br label %187

102:                                              ; preds = %81
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.5 to i32*))
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %120, %102
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ND_TCHECK(i32 %111)
  %113 = load i32*, i32** %4, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %5, align 8
  %116 = load i32, i32* %114, align 4
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i32*
  %119 = call i32 @ND_PRINT(i32* %118)
  br label %120

120:                                              ; preds = %109
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %105

123:                                              ; preds = %105
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = load i32*, i32** %5, align 8
  %127 = load i32*, i32** %12, align 8
  %128 = ptrtoint i32* %126 to i64
  %129 = ptrtoint i32* %127 to i64
  %130 = sub i64 %128, %129
  %131 = sdiv exact i64 %130, 4
  %132 = sub nsw i64 %125, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %10, align 4
  %134 = load i32*, i32** %4, align 8
  %135 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.7 to i32*))
  store i32 0, i32* %13, align 4
  br label %136

136:                                              ; preds = %149, %123
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %152

140:                                              ; preds = %136
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ND_TCHECK(i32 %142)
  %144 = load i32*, i32** %4, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %5, align 8
  %147 = load i32, i32* %145, align 4
  %148 = call i32 @safeputchar(i32* %144, i32 %147)
  br label %149

149:                                              ; preds = %140
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %13, align 4
  br label %136

152:                                              ; preds = %136
  br label %183

153:                                              ; preds = %34, %34
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = load i32*, i32** %5, align 8
  %157 = load i32*, i32** %12, align 8
  %158 = ptrtoint i32* %156 to i64
  %159 = ptrtoint i32* %157 to i64
  %160 = sub i64 %158, %159
  %161 = sdiv exact i64 %160, 4
  %162 = sub nsw i64 %155, %161
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %11, align 4
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.8 to i32*))
  store i32 0, i32* %13, align 4
  br label %166

166:                                              ; preds = %179, %153
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %166
  %171 = load i32*, i32** %5, align 8
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ND_TCHECK(i32 %172)
  %174 = load i32*, i32** %4, align 8
  %175 = load i32*, i32** %5, align 8
  %176 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %176, i32** %5, align 8
  %177 = load i32, i32* %175, align 4
  %178 = call i32 @safeputchar(i32* %174, i32 %177)
  br label %179

179:                                              ; preds = %170
  %180 = load i32, i32* %13, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %13, align 4
  br label %166

182:                                              ; preds = %166
  br label %183

183:                                              ; preds = %34, %182, %152
  br label %187

184:                                              ; No predecessors!
  %185 = load i32*, i32** %4, align 8
  %186 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str to i32*))
  br label %187

187:                                              ; preds = %184, %183, %101, %80, %23, %17
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @safeputchar(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
