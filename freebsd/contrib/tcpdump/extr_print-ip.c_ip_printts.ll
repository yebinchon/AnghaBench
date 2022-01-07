; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ip.c_ip_printts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ip.c_ip_printts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"[bad length %u]\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" TS{\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"[bad ptr %u]\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"TSONLY\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"TS+ADDR\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"PRESPEC2.0\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"PRESPEC\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"[bad ts type %d]\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" ^ \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%s%d@%s\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c" [%d hops not recorded]} \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @ip_printts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_printts(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i32*
  %19 = call i32 @ND_PRINT(i32* %18)
  store i32 0, i32* %4, align 4
  br label %178

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.1 to i32*))
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 15
  %27 = icmp ne i32 %26, 128
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 8, i32 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %30, 4
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %20
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i32*
  %41 = call i32 @ND_PRINT(i32* %40)
  br label %42

42:                                               ; preds = %36, %20
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ND_TCHECK(i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %65, label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %54, 4
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  %64 = icmp sgt i32 %61, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %60, %53, %42
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i32*
  %72 = call i32 @ND_PRINT(i32* %71)
  br label %73

73:                                               ; preds = %65, %60
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ND_TCHECK(i32 %76)
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 15
  switch i32 %81, label %94 [
    i32 128, label %82
    i32 129, label %85
    i32 2, label %88
    i32 3, label %91
  ]

82:                                               ; preds = %73
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.3 to i32*))
  br label %103

85:                                               ; preds = %73
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.4 to i32*))
  br label %103

88:                                               ; preds = %73
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @ND_PRINT(i32* bitcast ([11 x i8]* @.str.5 to i32*))
  br label %103

91:                                               ; preds = %73
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.6 to i32*))
  br label %103

94:                                               ; preds = %73
  %95 = load i32*, i32** %5, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 15
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i32*
  %102 = call i32 @ND_PRINT(i32* %101)
  br label %150

103:                                              ; preds = %91, %88, %85, %82
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  store i32 4, i32* %9, align 4
  br label %104

104:                                              ; preds = %145, %103
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %149

108:                                              ; preds = %104
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %11, align 8
  br label %113

113:                                              ; preds = %112, %108
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @ND_TCHECK2(i32 %118, i32 %119)
  %121 = load i32*, i32** %5, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %124, %125
  %127 = sub nsw i32 %126, 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %123, i64 %128
  %130 = call i32 @EXTRACT_32BITS(i32* %129)
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 8
  br i1 %132, label %133, label %134

133:                                              ; preds = %113
  br label %141

134:                                              ; preds = %113
  %135 = load i32*, i32** %5, align 8
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = call i8* @ipaddr_string(i32* %135, i32* %139)
  br label %141

141:                                              ; preds = %134, %133
  %142 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %133 ], [ %140, %134 ]
  %143 = bitcast i8* %142 to i32*
  %144 = call i32 @ND_PRINT(i32* %143)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  br label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %9, align 4
  br label %104

149:                                              ; preds = %104
  br label %150

150:                                              ; preds = %149, %94
  %151 = load i32*, i32** %5, align 8
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %157 = bitcast i8* %156 to i32*
  %158 = call i32 @ND_PRINT(i32* %157)
  %159 = load i32*, i32** %6, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 3
  %161 = load i32, i32* %160, align 4
  %162 = ashr i32 %161, 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %150
  %165 = load i32*, i32** %5, align 8
  %166 = load i32*, i32** %6, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 3
  %168 = load i32, i32* %167, align 4
  %169 = ashr i32 %168, 4
  %170 = sext i32 %169 to i64
  %171 = inttoptr i64 %170 to i32*
  %172 = call i32 @ND_PRINT(i32* %171)
  br label %176

173:                                              ; preds = %150
  %174 = load i32*, i32** %5, align 8
  %175 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.14 to i32*))
  br label %176

176:                                              ; preds = %173, %164
  store i32 0, i32* %4, align 4
  br label %178

177:                                              ; No predecessors!
  store i32 -1, i32* %4, align 4
  br label %178

178:                                              ; preds = %177, %176, %14
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i8* @ipaddr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
