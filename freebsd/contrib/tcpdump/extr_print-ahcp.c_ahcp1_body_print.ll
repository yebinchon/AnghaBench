; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ahcp.c_ahcp1_body_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ahcp.c_ahcp1_body_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@AHCP1_BODY_MIN_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\0A\09%s\00", align 1
@ahcp1_msg_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Unknown-%u\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c", MBZ %u\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c", Length %u\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64*, i64*)* @ahcp1_body_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahcp1_body_print(%struct.TYPE_5__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = load i32, i32* @AHCP1_BODY_MIN_LEN, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64*, i64** %6, align 8
  %15 = icmp ugt i64* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %91

17:                                               ; preds = %3
  %18 = load i64*, i64** %5, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @ND_TCHECK2(i64 %19, i32 1)
  %21 = load i64*, i64** %5, align 8
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  store i64* %24, i64** %5, align 8
  %25 = load i64*, i64** %5, align 8
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ND_TCHECK2(i64 %26, i32 1)
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load i64*, i64** %5, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  store i64* %31, i64** %5, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ND_TCHECK2(i64 %33, i32 2)
  %35 = load i64*, i64** %5, align 8
  %36 = call i32 @EXTRACT_16BITS(i64* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i64*, i64** %5, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 2
  store i64* %38, i64** %5, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %17
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = load i32, i32* @ahcp1_msg_str, align 4
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @tok2str(i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %struct.TYPE_5__*
  %50 = call i32 @ND_PRINT(%struct.TYPE_5__* %49)
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = load i64, i64* %8, align 8
  %56 = inttoptr i64 %55 to %struct.TYPE_5__*
  %57 = call i32 @ND_PRINT(%struct.TYPE_5__* %56)
  br label %58

58:                                               ; preds = %53, %43
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to %struct.TYPE_5__*
  %63 = call i32 @ND_PRINT(%struct.TYPE_5__* %62)
  br label %64

64:                                               ; preds = %58, %17
  %65 = load i64*, i64** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64*, i64** %6, align 8
  %70 = icmp ugt i64* %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %91

72:                                               ; preds = %64
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %75, 2
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = load i64*, i64** %5, align 8
  %80 = load i64*, i64** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = call i32 @ahcp1_options_print(%struct.TYPE_5__* %78, i64* %79, i64* %83)
  br label %90

85:                                               ; preds = %72
  %86 = load i64*, i64** %5, align 8
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @ND_TCHECK2(i64 %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %77
  br label %113

91:                                               ; preds = %71, %16
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = load i32, i32* @istr, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to %struct.TYPE_5__*
  %96 = call i32 @ND_PRINT(%struct.TYPE_5__* %95)
  %97 = load i64*, i64** %5, align 8
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %6, align 8
  %100 = load i64*, i64** %5, align 8
  %101 = ptrtoint i64* %99 to i64
  %102 = ptrtoint i64* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @ND_TCHECK2(i64 %98, i32 %105)
  br label %113

107:                                              ; No predecessors!
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = load i32, i32* @tstr, align 4
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to %struct.TYPE_5__*
  %112 = call i32 @ND_PRINT(%struct.TYPE_5__* %111)
  br label %113

113:                                              ; preds = %107, %91, %90
  ret void
}

declare dso_local i32 @ND_TCHECK2(i64, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i64*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i32 @ahcp1_options_print(%struct.TYPE_5__*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
