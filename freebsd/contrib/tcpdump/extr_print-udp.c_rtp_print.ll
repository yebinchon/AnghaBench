; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-udp.c_rtp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-udp.c_rtp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.udphdr = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"rtpv1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rtp\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"udp/%s %d c%d %s%s %d %u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" !opt\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" !ext\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" 0x%04x\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rtp_tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i32, %struct.udphdr*)* @rtp_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtp_print(%struct.TYPE_4__* %0, i8* %1, i32 %2, %struct.udphdr* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.udphdr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.udphdr* %3, %struct.udphdr** %8, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %9, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = call i32 @ND_TCHECK_32BITS(i32* %26)
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = call i32 @EXTRACT_32BITS(i32* %30)
  store i32 %31, i32* %15, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = call i32 @ND_TCHECK_32BITS(i32* %34)
  %36 = load i8*, i8** %6, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = call i32 @EXTRACT_32BITS(i32* %38)
  store i32 %39, i32* %16, align 4
  %40 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %41 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %40, i32 0, i32 0
  %42 = call i32 @ND_TCHECK_16BITS(i32* %41)
  %43 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %44 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %43, i32 0, i32 0
  %45 = call i32 @EXTRACT_16BITS(i32* %44)
  %46 = sext i32 %45 to i64
  %47 = sub i64 %46, 4
  %48 = sub i64 %47, 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %14, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32* %51, i32** %9, align 8
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 2
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 2
  store i32 %55, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %56 = load i32, i32* %15, align 4
  %57 = ashr i32 %56, 30
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %67

59:                                               ; preds = %4
  %60 = load i32, i32* %15, align 4
  %61 = and i32 %60, 8388608
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %15, align 4
  %63 = ashr i32 %62, 16
  %64 = and i32 %63, 63
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %15, align 4
  %66 = and i32 %65, 4194304
  store i32 %66, i32* %13, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  br label %81

67:                                               ; preds = %4
  %68 = load i32, i32* %15, align 4
  %69 = and i32 %68, 268435456
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %15, align 4
  %71 = ashr i32 %70, 16
  %72 = and i32 %71, 127
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %15, align 4
  %74 = and i32 %73, 8388608
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = sub nsw i32 %75, 4
  store i32 %76, i32* %14, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32* %78, i32** %9, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %67, %59
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = load i8*, i8** %17, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br label %91

91:                                               ; preds = %88, %81
  %92 = phi i1 [ true, %81 ], [ %90, %88 ]
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %99 = load i32, i32* %15, align 4
  %100 = and i32 %99, 65535
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to %struct.TYPE_4__*
  %104 = call i32 @ND_PRINT(%struct.TYPE_4__* %103)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %190

109:                                              ; preds = %91
  %110 = load i8*, i8** %6, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = call i32 @ND_TCHECK_32BITS(i32* %112)
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = bitcast i8* %115 to i32*
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = call i32 @EXTRACT_32BITS(i32* %117)
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to %struct.TYPE_4__*
  %121 = call i32 @ND_PRINT(%struct.TYPE_4__* %120)
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %154

124:                                              ; preds = %109
  br label %125

125:                                              ; preds = %150, %124
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @ND_TCHECK_32BITS(i32* %126)
  %128 = load i32*, i32** %9, align 8
  %129 = call i32 @EXTRACT_32BITS(i32* %128)
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  %131 = ashr i32 %130, 16
  %132 = and i32 %131, 255
  store i32 %132, i32* %19, align 4
  %133 = load i32, i32* %19, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %125
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135, %125
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %141 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([6 x i8]* @.str.7 to %struct.TYPE_4__*))
  br label %197

142:                                              ; preds = %135
  %143 = load i32, i32* %19, align 4
  %144 = load i32*, i32** %9, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32* %146, i32** %9, align 8
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %7, align 4
  %149 = sub nsw i32 %148, %147
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %142
  %151 = load i32, i32* %18, align 4
  %152 = icmp sge i32 %151, 0
  br i1 %152, label %125, label %153

153:                                              ; preds = %150
  br label %154

154:                                              ; preds = %153, %109
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %176

157:                                              ; preds = %154
  %158 = load i32*, i32** %9, align 8
  %159 = call i32 @ND_TCHECK_32BITS(i32* %158)
  %160 = load i32*, i32** %9, align 8
  %161 = call i32 @EXTRACT_32BITS(i32* %160)
  store i32 %161, i32* %20, align 4
  %162 = load i32, i32* %20, align 4
  %163 = and i32 %162, 65535
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %21, align 4
  %165 = load i32, i32* %21, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %157
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %170 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([6 x i8]* @.str.8 to %struct.TYPE_4__*))
  br label %197

171:                                              ; preds = %157
  %172 = load i32, i32* %21, align 4
  %173 = load i32*, i32** %9, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32* %175, i32** %9, align 8
  br label %176

176:                                              ; preds = %171, %154
  %177 = load i32*, i32** %9, align 8
  %178 = call i32 @ND_TCHECK_32BITS(i32* %177)
  %179 = load i32, i32* %12, align 4
  %180 = icmp eq i32 %179, 31
  br i1 %180, label %181, label %189

181:                                              ; preds = %176
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %183 = load i32*, i32** %9, align 8
  %184 = call i32 @EXTRACT_32BITS(i32* %183)
  %185 = ashr i32 %184, 16
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to %struct.TYPE_4__*
  %188 = call i32 @ND_PRINT(%struct.TYPE_4__* %187)
  br label %189

189:                                              ; preds = %181, %176
  br label %190

190:                                              ; preds = %189, %91
  br label %191

191:                                              ; preds = %190
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %193 = load i32, i32* @rtp_tstr, align 4
  %194 = sext i32 %193 to i64
  %195 = inttoptr i64 %194 to %struct.TYPE_4__*
  %196 = call i32 @ND_PRINT(%struct.TYPE_4__* %195)
  br label %197

197:                                              ; preds = %191, %168, %139
  ret void
}

declare dso_local i32 @ND_TCHECK_32BITS(i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ND_TCHECK_16BITS(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
