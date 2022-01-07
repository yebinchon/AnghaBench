; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-snmp.c_usm_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-snmp.c_usm_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.be = type { i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }

@BE_SEQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[!usm]\00", align 1
@BE_STR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"[msgAuthoritativeEngineID!=STR]\00", align 1
@BE_INT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"[msgAuthoritativeEngineBoots!=INT]\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"B=%d \00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"[msgAuthoritativeEngineTime!=INT]\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"T=%d \00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"[msgUserName!=STR]\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"U=\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"[msgAuthenticationParameters!=STR]\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"[msgPrivacyParameters!=STR]\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"[%d extra after usm SEQ]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i64)* @usm_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usm_print(%struct.TYPE_9__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.be, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @asn1_parse(%struct.TYPE_9__* %9, i32* %10, i64 %11, %struct.be* %7)
  store i32 %12, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %229

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BE_SEQ, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([7 x i8]* @.str to %struct.TYPE_9__*))
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = call i32 @asn1_print(%struct.TYPE_9__* %23, %struct.be* %7)
  br label %229

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %5, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @asn1_parse(%struct.TYPE_9__* %32, i32* %33, i64 %34, %struct.be* %7)
  store i32 %35, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %229

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BE_STR, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([32 x i8]* @.str.1 to %struct.TYPE_9__*))
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = call i32 @asn1_print(%struct.TYPE_9__* %46, %struct.be* %7)
  br label %229

48:                                               ; preds = %38
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %6, align 8
  %52 = sub nsw i64 %51, %50
  store i64 %52, i64* %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %5, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @asn1_parse(%struct.TYPE_9__* %57, i32* %58, i64 %59, %struct.be* %7)
  store i32 %60, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %229

63:                                               ; preds = %48
  %64 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BE_INT, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([35 x i8]* @.str.2 to %struct.TYPE_9__*))
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = call i32 @asn1_print(%struct.TYPE_9__* %71, %struct.be* %7)
  br label %229

73:                                               ; preds = %63
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to %struct.TYPE_9__*
  %85 = call i32 @ND_PRINT(%struct.TYPE_9__* %84)
  br label %86

86:                                               ; preds = %78, %73
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %6, align 8
  %90 = sub nsw i64 %89, %88
  store i64 %90, i64* %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %5, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @asn1_parse(%struct.TYPE_9__* %95, i32* %96, i64 %97, %struct.be* %7)
  store i32 %98, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %86
  br label %229

101:                                              ; preds = %86
  %102 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @BE_INT, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([34 x i8]* @.str.4 to %struct.TYPE_9__*))
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = call i32 @asn1_print(%struct.TYPE_9__* %109, %struct.be* %7)
  br label %229

111:                                              ; preds = %101
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %118 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to %struct.TYPE_9__*
  %123 = call i32 @ND_PRINT(%struct.TYPE_9__* %122)
  br label %124

124:                                              ; preds = %116, %111
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* %6, align 8
  %128 = sub nsw i64 %127, %126
  store i64 %128, i64* %6, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32*, i32** %5, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32* %132, i32** %5, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = load i64, i64* %6, align 8
  %136 = call i32 @asn1_parse(%struct.TYPE_9__* %133, i32* %134, i64 %135, %struct.be* %7)
  store i32 %136, i32* %8, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %124
  br label %229

139:                                              ; preds = %124
  %140 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @BE_STR, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %146 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([19 x i8]* @.str.6 to %struct.TYPE_9__*))
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %148 = call i32 @asn1_print(%struct.TYPE_9__* %147, %struct.be* %7)
  br label %229

149:                                              ; preds = %139
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %6, align 8
  %153 = sub nsw i64 %152, %151
  store i64 %153, i64* %6, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i32*, i32** %5, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32* %157, i32** %5, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %159 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([3 x i8]* @.str.7 to %struct.TYPE_9__*))
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %161 = call i32 @asn1_print_string(%struct.TYPE_9__* %160, %struct.be* %7)
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %164

163:                                              ; preds = %149
  br label %229

164:                                              ; preds = %149
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %166 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([2 x i8]* @.str.8 to %struct.TYPE_9__*))
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %168 = load i32*, i32** %5, align 8
  %169 = load i64, i64* %6, align 8
  %170 = call i32 @asn1_parse(%struct.TYPE_9__* %167, i32* %168, i64 %169, %struct.be* %7)
  store i32 %170, i32* %8, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  br label %229

173:                                              ; preds = %164
  %174 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @BE_STR, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %180 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([35 x i8]* @.str.9 to %struct.TYPE_9__*))
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %182 = call i32 @asn1_print(%struct.TYPE_9__* %181, %struct.be* %7)
  br label %229

183:                                              ; preds = %173
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %6, align 8
  %187 = sub nsw i64 %186, %185
  store i64 %187, i64* %6, align 8
  %188 = load i32, i32* %8, align 4
  %189 = load i32*, i32** %5, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32* %191, i32** %5, align 8
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %193 = load i32*, i32** %5, align 8
  %194 = load i64, i64* %6, align 8
  %195 = call i32 @asn1_parse(%struct.TYPE_9__* %192, i32* %193, i64 %194, %struct.be* %7)
  store i32 %195, i32* %8, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %183
  br label %229

198:                                              ; preds = %183
  %199 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @BE_STR, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %205 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([28 x i8]* @.str.10 to %struct.TYPE_9__*))
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %207 = call i32 @asn1_print(%struct.TYPE_9__* %206, %struct.be* %7)
  br label %229

208:                                              ; preds = %198
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = load i64, i64* %6, align 8
  %212 = sub nsw i64 %211, %210
  store i64 %212, i64* %6, align 8
  %213 = load i32, i32* %8, align 4
  %214 = load i32*, i32** %5, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32* %216, i32** %5, align 8
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = load i64, i64* %6, align 8
  %220 = icmp slt i64 %218, %219
  br i1 %220, label %221, label %229

221:                                              ; preds = %208
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %223 = load i64, i64* %6, align 8
  %224 = load i32, i32* %8, align 4
  %225 = sext i32 %224 to i64
  %226 = sub nsw i64 %223, %225
  %227 = inttoptr i64 %226 to %struct.TYPE_9__*
  %228 = call i32 @ND_PRINT(%struct.TYPE_9__* %227)
  br label %229

229:                                              ; preds = %14, %20, %37, %43, %62, %68, %100, %106, %138, %144, %163, %172, %178, %197, %203, %221, %208
  ret void
}

declare dso_local i32 @asn1_parse(%struct.TYPE_9__*, i32*, i64, %struct.be*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_9__*) #1

declare dso_local i32 @asn1_print(%struct.TYPE_9__*, %struct.be*) #1

declare dso_local i32 @asn1_print_string(%struct.TYPE_9__*, %struct.be*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
