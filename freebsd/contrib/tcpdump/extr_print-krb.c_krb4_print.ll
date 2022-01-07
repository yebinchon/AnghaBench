; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-krb.c_krb4_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-krb.c_krb4_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.krb = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" %s %s: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@type2str = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c" %dmin \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"v%d \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" (%d)\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@kerr2str = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@PRINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @krb4_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @krb4_print(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.krb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.krb*
  store %struct.krb* %9, %struct.krb** %5, align 8
  %10 = load %struct.krb*, %struct.krb** %5, align 8
  %11 = getelementptr inbounds %struct.krb, %struct.krb* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp uge i32* %11, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = load i32, i32* @tstr, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_5__*
  %21 = call i32 @ND_PRINT(%struct.TYPE_5__* %20)
  br label %213

22:                                               ; preds = %2
  %23 = load %struct.krb*, %struct.krb** %5, align 8
  %24 = getelementptr inbounds %struct.krb, %struct.krb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 510
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = load %struct.krb*, %struct.krb** %5, align 8
  %29 = getelementptr inbounds %struct.krb, %struct.krb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %35 = load i32, i32* @type2str, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @tok2str(i32 %35, i32* null, i32 %36)
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.TYPE_5__*
  %40 = call i32 @ND_PRINT(%struct.TYPE_5__* %39)
  %41 = load i32, i32* %6, align 4
  switch i32 %41, label %203 [
    i32 128, label %42
    i32 131, label %86
    i32 129, label %129
    i32 130, label %159
  ]

42:                                               ; preds = %22
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32* @krb4_print_hdr(%struct.TYPE_5__* %43, i32* %44)
  store i32* %45, i32** %4, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %213

48:                                               ; preds = %42
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  store i32* %50, i32** %4, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ND_TCHECK(i32 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %4, align 8
  %57 = load i32, i32* %55, align 4
  %58 = mul nsw i32 %57, 5
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to %struct.TYPE_5__*
  %61 = call i32 @ND_PRINT(%struct.TYPE_5__* %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 (%struct.TYPE_5__*, i32*, i32*, ...) bitcast (i32 (...)* @c_print to i32 (%struct.TYPE_5__*, i32*, i32*, ...)*)(%struct.TYPE_5__* %62, i32* %63, i32* %66)
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i32*
  store i32* %69, i32** %4, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %48
  br label %207

72:                                               ; preds = %48
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([2 x i8]* @.str.5 to %struct.TYPE_5__*))
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 (%struct.TYPE_5__*, i32*, i32*, ...) bitcast (i32 (...)* @c_print to i32 (%struct.TYPE_5__*, i32*, i32*, ...)*)(%struct.TYPE_5__* %75, i32* %76, i32* %79)
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i32*
  store i32* %82, i32** %4, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  br label %207

85:                                               ; preds = %72
  br label %206

86:                                               ; preds = %22
  %87 = load i32*, i32** %4, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  store i32* %88, i32** %4, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ND_TCHECK(i32 %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %4, align 8
  %95 = load i32, i32* %93, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to %struct.TYPE_5__*
  %98 = call i32 @ND_PRINT(%struct.TYPE_5__* %97)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 (%struct.TYPE_5__*, i32*, i32*, ...) bitcast (i32 (...)* @c_print to i32 (%struct.TYPE_5__*, i32*, i32*, ...)*)(%struct.TYPE_5__* %99, i32* %100, i32* %103)
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i32*
  store i32* %106, i32** %4, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %86
  br label %207

109:                                              ; preds = %86
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ND_TCHECK(i32 %111)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %114 = load i32*, i32** %4, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %4, align 8
  %116 = load i32, i32* %114, align 4
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to %struct.TYPE_5__*
  %119 = call i32 @ND_PRINT(%struct.TYPE_5__* %118)
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ND_TCHECK(i32 %121)
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %124 = load i32*, i32** %4, align 8
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to %struct.TYPE_5__*
  %128 = call i32 @ND_PRINT(%struct.TYPE_5__* %127)
  br label %206

129:                                              ; preds = %22
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %131 = load i32*, i32** %4, align 8
  %132 = call i32* @krb4_print_hdr(%struct.TYPE_5__* %130, i32* %131)
  store i32* %132, i32** %4, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %213

135:                                              ; preds = %129
  %136 = load i32*, i32** %4, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 10
  store i32* %137, i32** %4, align 8
  %138 = load i32*, i32** %4, align 8
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ND_TCHECK2(i32 %139, i32 2)
  %141 = load %struct.krb*, %struct.krb** %5, align 8
  %142 = getelementptr inbounds %struct.krb, %struct.krb* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 1
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %135
  %147 = load i32*, i32** %4, align 8
  %148 = call i32 (i32*, ...) bitcast (i32 (...)* @EXTRACT_LE_16BITS to i32 (i32*, ...)*)(i32* %147)
  br label %152

149:                                              ; preds = %135
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 (i32*, ...) bitcast (i32 (...)* @EXTRACT_16BITS to i32 (i32*, ...)*)(i32* %150)
  br label %152

152:                                              ; preds = %149, %146
  %153 = phi i32 [ %148, %146 ], [ %151, %149 ]
  store i32 %153, i32* %7, align 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to %struct.TYPE_5__*
  %158 = call i32 @ND_PRINT(%struct.TYPE_5__* %157)
  br label %206

159:                                              ; preds = %22
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %161 = load i32*, i32** %4, align 8
  %162 = call i32* @krb4_print_hdr(%struct.TYPE_5__* %160, i32* %161)
  store i32* %162, i32** %4, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %213

165:                                              ; preds = %159
  %166 = load i32*, i32** %4, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 4
  store i32* %167, i32** %4, align 8
  %168 = load i32*, i32** %4, align 8
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @ND_TCHECK2(i32 %169, i32 2)
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %172 = load i32, i32* @kerr2str, align 4
  %173 = load %struct.krb*, %struct.krb** %5, align 8
  %174 = getelementptr inbounds %struct.krb, %struct.krb* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, 1
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %165
  %179 = load i32*, i32** %4, align 8
  %180 = call i32 (i32*, ...) bitcast (i32 (...)* @EXTRACT_LE_16BITS to i32 (i32*, ...)*)(i32* %179)
  br label %184

181:                                              ; preds = %165
  %182 = load i32*, i32** %4, align 8
  %183 = call i32 (i32*, ...) bitcast (i32 (...)* @EXTRACT_16BITS to i32 (i32*, ...)*)(i32* %182)
  br label %184

184:                                              ; preds = %181, %178
  %185 = phi i32 [ %180, %178 ], [ %183, %181 ]
  %186 = call i32 @tok2str(i32 %172, i32* null, i32 %185)
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to %struct.TYPE_5__*
  %189 = call i32 @ND_PRINT(%struct.TYPE_5__* %188)
  %190 = load i32*, i32** %4, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 4
  store i32* %191, i32** %4, align 8
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %193 = load i32*, i32** %4, align 8
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 (%struct.TYPE_5__*, i32*, i32*, ...) bitcast (i32 (...)* @c_print to i32 (%struct.TYPE_5__*, i32*, i32*, ...)*)(%struct.TYPE_5__* %192, i32* %193, i32* %196)
  %198 = sext i32 %197 to i64
  %199 = inttoptr i64 %198 to i32*
  store i32* %199, i32** %4, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %184
  br label %207

202:                                              ; preds = %184
  br label %206

203:                                              ; preds = %22
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %205 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([10 x i8]* @.str.9 to %struct.TYPE_5__*))
  br label %206

206:                                              ; preds = %203, %202, %152, %109, %85
  br label %213

207:                                              ; preds = %201, %108, %84, %71
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %209 = load i32, i32* @tstr, align 4
  %210 = sext i32 %209 to i64
  %211 = inttoptr i64 %210 to %struct.TYPE_5__*
  %212 = call i32 @ND_PRINT(%struct.TYPE_5__* %211)
  br label %213

213:                                              ; preds = %207, %206, %164, %134, %47, %16
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @tok2str(i32, i32*, i32) #1

declare dso_local i32* @krb4_print_hdr(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @c_print(...) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_LE_16BITS(...) #1

declare dso_local i32 @EXTRACT_16BITS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
