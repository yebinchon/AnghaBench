; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ipx.c_ipx_sap_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ipx.c_ipx_sap_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"ipx-sap-req\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ipx-sap-nearest-req\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"ipx-sap-resp\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ipx-sap-nearest-resp\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" %s '\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"' addr %s\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ipx-sap-?%x\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"[|ipx %d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32)* @ipx_sap_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipx_sap_print(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ND_TCHECK(i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @EXTRACT_16BITS(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 2
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %111 [
    i32 1, label %20
    i32 3, label %20
    i32 2, label %44
    i32 4, label %44
  ]

20:                                               ; preds = %3, %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([12 x i8]* @.str to %struct.TYPE_6__*))
  br label %29

26:                                               ; preds = %20
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([20 x i8]* @.str.1 to %struct.TYPE_6__*))
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ND_TCHECK(i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = call i32 @EXTRACT_16BITS(i32* %37)
  %39 = call i32 @htons(i32 %38)
  %40 = call i32 @ipxsap_string(%struct.TYPE_6__* %35, i32 %39)
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to %struct.TYPE_6__*
  %43 = call i32 @ND_PRINT(%struct.TYPE_6__* %42)
  br label %117

44:                                               ; preds = %3, %3
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([13 x i8]* @.str.3 to %struct.TYPE_6__*))
  br label %53

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([21 x i8]* @.str.4 to %struct.TYPE_6__*))
  br label %53

53:                                               ; preds = %50, %47
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %107, %53
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 8
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = icmp sgt i32 %58, 0
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i1 [ false, %54 ], [ %59, %57 ]
  br i1 %61, label %62, label %110

62:                                               ; preds = %60
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ND_TCHECK(i32 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = call i32 @EXTRACT_16BITS(i32* %70)
  %72 = call i32 @htons(i32 %71)
  %73 = call i32 @ipxsap_string(%struct.TYPE_6__* %68, i32 %72)
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to %struct.TYPE_6__*
  %76 = call i32 @ND_PRINT(%struct.TYPE_6__* %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @fn_printzp(%struct.TYPE_6__* %77, i32* %79, i32 48, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %62
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([2 x i8]* @.str.6 to %struct.TYPE_6__*))
  br label %118

88:                                               ; preds = %62
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 25
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ND_TCHECK2(i32 %91, i32 10)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 25
  %96 = call i32 @EXTRACT_32BITS(i32* %95)
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 27
  %99 = call i32 @ipxaddr_string(i32 %96, i32* %98)
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to %struct.TYPE_6__*
  %102 = call i32 @ND_PRINT(%struct.TYPE_6__* %101)
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 32
  store i32* %104, i32** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %105, 64
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %88
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %54

110:                                              ; preds = %60
  br label %117

111:                                              ; preds = %3
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to %struct.TYPE_6__*
  %116 = call i32 @ND_PRINT(%struct.TYPE_6__* %115)
  br label %117

117:                                              ; preds = %111, %110, %29
  br label %124

118:                                              ; preds = %85
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to %struct.TYPE_6__*
  %123 = call i32 @ND_PRINT(%struct.TYPE_6__* %122)
  br label %124

124:                                              ; preds = %118, %117
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @ipxsap_string(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @fn_printzp(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ipxaddr_string(i32, i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
