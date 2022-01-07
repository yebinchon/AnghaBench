; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_read.c_ex_readfp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_read.c_ex_readfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_19__*, i8*, i32)* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"147|Reading...\00", align 1
@INTERRUPT_CHECK = common dso_local global i32 0, align 4
@BUSY_UPDATE = common dso_local global i32 0, align 4
@BUSY_ON = common dso_local global i32 0, align 4
@M_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"148|%s: %lu lines, %lu characters\00", align 1
@M_SYSERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BUSY_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_readfp(%struct.TYPE_19__* %0, i8* %1, i32* %2, %struct.TYPE_20__* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %14, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %28 = call %struct.TYPE_22__* @EXP(%struct.TYPE_19__* %27)
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %13, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %15, align 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %16, align 4
  br label %32

32:                                               ; preds = %91, %6
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @ex_getline(%struct.TYPE_19__* %33, i32* %34, i64* %17)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %96

38:                                               ; preds = %32
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* @INTERRUPT_CHECK, align 4
  %42 = srem i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %38
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %46 = call i64 @INTERRUPTED(%struct.TYPE_19__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %96

49:                                               ; preds = %44
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %49
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_19__*, i8*, i32)*, i32 (%struct.TYPE_19__*, i8*, i32)** %54, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %57 = load i8*, i8** %21, align 8
  %58 = load i8*, i8** %21, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @BUSY_UPDATE, align 4
  br label %64

62:                                               ; preds = %52
  %63 = load i32, i32* @BUSY_ON, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = call i32 %55(%struct.TYPE_19__* %56, i8* %57, i32 %65)
  store i8* null, i8** %21, align 8
  br label %67

67:                                               ; preds = %64, %49
  br label %68

68:                                               ; preds = %67, %38
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %17, align 8
  %77 = load i32*, i32** %23, align 8
  %78 = load i64, i64* %22, align 8
  %79 = call i32 @FILE2INT5(%struct.TYPE_19__* %69, i32 %72, i32 %75, i64 %76, i32* %77, i64 %78)
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %81 = load i32, i32* %16, align 4
  %82 = load i32*, i32** %23, align 8
  %83 = load i64, i64* %22, align 8
  %84 = call i64 @db_append(%struct.TYPE_19__* %80, i32 1, i32 %81, i32* %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %68
  br label %134

87:                                               ; preds = %68
  %88 = load i64, i64* %17, align 8
  %89 = load i64, i64* %18, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %18, align 8
  br label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %32

96:                                               ; preds = %48, %32
  %97 = load i32*, i32** %9, align 8
  %98 = call i64 @ferror(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32*, i32** %9, align 8
  %102 = call i64 @fclose(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100, %96
  br label %134

105:                                              ; preds = %100
  %106 = load i32*, i32** %11, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %15, align 4
  %110 = load i32*, i32** %11, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %132, label %114

114:                                              ; preds = %111
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = call i8* @msg_print(%struct.TYPE_19__* %115, i8* %116, i32* %19)
  store i8* %117, i8** %21, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %119 = load i32, i32* @M_INFO, align 4
  %120 = load i8*, i8** %21, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %18, align 8
  %124 = call i32 @msgq(%struct.TYPE_19__* %118, i32 %119, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %120, i64 %122, i64 %123)
  %125 = load i32, i32* %19, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %114
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %129 = load i8*, i8** %21, align 8
  %130 = call i32 @FREE_SPACE(%struct.TYPE_19__* %128, i8* %129, i32 0)
  br label %131

131:                                              ; preds = %127, %114
  br label %132

132:                                              ; preds = %131, %111
  store i32 0, i32* %20, align 4
  br i1 false, label %133, label %141

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133, %104, %86
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %136 = load i32, i32* @M_SYSERR, align 4
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 @msgq_str(%struct.TYPE_19__* %135, i32 %136, i8* %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %139 = load i32*, i32** %9, align 8
  %140 = call i64 @fclose(i32* %139)
  store i32 1, i32* %20, align 4
  br label %141

141:                                              ; preds = %134, %132
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %141
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = load i32 (%struct.TYPE_19__*, i8*, i32)*, i32 (%struct.TYPE_19__*, i8*, i32)** %146, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %149 = load i32, i32* @BUSY_OFF, align 4
  %150 = call i32 %147(%struct.TYPE_19__* %148, i8* null, i32 %149)
  br label %151

151:                                              ; preds = %144, %141
  %152 = load i32, i32* %20, align 4
  ret i32 %152
}

declare dso_local %struct.TYPE_22__* @EXP(%struct.TYPE_19__*) #1

declare dso_local i32 @ex_getline(%struct.TYPE_19__*, i32*, i64*) #1

declare dso_local i64 @INTERRUPTED(%struct.TYPE_19__*) #1

declare dso_local i32 @FILE2INT5(%struct.TYPE_19__*, i32, i32, i64, i32*, i64) #1

declare dso_local i64 @db_append(%struct.TYPE_19__*, i32, i32, i32*, i64) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i8* @msg_print(%struct.TYPE_19__*, i8*, i32*) #1

declare dso_local i32 @msgq(%struct.TYPE_19__*, i32, i8*, i8*, i64, i64) #1

declare dso_local i32 @FREE_SPACE(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @msgq_str(%struct.TYPE_19__*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
