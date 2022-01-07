; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-snmp.c_scopedpdu_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-snmp.c_scopedpdu_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BE_SEQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"[!scoped PDU]\00", align 1
@BE_STR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"[contextEngineID!=STR]\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"E=\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"[contextName!=STR]\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"C=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @scopedpdu_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scopedpdu_print(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.be, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @asn1_parse(i32* %11, i32* %12, i32 %13, %struct.be* %9)
  store i32 %14, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %105

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BE_SEQ, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str to i32*))
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @asn1_print(i32* %25, %struct.be* %9)
  br label %105

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @asn1_parse(i32* %34, i32* %35, i32 %36, %struct.be* %9)
  store i32 %37, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %105

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BE_STR, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @ND_PRINT(i32* bitcast ([23 x i8]* @.str.1 to i32*))
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @asn1_print(i32* %48, %struct.be* %9)
  br label %105

50:                                               ; preds = %40
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @ND_PRINT(i32* bitcast ([3 x i8]* @.str.2 to i32*))
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @asn1_print_octets(i32* %60, %struct.be* %9)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %105

64:                                               ; preds = %50
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.3 to i32*))
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @asn1_parse(i32* %67, i32* %68, i32 %69, %struct.be* %9)
  store i32 %70, i32* %10, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %105

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @BE_STR, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @ND_PRINT(i32* bitcast ([19 x i8]* @.str.4 to i32*))
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @asn1_print(i32* %81, %struct.be* %9)
  br label %105

83:                                               ; preds = %73
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %6, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @ND_PRINT(i32* bitcast ([3 x i8]* @.str.5 to i32*))
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @asn1_print_string(i32* %93, %struct.be* %9)
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  br label %105

97:                                               ; preds = %83
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.3 to i32*))
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @pdu_print(i32* %100, i32* %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %97, %96, %78, %72, %63, %45, %39, %22, %16
  ret void
}

declare dso_local i32 @asn1_parse(i32*, i32*, i32, %struct.be*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @asn1_print(i32*, %struct.be*) #1

declare dso_local i32 @asn1_print_octets(i32*, %struct.be*) #1

declare dso_local i32 @asn1_print_string(i32*, %struct.be*) #1

declare dso_local i32 @pdu_print(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
