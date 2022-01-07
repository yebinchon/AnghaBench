; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-snmp.c_snmp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-snmp.c_snmp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.be = type { i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@BE_SEQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"[!init SEQ]\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"[%d extra after iSEQ]\00", align 1
@BE_INT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"[version!=INT]\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"{ %s \00", align 1
@SnmpVersion = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"SNMP [version = %d]\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"[version = %d]\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"} \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snmp_print(%struct.TYPE_10__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.be, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([2 x i8]* @.str to %struct.TYPE_10__*))
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @asn1_parse(%struct.TYPE_10__* %12, i32* %13, i64 %14, %struct.be* %7)
  store i32 %15, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %134

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BE_SEQ, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([12 x i8]* @.str.1 to %struct.TYPE_10__*))
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = call i32 @asn1_print(%struct.TYPE_10__* %26, %struct.be* %7)
  br label %134

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %6, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %35, %37
  %39 = inttoptr i64 %38 to %struct.TYPE_10__*
  %40 = call i32 @ND_PRINT(%struct.TYPE_10__* %39)
  br label %41

41:                                               ; preds = %33, %28
  %42 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %6, align 8
  %44 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %5, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @asn1_parse(%struct.TYPE_10__* %48, i32* %49, i64 %50, %struct.be* %7)
  store i32 %51, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %134

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BE_INT, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([15 x i8]* @.str.3 to %struct.TYPE_10__*))
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = call i32 @asn1_print(%struct.TYPE_10__* %62, %struct.be* %7)
  br label %134

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %86 [
    i32 130, label %68
    i32 129, label %68
    i32 128, label %68
  ]

68:                                               ; preds = %64, %64, %64
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = load i32*, i32** @SnmpVersion, align 8
  %76 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to %struct.TYPE_10__*
  %84 = call i32 @ND_PRINT(%struct.TYPE_10__* %83)
  br label %85

85:                                               ; preds = %73, %68
  br label %94

86:                                               ; preds = %64
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to %struct.TYPE_10__*
  %93 = call i32 @ND_PRINT(%struct.TYPE_10__* %92)
  br label %134

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %6, align 8
  %101 = sub nsw i64 %100, %99
  store i64 %101, i64* %6, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %5, align 8
  %106 = load i32, i32* %9, align 4
  switch i32 %106, label %118 [
    i32 130, label %107
    i32 129, label %107
    i32 128, label %113
  ]

107:                                              ; preds = %94, %94
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @community_print(%struct.TYPE_10__* %108, i32* %109, i64 %110, i32 %111)
  br label %126

113:                                              ; preds = %94
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = load i64, i64* %6, align 8
  %117 = call i32 @v3msg_print(%struct.TYPE_10__* %114, i32* %115, i64 %116)
  br label %126

118:                                              ; preds = %94
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to %struct.TYPE_10__*
  %125 = call i32 @ND_PRINT(%struct.TYPE_10__* %124)
  br label %126

126:                                              ; preds = %118, %113, %107
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %133 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([3 x i8]* @.str.7 to %struct.TYPE_10__*))
  br label %134

134:                                              ; preds = %17, %23, %53, %59, %86, %131, %126
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_10__*) #1

declare dso_local i32 @asn1_parse(%struct.TYPE_10__*, i32*, i64, %struct.be*) #1

declare dso_local i32 @asn1_print(%struct.TYPE_10__*, %struct.be*) #1

declare dso_local i32 @community_print(%struct.TYPE_10__*, i32*, i64, i32) #1

declare dso_local i32 @v3msg_print(%struct.TYPE_10__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
