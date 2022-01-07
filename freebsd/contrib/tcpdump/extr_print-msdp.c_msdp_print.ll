; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-msdp.c_msdp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-msdp.c_msdp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@MSDP_TYPE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" msdp:\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" [len %u]\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" SA\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" SA-Response\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" %u entries\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" [w/data]\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" SA-Request\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" for %s\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" Keepalive\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"[len=%d] \00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c" Notification\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c" [type=%d len=%d]\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c" [|msdp]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msdp_print(%struct.TYPE_6__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ND_TCHECK2(i32 %10, i32 3)
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = call i32 @EXTRACT_16BITS(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ugt i32 %17, 1500
  br i1 %18, label %29, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp ult i32 %20, 3
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MSDP_TYPE_MAX, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %22, %19, %3
  br label %171

30:                                               ; preds = %25
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([7 x i8]* @.str to %struct.TYPE_6__*))
  br label %33

33:                                               ; preds = %159, %30
  %34 = load i64, i64* %6, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %170

36:                                               ; preds = %33
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ND_TCHECK2(i32 %38, i32 3)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = call i32 @EXTRACT_16BITS(i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ugt i32 %45, 1400
  br i1 %46, label %52, label %47

47:                                               ; preds = %36
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47, %36
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = inttoptr i64 %55 to %struct.TYPE_6__*
  %57 = call i32 @ND_PRINT(%struct.TYPE_6__* %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load i32, i32* %8, align 4
  %60 = icmp ult i32 %59, 3
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %171

62:                                               ; preds = %58
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  store i32* %64, i32** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = sub nsw i64 %65, 3
  store i64 %66, i64* %6, align 8
  %67 = load i32, i32* %7, align 4
  switch i32 %67, label %152 [
    i32 1, label %68
    i32 3, label %68
    i32 2, label %123
    i32 4, label %137
    i32 5, label %149
  ]

68:                                               ; preds = %62, %62
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([4 x i8]* @.str.2 to %struct.TYPE_6__*))
  br label %77

74:                                               ; preds = %68
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([13 x i8]* @.str.3 to %struct.TYPE_6__*))
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ND_TCHECK(i32 %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to %struct.TYPE_6__*
  %86 = call i32 @ND_PRINT(%struct.TYPE_6__* %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %88, 12
  %90 = add nsw i32 %89, 8
  %91 = sext i32 %90 to i64
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %95, label %122

95:                                               ; preds = %77
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([10 x i8]* @.str.5 to %struct.TYPE_6__*))
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %102, label %121

102:                                              ; preds = %95
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([2 x i8]* @.str.6 to %struct.TYPE_6__*))
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, 12
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  %112 = getelementptr inbounds i32, i32* %111, i64 8
  %113 = getelementptr inbounds i32, i32* %112, i64 -3
  %114 = load i32, i32* %8, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %116, 12
  %118 = add nsw i32 %117, 8
  %119 = sub i32 %114, %118
  %120 = call i32 @ip_print(%struct.TYPE_6__* %105, i32* %113, i32 %119)
  br label %121

121:                                              ; preds = %102, %95
  br label %122

122:                                              ; preds = %121, %77
  br label %159

123:                                              ; preds = %62
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([12 x i8]* @.str.7 to %struct.TYPE_6__*))
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ND_TCHECK2(i32 %127, i32 5)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = load i32*, i32** %5, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = call i32 @ipaddr_string(%struct.TYPE_6__* %130, i32* %132)
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to %struct.TYPE_6__*
  %136 = call i32 @ND_PRINT(%struct.TYPE_6__* %135)
  br label %159

137:                                              ; preds = %62
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %139 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([11 x i8]* @.str.9 to %struct.TYPE_6__*))
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 3
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %144 = load i32, i32* %8, align 4
  %145 = zext i32 %144 to i64
  %146 = inttoptr i64 %145 to %struct.TYPE_6__*
  %147 = call i32 @ND_PRINT(%struct.TYPE_6__* %146)
  br label %148

148:                                              ; preds = %142, %137
  br label %159

149:                                              ; preds = %62
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %151 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([14 x i8]* @.str.11 to %struct.TYPE_6__*))
  br label %159

152:                                              ; preds = %62
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %8, align 4
  %156 = zext i32 %155 to i64
  %157 = inttoptr i64 %156 to %struct.TYPE_6__*
  %158 = call i32 @ND_PRINT(%struct.TYPE_6__* %157)
  br label %159

159:                                              ; preds = %152, %149, %148, %123, %122
  %160 = load i32, i32* %8, align 4
  %161 = sub i32 %160, 3
  %162 = load i32*, i32** %5, align 8
  %163 = zext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %5, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sub i32 %165, 3
  %167 = zext i32 %166 to i64
  %168 = load i64, i64* %6, align 8
  %169 = sub nsw i64 %168, %167
  store i64 %169, i64* %6, align 8
  br label %33

170:                                              ; preds = %33
  br label %174

171:                                              ; preds = %61, %29
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %173 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([9 x i8]* @.str.13 to %struct.TYPE_6__*))
  br label %174

174:                                              ; preds = %171, %170
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ip_print(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
