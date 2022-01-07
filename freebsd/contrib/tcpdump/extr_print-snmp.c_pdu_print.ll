; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-snmp.c_pdu_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-snmp.c_pdu_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.be = type { i64, i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@BE_PDU = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"[no PDU]\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"[%d extra after PDU]\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@SNMP_VERSION_1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"[v2 PDU in v1 message]\00", align 1
@SNMP_VERSION_2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"[v1 PDU in v2 message]\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" } \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i64, i32)* @pdu_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdu_print(%struct.TYPE_10__* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.be, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @asn1_parse(%struct.TYPE_10__* %11, i32* %12, i64 %13, %struct.be* %9)
  store i32 %14, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %116

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BE_PDU, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([9 x i8]* @.str to %struct.TYPE_10__*))
  br label %116

25:                                               ; preds = %17
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %7, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %32, %34
  %36 = inttoptr i64 %35 to %struct.TYPE_10__*
  %37 = call i32 @ND_PRINT(%struct.TYPE_10__* %36)
  br label %38

38:                                               ; preds = %30, %25
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([3 x i8]* @.str.2 to %struct.TYPE_10__*))
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = call i64 @asn1_print(%struct.TYPE_10__* %47, %struct.be* %9)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %116

51:                                               ; preds = %46
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([2 x i8]* @.str.3 to %struct.TYPE_10__*))
  %54 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %7, align 8
  %56 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @SNMP_VERSION_1, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 136
  br i1 %66, label %79, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 132
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 128
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 131
  br i1 %78, label %79, label %82

79:                                               ; preds = %75, %71, %67, %63
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([23 x i8]* @.str.4 to %struct.TYPE_10__*))
  br label %116

82:                                               ; preds = %75, %51
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @SNMP_VERSION_2, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 129
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %92 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([23 x i8]* @.str.5 to %struct.TYPE_10__*))
  br label %116

93:                                               ; preds = %86, %82
  %94 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  switch i32 %95, label %108 [
    i32 129, label %96
    i32 134, label %101
    i32 135, label %101
    i32 133, label %101
    i32 130, label %101
    i32 136, label %101
    i32 132, label %101
    i32 128, label %101
    i32 131, label %101
  ]

96:                                               ; preds = %93
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @trappdu_print(%struct.TYPE_10__* %97, i32* %98, i64 %99)
  br label %108

101:                                              ; preds = %93, %93, %93, %93, %93, %93, %93, %93
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = call i32 @snmppdu_print(%struct.TYPE_10__* %102, i32 %104, i32* %105, i64 %106)
  br label %108

108:                                              ; preds = %93, %101, %96
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %115 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([4 x i8]* @.str.6 to %struct.TYPE_10__*))
  br label %116

116:                                              ; preds = %16, %22, %50, %79, %90, %113, %108
  ret void
}

declare dso_local i32 @asn1_parse(%struct.TYPE_10__*, i32*, i64, %struct.be*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_10__*) #1

declare dso_local i64 @asn1_print(%struct.TYPE_10__*, %struct.be*) #1

declare dso_local i32 @trappdu_print(%struct.TYPE_10__*, i32*, i64) #1

declare dso_local i32 @snmppdu_print(%struct.TYPE_10__*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
