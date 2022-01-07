; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-hsrp.c_hsrp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-hsrp.c_hsrp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.hsrp = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"HSRPv%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@op_code_str = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"unknown (%d)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%d: \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"state=%s \00", align 1
@states = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"Unknown (%d)\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"group=%d \00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"[reserved=%d!] \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"addr=%s\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" hellotime=\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c" holdtime=\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c" priority=%d\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c" auth=\22\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"[|hsrp]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hsrp_print(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hsrp*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = bitcast i32* %8 to %struct.hsrp*
  store %struct.hsrp* %9, %struct.hsrp** %7, align 8
  %10 = load %struct.hsrp*, %struct.hsrp** %7, align 8
  %11 = getelementptr inbounds %struct.hsrp, %struct.hsrp* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @ND_TCHECK(i64 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = load %struct.hsrp*, %struct.hsrp** %7, align 8
  %16 = getelementptr inbounds %struct.hsrp, %struct.hsrp* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_7__*
  %19 = call i32 @ND_PRINT(%struct.TYPE_7__* %18)
  %20 = load %struct.hsrp*, %struct.hsrp** %7, align 8
  %21 = getelementptr inbounds %struct.hsrp, %struct.hsrp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %144

25:                                               ; preds = %3
  %26 = load %struct.hsrp*, %struct.hsrp** %7, align 8
  %27 = getelementptr inbounds %struct.hsrp, %struct.hsrp* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ND_TCHECK(i64 %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.1 to %struct.TYPE_7__*))
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = load i32, i32* @op_code_str, align 4
  %34 = load %struct.hsrp*, %struct.hsrp** %7, align 8
  %35 = getelementptr inbounds %struct.hsrp, %struct.hsrp* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @tok2strary(i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %36)
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.TYPE_7__*
  %40 = call i32 @ND_PRINT(%struct.TYPE_7__* %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to %struct.TYPE_7__*
  %45 = call i32 @ND_PRINT(%struct.TYPE_7__* %44)
  %46 = load %struct.hsrp*, %struct.hsrp** %7, align 8
  %47 = getelementptr inbounds %struct.hsrp, %struct.hsrp* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @ND_TCHECK(i64 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = load i32, i32* @states, align 4
  %52 = load %struct.hsrp*, %struct.hsrp** %7, align 8
  %53 = getelementptr inbounds %struct.hsrp, %struct.hsrp* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @tok2str(i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i64 %54)
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to %struct.TYPE_7__*
  %58 = call i32 @ND_PRINT(%struct.TYPE_7__* %57)
  %59 = load %struct.hsrp*, %struct.hsrp** %7, align 8
  %60 = getelementptr inbounds %struct.hsrp, %struct.hsrp* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @ND_TCHECK(i64 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = load %struct.hsrp*, %struct.hsrp** %7, align 8
  %65 = getelementptr inbounds %struct.hsrp, %struct.hsrp* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.TYPE_7__*
  %68 = call i32 @ND_PRINT(%struct.TYPE_7__* %67)
  %69 = load %struct.hsrp*, %struct.hsrp** %7, align 8
  %70 = getelementptr inbounds %struct.hsrp, %struct.hsrp* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @ND_TCHECK(i64 %71)
  %73 = load %struct.hsrp*, %struct.hsrp** %7, align 8
  %74 = getelementptr inbounds %struct.hsrp, %struct.hsrp* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %25
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = load %struct.hsrp*, %struct.hsrp** %7, align 8
  %80 = getelementptr inbounds %struct.hsrp, %struct.hsrp* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.TYPE_7__*
  %83 = call i32 @ND_PRINT(%struct.TYPE_7__* %82)
  br label %84

84:                                               ; preds = %77, %25
  %85 = load %struct.hsrp*, %struct.hsrp** %7, align 8
  %86 = getelementptr inbounds %struct.hsrp, %struct.hsrp* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @ND_TCHECK(i64 %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = load %struct.hsrp*, %struct.hsrp** %7, align 8
  %92 = getelementptr inbounds %struct.hsrp, %struct.hsrp* %91, i32 0, i32 5
  %93 = call i32 @ipaddr_string(%struct.TYPE_7__* %90, i64* %92)
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to %struct.TYPE_7__*
  %96 = call i32 @ND_PRINT(%struct.TYPE_7__* %95)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %140

101:                                              ; preds = %84
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([12 x i8]* @.str.10 to %struct.TYPE_7__*))
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = load %struct.hsrp*, %struct.hsrp** %7, align 8
  %106 = getelementptr inbounds %struct.hsrp, %struct.hsrp* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @unsigned_relts_print(%struct.TYPE_7__* %104, i32 %107)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([11 x i8]* @.str.11 to %struct.TYPE_7__*))
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = load %struct.hsrp*, %struct.hsrp** %7, align 8
  %113 = getelementptr inbounds %struct.hsrp, %struct.hsrp* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @unsigned_relts_print(%struct.TYPE_7__* %111, i32 %114)
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = load %struct.hsrp*, %struct.hsrp** %7, align 8
  %118 = getelementptr inbounds %struct.hsrp, %struct.hsrp* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to %struct.TYPE_7__*
  %122 = call i32 @ND_PRINT(%struct.TYPE_7__* %121)
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([8 x i8]* @.str.13 to %struct.TYPE_7__*))
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = load %struct.hsrp*, %struct.hsrp** %7, align 8
  %127 = getelementptr inbounds %struct.hsrp, %struct.hsrp* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @fn_printn(%struct.TYPE_7__* %125, i32 %128, i32 4, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %101
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %136 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.14 to %struct.TYPE_7__*))
  br label %141

137:                                              ; preds = %101
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %139 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.14 to %struct.TYPE_7__*))
  br label %140

140:                                              ; preds = %137, %84
  br label %144

141:                                              ; preds = %134
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %143 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([8 x i8]* @.str.15 to %struct.TYPE_7__*))
  br label %144

144:                                              ; preds = %141, %140, %24
  ret void
}

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @tok2strary(i32, i8*, i64) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_7__*, i64*) #1

declare dso_local i32 @unsigned_relts_print(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @fn_printn(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
