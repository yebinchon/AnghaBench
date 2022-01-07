; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_mldv2_query_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_mldv2_query_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.icmp6_hdr = type { i32* }

@.str = private unnamed_addr constant [18 x i8] c" [invalid len %d]\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c" [max resp delay=%d]\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" [gaddr %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" sflag\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c" robustness=%d\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" qqi=%d\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c" [invalid number of sources]\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c", %d source(s)\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"[|icmp6]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32)* @mldv2_query_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mldv2_query_print(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.icmp6_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to %struct.icmp6_hdr*
  store %struct.icmp6_hdr* %14, %struct.icmp6_hdr** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 28
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.TYPE_5__*
  %22 = call i32 @ND_PRINT(%struct.TYPE_5__* %21)
  br label %206

23:                                               ; preds = %3
  %24 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %7, align 8
  %25 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ND_TCHECK(i32 %28)
  %30 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %7, align 8
  %31 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = call i32 @EXTRACT_16BITS(i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 32768
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %9, align 4
  br label %48

39:                                               ; preds = %23
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 4095
  %42 = or i32 %41, 4096
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 28672
  %45 = ashr i32 %44, 12
  %46 = add nsw i32 %45, 3
  %47 = shl i32 %42, %46
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %39, %37
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to %struct.TYPE_5__*
  %58 = call i32 @ND_PRINT(%struct.TYPE_5__* %57)
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ND_TCHECK2(i32 %62, i32 4)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 8
  %68 = call i32 @ip6addr_string(%struct.TYPE_5__* %65, i32* %67)
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to %struct.TYPE_5__*
  %71 = call i32 @ND_PRINT(%struct.TYPE_5__* %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %132

76:                                               ; preds = %59
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 25
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ND_TCHECK(i32 %79)
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 24
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([7 x i8]* @.str.3 to %struct.TYPE_5__*))
  br label %89

89:                                               ; preds = %86, %76
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 24
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 7
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 24
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 7
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to %struct.TYPE_5__*
  %103 = call i32 @ND_PRINT(%struct.TYPE_5__* %102)
  br label %104

104:                                              ; preds = %95, %89
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 25
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %107, 128
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 25
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %10, align 4
  br label %126

113:                                              ; preds = %104
  %114 = load i32*, i32** %5, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 25
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 15
  %118 = or i32 %117, 16
  %119 = load i32*, i32** %5, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 25
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 112
  %123 = ashr i32 %122, 4
  %124 = add nsw i32 %123, 3
  %125 = shl i32 %118, %124
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %113, %109
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to %struct.TYPE_5__*
  %131 = call i32 @ND_PRINT(%struct.TYPE_5__* %130)
  br label %132

132:                                              ; preds = %126, %59
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 26
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ND_TCHECK2(i32 %135, i32 2)
  %137 = load i32*, i32** %5, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 26
  %139 = call i32 @EXTRACT_16BITS(i32* %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %200

142:                                              ; preds = %132
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 4
  %148 = add i64 28, %147
  %149 = icmp ult i64 %144, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([29 x i8]* @.str.6 to %struct.TYPE_5__*))
  br label %199

153:                                              ; preds = %142
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %156, 1
  br i1 %157, label %158, label %192

158:                                              ; preds = %153
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %160 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str.7 to %struct.TYPE_5__*))
  store i32 0, i32* %12, align 4
  br label %161

161:                                              ; preds = %186, %158
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %189

165:                                              ; preds = %161
  %166 = load i32*, i32** %5, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = mul i64 %168, 4
  %170 = add i64 28, %169
  %171 = getelementptr inbounds i32, i32* %166, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ND_TCHECK2(i32 %172, i32 4)
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %176 = load i32*, i32** %5, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = mul i64 %178, 4
  %180 = add i64 28, %179
  %181 = getelementptr inbounds i32, i32* %176, i64 %180
  %182 = call i32 @ip6addr_string(%struct.TYPE_5__* %175, i32* %181)
  %183 = sext i32 %182 to i64
  %184 = inttoptr i64 %183 to %struct.TYPE_5__*
  %185 = call i32 @ND_PRINT(%struct.TYPE_5__* %184)
  br label %186

186:                                              ; preds = %165
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %12, align 4
  br label %161

189:                                              ; preds = %161
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %191 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str.9 to %struct.TYPE_5__*))
  br label %198

192:                                              ; preds = %153
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = inttoptr i64 %195 to %struct.TYPE_5__*
  %197 = call i32 @ND_PRINT(%struct.TYPE_5__* %196)
  br label %198

198:                                              ; preds = %192, %189
  br label %199

199:                                              ; preds = %198, %150
  br label %200

200:                                              ; preds = %199, %132
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %202 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([2 x i8]* @.str.11 to %struct.TYPE_5__*))
  br label %206

203:                                              ; No predecessors!
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %205 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([9 x i8]* @.str.12 to %struct.TYPE_5__*))
  br label %206

206:                                              ; preds = %203, %200, %17
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ip6addr_string(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
