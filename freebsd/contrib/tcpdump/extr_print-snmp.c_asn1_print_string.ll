; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-snmp.c_asn1_print_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-snmp.c_asn1_print_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.be = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.2x\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"_%.2x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.be*)* @asn1_print_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_print_string(%struct.TYPE_7__* %0, %struct.be* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.be*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.be* %1, %struct.be** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %11 = load %struct.be*, %struct.be** %5, align 8
  %12 = getelementptr inbounds %struct.be, %struct.be* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.be*, %struct.be** %5, align 8
  %15 = getelementptr inbounds %struct.be, %struct.be* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @ND_TCHECK2(i32 %19, i64 %20)
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %10, align 8
  br label %23

23:                                               ; preds = %36, %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* %10, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %10, align 8
  %29 = icmp sgt i64 %27, 0
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %39

32:                                               ; preds = %30
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ND_ISPRINT(i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %8, align 8
  br label %23

39:                                               ; preds = %30
  %40 = load %struct.be*, %struct.be** %5, align 8
  %41 = getelementptr inbounds %struct.be, %struct.be* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %39
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str to %struct.TYPE_7__*))
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @fn_printn(%struct.TYPE_7__* %49, i32* %50, i64 %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str to %struct.TYPE_7__*))
  br label %85

60:                                               ; preds = %46
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str to %struct.TYPE_7__*))
  br label %84

63:                                               ; preds = %39
  %64 = load i64, i64* %9, align 8
  store i64 %64, i64* %10, align 8
  br label %65

65:                                               ; preds = %80, %63
  %66 = load i64, i64* %10, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %10, align 8
  %68 = icmp sgt i64 %66, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to %struct.TYPE_7__*
  %79 = call i32 @ND_PRINT(%struct.TYPE_7__* %78)
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %69
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %8, align 8
  br label %65

83:                                               ; preds = %65
  br label %84

84:                                               ; preds = %83, %60
  store i32 0, i32* %3, align 4
  br label %91

85:                                               ; preds = %57
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = load i32, i32* @tstr, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to %struct.TYPE_7__*
  %90 = call i32 @ND_PRINT(%struct.TYPE_7__* %89)
  store i32 -1, i32* %3, align 4
  br label %91

91:                                               ; preds = %85, %84
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @ND_TCHECK2(i32, i64) #1

declare dso_local i32 @ND_ISPRINT(i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i64 @fn_printn(%struct.TYPE_7__*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
