; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isakmp.c_isakmp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isakmp.c_isakmp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i64, i32* }
%struct.isakmp = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"[|isakmp]\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"isakmp\00", align 1
@ISAKMP_VERS_MAJOR = common dso_local global i32 0, align 4
@ISAKMP_VERS_MAJOR_SHIFT = common dso_local global i32 0, align 4
@ISAKMP_VERS_MINOR = common dso_local global i32 0, align 4
@ISAKMP_VERS_MINOR_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c" %d.%d\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" msgid \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" cookie \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isakmp_print(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.isakmp*, align 8
  %10 = alloca %struct.isakmp, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to %struct.isakmp*
  store %struct.isakmp* %15, %struct.isakmp** %9, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = bitcast i32* %19 to %struct.isakmp*
  %21 = load %struct.isakmp*, %struct.isakmp** %9, align 8
  %22 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %21, i64 1
  %23 = icmp ult %struct.isakmp* %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([10 x i8]* @.str to %struct.TYPE_8__*))
  br label %98

27:                                               ; preds = %4
  %28 = load %struct.isakmp*, %struct.isakmp** %9, align 8
  %29 = call i32 @UNALIGNED_MEMCPY(%struct.isakmp* %10, %struct.isakmp* %28, i32 16)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([7 x i8]* @.str.1 to %struct.TYPE_8__*))
  %32 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %10, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ISAKMP_VERS_MAJOR, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @ISAKMP_VERS_MAJOR_SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %12, align 4
  %38 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ISAKMP_VERS_MINOR, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @ISAKMP_VERS_MINOR_SHIFT, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %13, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %27
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to %struct.TYPE_8__*
  %54 = call i32 @ND_PRINT(%struct.TYPE_8__* %53)
  br label %55

55:                                               ; preds = %48, %27
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([8 x i8]* @.str.3 to %struct.TYPE_8__*))
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %10, i32 0, i32 3
  %65 = call i32 @hexprint(%struct.TYPE_8__* %63, i32* %64, i32 4)
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 1, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([9 x i8]* @.str.4 to %struct.TYPE_8__*))
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %10, i32 0, i32 2
  %76 = call i32 @hexprint(%struct.TYPE_8__* %74, i32* %75, i32 4)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([3 x i8]* @.str.5 to %struct.TYPE_8__*))
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.isakmp, %struct.isakmp* %10, i32 0, i32 1
  %81 = call i32 @hexprint(%struct.TYPE_8__* %79, i32* %80, i32 4)
  br label %82

82:                                               ; preds = %71, %66
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([2 x i8]* @.str.6 to %struct.TYPE_8__*))
  %85 = load i32, i32* %12, align 4
  switch i32 %85, label %98 [
    i32 129, label %86
    i32 128, label %92
  ]

86:                                               ; preds = %82
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @ikev1_print(%struct.TYPE_8__* %87, i32* %88, i32 %89, i32* %90, %struct.isakmp* %10)
  br label %98

92:                                               ; preds = %82
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @ikev2_print(%struct.TYPE_8__* %93, i32* %94, i32 %95, i32* %96, %struct.isakmp* %10)
  br label %98

98:                                               ; preds = %24, %82, %92, %86
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_8__*) #1

declare dso_local i32 @UNALIGNED_MEMCPY(%struct.isakmp*, %struct.isakmp*, i32) #1

declare dso_local i32 @hexprint(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @ikev1_print(%struct.TYPE_8__*, i32*, i32, i32*, %struct.isakmp*) #1

declare dso_local i32 @ikev2_print(%struct.TYPE_8__*, i32*, i32, i32*, %struct.isakmp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
