; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isakmp.c_ikev1_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isakmp.c_ikev1_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }
%struct.isakmp = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.isakmp_gen = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c" phase %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" phase %d/others\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" I\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" ?\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" R\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"[%s%s]\00", align 1
@ISAKMP_FLAG_E = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ISAKMP_FLAG_C = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c" [encrypted %s]\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c" (len mismatch: isakmp %u/ip %u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i64, i32*, %struct.isakmp*)* @ikev1_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ikev1_print(%struct.TYPE_5__* %0, i32* %1, i64 %2, i32* %3, %struct.isakmp* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.isakmp*, align 8
  %11 = alloca %struct.isakmp*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.isakmp_gen*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.isakmp* %4, %struct.isakmp** %10, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = bitcast i32* %17 to %struct.isakmp*
  store %struct.isakmp* %18, %struct.isakmp** %11, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %12, align 8
  %22 = load %struct.isakmp*, %struct.isakmp** %10, align 8
  %23 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @EXTRACT_32BITS(i32 %24)
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 2
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %5
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.TYPE_5__*
  %36 = call i32 @ND_PRINT(%struct.TYPE_5__* %35)
  br label %43

37:                                               ; preds = %5
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to %struct.TYPE_5__*
  %42 = call i32 @ND_PRINT(%struct.TYPE_5__* %41)
  br label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.isakmp*, %struct.isakmp** %10, align 8
  %45 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %44, i32 0, i32 4
  %46 = call i32 @cookie_find(i32* %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %43
  %50 = load %struct.isakmp*, %struct.isakmp** %10, align 8
  %51 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %50, i32 0, i32 5
  %52 = call i64 @iszero(i32* %51, i32 4)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str.2 to %struct.TYPE_5__*))
  %57 = load i32*, i32** %9, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.isakmp*, %struct.isakmp** %10, align 8
  %61 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %60, i32 0, i32 4
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @cookie_record(i32* %61, i32* %62)
  br label %64

64:                                               ; preds = %59, %54
  br label %68

65:                                               ; preds = %49
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str.3 to %struct.TYPE_5__*))
  br label %68

68:                                               ; preds = %65, %64
  br label %96

69:                                               ; preds = %43
  %70 = load i32*, i32** %9, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i32, i32* %14, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = call i64 @cookie_isinitiator(i32 %73, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str.2 to %struct.TYPE_5__*))
  br label %95

80:                                               ; preds = %72, %69
  %81 = load i32*, i32** %9, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i32, i32* %14, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = call i64 @cookie_isresponder(i32 %84, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str.4 to %struct.TYPE_5__*))
  br label %94

91:                                               ; preds = %83, %80
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %93 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str.3 to %struct.TYPE_5__*))
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %77
  br label %96

96:                                               ; preds = %95, %68
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = load %struct.isakmp*, %struct.isakmp** %10, align 8
  %99 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ETYPESTR(i32 %100)
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to %struct.TYPE_5__*
  %104 = call i32 @ND_PRINT(%struct.TYPE_5__* %103)
  %105 = load %struct.isakmp*, %struct.isakmp** %10, align 8
  %106 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %129

109:                                              ; preds = %96
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %111 = load %struct.isakmp*, %struct.isakmp** %10, align 8
  %112 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ISAKMP_FLAG_E, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %119 = load %struct.isakmp*, %struct.isakmp** %10, align 8
  %120 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ISAKMP_FLAG_C, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %127 = bitcast i8* %126 to %struct.TYPE_5__*
  %128 = call i32 @ND_PRINT(%struct.TYPE_5__* %127)
  br label %129

129:                                              ; preds = %109, %96
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %171

134:                                              ; preds = %129
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %136 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([2 x i8]* @.str.10 to %struct.TYPE_5__*))
  %137 = load %struct.isakmp*, %struct.isakmp** %10, align 8
  %138 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ISAKMP_FLAG_E, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %134
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %145 = load %struct.isakmp*, %struct.isakmp** %10, align 8
  %146 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @NPSTR(i32 %147)
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to %struct.TYPE_5__*
  %151 = call i32 @ND_PRINT(%struct.TYPE_5__* %150)
  br label %172

152:                                              ; preds = %134
  %153 = load %struct.isakmp*, %struct.isakmp** %11, align 8
  %154 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %153, i64 1
  %155 = load %struct.isakmp*, %struct.isakmp** %10, align 8
  %156 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @CHECKLEN(%struct.isakmp* %154, i32 %157)
  %159 = load %struct.isakmp*, %struct.isakmp** %10, align 8
  %160 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %13, align 4
  %162 = load %struct.isakmp*, %struct.isakmp** %11, align 8
  %163 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %162, i64 1
  %164 = bitcast %struct.isakmp* %163 to %struct.isakmp_gen*
  store %struct.isakmp_gen* %164, %struct.isakmp_gen** %16, align 8
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %166 = load i32, i32* %13, align 4
  %167 = load %struct.isakmp_gen*, %struct.isakmp_gen** %16, align 8
  %168 = load i32*, i32** %12, align 8
  %169 = load i32, i32* %15, align 4
  %170 = call i32 @ikev1_sub_print(%struct.TYPE_5__* %165, i32 %166, %struct.isakmp_gen* %167, i32* %168, i32 %169, i32 0, i32 0, i32 0)
  br label %171

171:                                              ; preds = %152, %129
  br label %172

172:                                              ; preds = %171, %143
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %195

177:                                              ; preds = %172
  %178 = load %struct.isakmp*, %struct.isakmp** %10, align 8
  %179 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @ntohl(i32 %180)
  %182 = load i64, i64* %8, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %177
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %186 = load %struct.isakmp*, %struct.isakmp** %10, align 8
  %187 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @ntohl(i32 %188)
  %190 = trunc i64 %189 to i32
  %191 = load i64, i64* %8, align 8
  %192 = inttoptr i64 %191 to %struct.TYPE_5__*
  %193 = call i32 @ND_PRINT(%struct.TYPE_5__* %192)
  br label %194

194:                                              ; preds = %184, %177
  br label %195

195:                                              ; preds = %194, %172
  ret void
}

declare dso_local i64 @EXTRACT_32BITS(i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @cookie_find(i32*) #1

declare dso_local i64 @iszero(i32*, i32) #1

declare dso_local i32 @cookie_record(i32*, i32*) #1

declare dso_local i64 @cookie_isinitiator(i32, i32*) #1

declare dso_local i64 @cookie_isresponder(i32, i32*) #1

declare dso_local i32 @ETYPESTR(i32) #1

declare dso_local i32 @NPSTR(i32) #1

declare dso_local i32 @CHECKLEN(%struct.isakmp*, i32) #1

declare dso_local i32 @ikev1_sub_print(%struct.TYPE_5__*, i32, %struct.isakmp_gen*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
