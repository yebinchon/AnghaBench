; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-radius.c_print_attr_num.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-radius.c_print_attr_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8**, i32 }

@.str = private unnamed_addr constant [22 x i8] c"ERROR: length %u != 4\00", align 1
@attr_type = common dso_local global %struct.TYPE_2__* null, align 8
@print_attr_num.table = internal global i8** null, align 8
@TUNNEL_TYPE = common dso_local global i64 0, align 8
@TUNNEL_MEDIUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Tag[Unused] \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Tag[%d] \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"#%u\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"NAS Select\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%02d secs\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"%02d:%02d min\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%02d:%02d:%02d hours\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Unnumbered\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"NAS assigned\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"%s (0x%02x) \00", align 1
@rfc4675_tagged = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"Unknown tag\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i32, i64)* @print_attr_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_attr_num(i32* %0, i64* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 4
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i32*
  %18 = call i32 @ND_PRINT(i32* %17)
  br label %239

19:                                               ; preds = %4
  %20 = load i64*, i64** %6, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @ND_TCHECK2(i64 %22, i32 4)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @attr_type, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %104

30:                                               ; preds = %19
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @attr_type, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i8**, i8*** %34, align 8
  store i8** %35, i8*** @print_attr_num.table, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @TUNNEL_TYPE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %30
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @TUNNEL_MEDIUM, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39, %30
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @ND_PRINT(i32* bitcast ([13 x i8]* @.str.1 to i32*))
  br label %56

50:                                               ; preds = %43
  %51 = load i32*, i32** %5, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = call i32 @ND_PRINT(i32* %54)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i64*, i64** %6, align 8
  %58 = getelementptr inbounds i64, i64* %57, i32 1
  store i64* %58, i64** %6, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = call i64 @EXTRACT_24BITS(i64* %59)
  store i64 %60, i64* %10, align 8
  br label %65

61:                                               ; preds = %39
  %62 = load i64*, i64** %6, align 8
  %63 = call i32 @EXTRACT_32BITS(i64* %62)
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %10, align 8
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @attr_type, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @attr_type, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %72, %77
  %79 = sext i32 %78 to i64
  %80 = icmp ule i64 %66, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %65
  %82 = load i64, i64* %10, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @attr_type, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = icmp uge i64 %82, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load i32*, i32** %5, align 8
  %92 = load i8**, i8*** @print_attr_num.table, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds i8*, i8** %92, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = bitcast i8* %95 to i32*
  %97 = call i32 @ND_PRINT(i32* %96)
  br label %103

98:                                               ; preds = %81, %65
  %99 = load i32*, i32** %5, align 8
  %100 = load i64, i64* %10, align 8
  %101 = inttoptr i64 %100 to i32*
  %102 = call i32 @ND_PRINT(i32* %101)
  br label %103

103:                                              ; preds = %98, %90
  br label %232

104:                                              ; preds = %19
  %105 = load i64, i64* %8, align 8
  switch i64 %105, label %224 [
    i64 131, label %106
    i64 129, label %121
    i64 130, label %121
    i64 137, label %121
    i64 135, label %121
    i64 136, label %121
    i64 133, label %156
    i64 132, label %171
    i64 128, label %186
    i64 134, label %207
  ]

106:                                              ; preds = %104
  %107 = load i64*, i64** %6, align 8
  %108 = call i32 @EXTRACT_32BITS(i64* %107)
  %109 = icmp eq i32 %108, -2
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @ND_PRINT(i32* bitcast ([11 x i8]* @.str.5 to i32*))
  br label %120

113:                                              ; preds = %106
  %114 = load i32*, i32** %5, align 8
  %115 = load i64*, i64** %6, align 8
  %116 = call i32 @EXTRACT_32BITS(i64* %115)
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i32*
  %119 = call i32 @ND_PRINT(i32* %118)
  br label %120

120:                                              ; preds = %113, %110
  br label %231

121:                                              ; preds = %104, %104, %104, %104, %104
  %122 = load i64*, i64** %6, align 8
  %123 = call i32 @EXTRACT_32BITS(i64* %122)
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %9, align 8
  %125 = load i64, i64* %9, align 8
  %126 = icmp ult i64 %125, 60
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load i32*, i32** %5, align 8
  %129 = load i64, i64* %9, align 8
  %130 = inttoptr i64 %129 to i32*
  %131 = call i32 @ND_PRINT(i32* %130)
  br label %155

132:                                              ; preds = %121
  %133 = load i64, i64* %9, align 8
  %134 = icmp ult i64 %133, 3600
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load i32*, i32** %5, align 8
  %137 = load i64, i64* %9, align 8
  %138 = udiv i64 %137, 60
  %139 = load i64, i64* %9, align 8
  %140 = urem i64 %139, 60
  %141 = inttoptr i64 %140 to i32*
  %142 = call i32 @ND_PRINT(i32* %141)
  br label %154

143:                                              ; preds = %132
  %144 = load i32*, i32** %5, align 8
  %145 = load i64, i64* %9, align 8
  %146 = udiv i64 %145, 3600
  %147 = load i64, i64* %9, align 8
  %148 = urem i64 %147, 3600
  %149 = udiv i64 %148, 60
  %150 = load i64, i64* %9, align 8
  %151 = urem i64 %150, 60
  %152 = inttoptr i64 %151 to i32*
  %153 = call i32 @ND_PRINT(i32* %152)
  br label %154

154:                                              ; preds = %143, %135
  br label %155

155:                                              ; preds = %154, %127
  br label %231

156:                                              ; preds = %104
  %157 = load i64*, i64** %6, align 8
  %158 = call i32 @EXTRACT_32BITS(i64* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %156
  %161 = load i32*, i32** %5, align 8
  %162 = load i64*, i64** %6, align 8
  %163 = call i32 @EXTRACT_32BITS(i64* %162)
  %164 = sext i32 %163 to i64
  %165 = inttoptr i64 %164 to i32*
  %166 = call i32 @ND_PRINT(i32* %165)
  br label %170

167:                                              ; preds = %156
  %168 = load i32*, i32** %5, align 8
  %169 = call i32 @ND_PRINT(i32* bitcast ([11 x i8]* @.str.10 to i32*))
  br label %170

170:                                              ; preds = %167, %160
  br label %231

171:                                              ; preds = %104
  %172 = load i64*, i64** %6, align 8
  %173 = call i32 @EXTRACT_32BITS(i64* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %171
  %176 = load i32*, i32** %5, align 8
  %177 = load i64*, i64** %6, align 8
  %178 = call i32 @EXTRACT_32BITS(i64* %177)
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to i32*
  %181 = call i32 @ND_PRINT(i32* %180)
  br label %185

182:                                              ; preds = %171
  %183 = load i32*, i32** %5, align 8
  %184 = call i32 @ND_PRINT(i32* bitcast ([13 x i8]* @.str.11 to i32*))
  br label %185

185:                                              ; preds = %182, %175
  br label %231

186:                                              ; preds = %104
  %187 = load i64*, i64** %6, align 8
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %186
  %191 = load i32*, i32** %5, align 8
  %192 = load i64*, i64** %6, align 8
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to i32*
  %195 = call i32 @ND_PRINT(i32* %194)
  br label %199

196:                                              ; preds = %186
  %197 = load i32*, i32** %5, align 8
  %198 = call i32 @ND_PRINT(i32* bitcast ([13 x i8]* @.str.1 to i32*))
  br label %199

199:                                              ; preds = %196, %190
  %200 = load i64*, i64** %6, align 8
  %201 = getelementptr inbounds i64, i64* %200, i32 1
  store i64* %201, i64** %6, align 8
  %202 = load i32*, i32** %5, align 8
  %203 = load i64*, i64** %6, align 8
  %204 = call i64 @EXTRACT_24BITS(i64* %203)
  %205 = inttoptr i64 %204 to i32*
  %206 = call i32 @ND_PRINT(i32* %205)
  br label %231

207:                                              ; preds = %104
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* @rfc4675_tagged, align 4
  %210 = load i64*, i64** %6, align 8
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @tok2str(i32 %209, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i64 %211)
  %213 = load i64*, i64** %6, align 8
  %214 = load i64, i64* %213, align 8
  %215 = inttoptr i64 %214 to i32*
  %216 = call i32 @ND_PRINT(i32* %215)
  %217 = load i64*, i64** %6, align 8
  %218 = getelementptr inbounds i64, i64* %217, i32 1
  store i64* %218, i64** %6, align 8
  %219 = load i32*, i32** %5, align 8
  %220 = load i64*, i64** %6, align 8
  %221 = call i64 @EXTRACT_24BITS(i64* %220)
  %222 = inttoptr i64 %221 to i32*
  %223 = call i32 @ND_PRINT(i32* %222)
  br label %231

224:                                              ; preds = %104
  %225 = load i32*, i32** %5, align 8
  %226 = load i64*, i64** %6, align 8
  %227 = call i32 @EXTRACT_32BITS(i64* %226)
  %228 = sext i32 %227 to i64
  %229 = inttoptr i64 %228 to i32*
  %230 = call i32 @ND_PRINT(i32* %229)
  br label %231

231:                                              ; preds = %224, %207, %199, %185, %170, %155, %120
  br label %232

232:                                              ; preds = %231, %103
  br label %239

233:                                              ; No predecessors!
  %234 = load i32*, i32** %5, align 8
  %235 = load i32, i32* @tstr, align 4
  %236 = sext i32 %235 to i64
  %237 = inttoptr i64 %236 to i32*
  %238 = call i32 @ND_PRINT(i32* %237)
  br label %239

239:                                              ; preds = %233, %232, %13
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK2(i64, i32) #1

declare dso_local i64 @EXTRACT_24BITS(i64*) #1

declare dso_local i32 @EXTRACT_32BITS(i64*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
