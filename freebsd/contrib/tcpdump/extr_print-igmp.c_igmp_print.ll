; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-igmp.c_igmp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-igmp.c_igmp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }
%struct.cksum_vec = type { i32*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"igmp\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"igmp query\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" v2\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c" [max resp time %d]\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" v1\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" [gaddr %s]\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" [len %d]\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"igmp v1 report %s\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"igmp v2 report %s\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"igmp v3 report\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"igmp leave %s\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"igmp dvmrp\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"igmp pimv1\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"igmp-%d\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c" bad igmp cksum %x!\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igmp_print(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1 x %struct.cksum_vec], align 16
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([5 x i8]* @.str to %struct.TYPE_11__*))
  br label %228

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ND_TCHECK(i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %179 [
    i32 17, label %23
    i32 18, label %90
    i32 22, label %112
    i32 34, label %125
    i32 23, label %132
    i32 19, label %145
    i32 20, label %162
    i32 30, label %169
    i32 31, label %174
  ]

23:                                               ; preds = %15
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([11 x i8]* @.str.1 to %struct.TYPE_11__*))
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %26, 12
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @print_igmpv3_query(%struct.TYPE_11__* %29, i32* %30, i32 %31)
  br label %89

33:                                               ; preds = %23
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ND_TCHECK(i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %33
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([4 x i8]* @.str.2 to %struct.TYPE_11__*))
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 100
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to %struct.TYPE_11__*
  %56 = call i32 @ND_PRINT(%struct.TYPE_11__* %55)
  br label %57

57:                                               ; preds = %49, %42
  br label %61

58:                                               ; preds = %33
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([4 x i8]* @.str.4 to %struct.TYPE_11__*))
  br label %61

61:                                               ; preds = %58, %57
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ND_TCHECK2(i32 %64, i32 4)
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = call i32 @EXTRACT_32BITS(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = call i32 @ipaddr_string(%struct.TYPE_11__* %72, i32* %74)
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to %struct.TYPE_11__*
  %78 = call i32 @ND_PRINT(%struct.TYPE_11__* %77)
  br label %79

79:                                               ; preds = %70, %61
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 8
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to %struct.TYPE_11__*
  %87 = call i32 @ND_PRINT(%struct.TYPE_11__* %86)
  br label %88

88:                                               ; preds = %82, %79
  br label %89

89:                                               ; preds = %88, %28
  br label %187

90:                                               ; preds = %15
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ND_TCHECK2(i32 %93, i32 4)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = call i32 @ipaddr_string(%struct.TYPE_11__* %96, i32* %98)
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to %struct.TYPE_11__*
  %102 = call i32 @ND_PRINT(%struct.TYPE_11__* %101)
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 8
  br i1 %104, label %105, label %111

105:                                              ; preds = %90
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to %struct.TYPE_11__*
  %110 = call i32 @ND_PRINT(%struct.TYPE_11__* %109)
  br label %111

111:                                              ; preds = %105, %90
  br label %187

112:                                              ; preds = %15
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ND_TCHECK2(i32 %115, i32 4)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  %121 = call i32 @ipaddr_string(%struct.TYPE_11__* %118, i32* %120)
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to %struct.TYPE_11__*
  %124 = call i32 @ND_PRINT(%struct.TYPE_11__* %123)
  br label %187

125:                                              ; preds = %15
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %127 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([15 x i8]* @.str.9 to %struct.TYPE_11__*))
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @print_igmpv3_report(%struct.TYPE_11__* %128, i32* %129, i32 %130)
  br label %187

132:                                              ; preds = %15
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 4
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ND_TCHECK2(i32 %135, i32 4)
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %139 = load i32*, i32** %5, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  %141 = call i32 @ipaddr_string(%struct.TYPE_11__* %138, i32* %140)
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to %struct.TYPE_11__*
  %144 = call i32 @ND_PRINT(%struct.TYPE_11__* %143)
  br label %187

145:                                              ; preds = %15
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %147 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([11 x i8]* @.str.11 to %struct.TYPE_11__*))
  %148 = load i32, i32* %6, align 4
  %149 = icmp slt i32 %148, 8
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = inttoptr i64 %153 to %struct.TYPE_11__*
  %155 = call i32 @ND_PRINT(%struct.TYPE_11__* %154)
  br label %161

156:                                              ; preds = %145
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %158 = load i32*, i32** %5, align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @dvmrp_print(%struct.TYPE_11__* %157, i32* %158, i32 %159)
  br label %161

161:                                              ; preds = %156, %150
  br label %187

162:                                              ; preds = %15
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %164 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([11 x i8]* @.str.12 to %struct.TYPE_11__*))
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %166 = load i32*, i32** %5, align 8
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @pimv1_print(%struct.TYPE_11__* %165, i32* %166, i32 %167)
  br label %187

169:                                              ; preds = %15
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %171 = load i32*, i32** %5, align 8
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @print_mresp(%struct.TYPE_11__* %170, i32* %171, i32 %172)
  br label %187

174:                                              ; preds = %15
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %176 = load i32*, i32** %5, align 8
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @print_mtrace(%struct.TYPE_11__* %175, i32* %176, i32 %177)
  br label %187

179:                                              ; preds = %15
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %181 = load i32*, i32** %5, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = inttoptr i64 %184 to %struct.TYPE_11__*
  %186 = call i32 @ND_PRINT(%struct.TYPE_11__* %185)
  br label %187

187:                                              ; preds = %179, %174, %169, %162, %161, %132, %125, %112, %111, %89
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %221

192:                                              ; preds = %187
  %193 = load i32, i32* %6, align 4
  %194 = icmp sge i32 %193, 4
  br i1 %194, label %195, label %221

195:                                              ; preds = %192
  %196 = load i32*, i32** %5, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %6, align 4
  %200 = call i64 @ND_TTEST2(i32 %198, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %221

202:                                              ; preds = %195
  %203 = load i32*, i32** %5, align 8
  %204 = getelementptr inbounds [1 x %struct.cksum_vec], [1 x %struct.cksum_vec]* %7, i64 0, i64 0
  %205 = getelementptr inbounds %struct.cksum_vec, %struct.cksum_vec* %204, i32 0, i32 0
  store i32* %203, i32** %205, align 16
  %206 = load i32, i32* %6, align 4
  %207 = getelementptr inbounds [1 x %struct.cksum_vec], [1 x %struct.cksum_vec]* %7, i64 0, i64 0
  %208 = getelementptr inbounds %struct.cksum_vec, %struct.cksum_vec* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 8
  %209 = getelementptr inbounds [1 x %struct.cksum_vec], [1 x %struct.cksum_vec]* %7, i64 0, i64 0
  %210 = call i64 @in_cksum(%struct.cksum_vec* %209, i32 1)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %202
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %214 = load i32*, i32** %5, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 2
  %216 = call i32 @EXTRACT_16BITS(i32* %215)
  %217 = sext i32 %216 to i64
  %218 = inttoptr i64 %217 to %struct.TYPE_11__*
  %219 = call i32 @ND_PRINT(%struct.TYPE_11__* %218)
  br label %220

220:                                              ; preds = %212, %202
  br label %221

221:                                              ; preds = %220, %195, %192, %187
  br label %228

222:                                              ; No predecessors!
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %224 = load i32, i32* @tstr, align 4
  %225 = sext i32 %224 to i64
  %226 = inttoptr i64 %225 to %struct.TYPE_11__*
  %227 = call i32 @ND_PRINT(%struct.TYPE_11__* %226)
  br label %228

228:                                              ; preds = %222, %221, %12
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_11__*) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @print_igmpv3_query(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @print_igmpv3_report(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @dvmrp_print(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @pimv1_print(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @print_mresp(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @print_mtrace(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i64 @ND_TTEST2(i32, i32) #1

declare dso_local i64 @in_cksum(%struct.cksum_vec*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
