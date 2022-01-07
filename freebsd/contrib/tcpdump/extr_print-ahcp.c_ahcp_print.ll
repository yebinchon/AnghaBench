; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ahcp.c_ahcp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ahcp.c_ahcp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"AHCP\00", align 1
@AHCP_MAGIC_NUMBER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c" Version 1\00", align 1
@AHCP1_HEADER_FIX_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"\0A\09Hopcount %u\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c", Original Hopcount %u\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c", Nonce 0x%08x\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c", Source Id %s\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c", Destination Id %s\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c" Version %u (unknown)\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahcp_print(%struct.TYPE_6__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64*, i64** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  store i64* %12, i64** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([5 x i8]* @.str to %struct.TYPE_6__*))
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %130

18:                                               ; preds = %3
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @ND_TCHECK2(i64 %20, i32 1)
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AHCP_MAGIC_NUMBER, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %130

27:                                               ; preds = %18
  %28 = load i64*, i64** %5, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  store i64* %29, i64** %5, align 8
  %30 = load i64*, i64** %5, align 8
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ND_TCHECK2(i64 %31, i32 1)
  %33 = load i64*, i64** %5, align 8
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = load i64*, i64** %5, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  store i64* %37, i64** %5, align 8
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %123 [
    i32 128, label %39
  ]

39:                                               ; preds = %27
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([11 x i8]* @.str.1 to %struct.TYPE_6__*))
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @AHCP1_HEADER_FIX_LEN, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %130

46:                                               ; preds = %39
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %46
  %52 = load i64*, i64** %5, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @AHCP1_HEADER_FIX_LEN, align 4
  %55 = sub nsw i32 %54, 2
  %56 = call i32 @ND_TCHECK2(i64 %53, i32 %55)
  %57 = load i32, i32* @AHCP1_HEADER_FIX_LEN, align 4
  %58 = sub nsw i32 %57, 2
  %59 = load i64*, i64** %5, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  store i64* %61, i64** %5, align 8
  br label %118

62:                                               ; preds = %46
  %63 = load i64*, i64** %5, align 8
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @ND_TCHECK2(i64 %64, i32 1)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = load i64*, i64** %5, align 8
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.TYPE_6__*
  %70 = call i32 @ND_PRINT(%struct.TYPE_6__* %69)
  %71 = load i64*, i64** %5, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  store i64* %72, i64** %5, align 8
  %73 = load i64*, i64** %5, align 8
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ND_TCHECK2(i64 %74, i32 1)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = load i64*, i64** %5, align 8
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.TYPE_6__*
  %80 = call i32 @ND_PRINT(%struct.TYPE_6__* %79)
  %81 = load i64*, i64** %5, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  store i64* %82, i64** %5, align 8
  %83 = load i64*, i64** %5, align 8
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @ND_TCHECK2(i64 %84, i32 4)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = load i64*, i64** %5, align 8
  %88 = call i32 @EXTRACT_32BITS(i64* %87)
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to %struct.TYPE_6__*
  %91 = call i32 @ND_PRINT(%struct.TYPE_6__* %90)
  %92 = load i64*, i64** %5, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 4
  store i64* %93, i64** %5, align 8
  %94 = load i64*, i64** %5, align 8
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @ND_TCHECK2(i64 %95, i32 8)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = load i64*, i64** %5, align 8
  %100 = call i32 @linkaddr_string(%struct.TYPE_6__* %98, i64* %99, i32 0, i32 8)
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to %struct.TYPE_6__*
  %103 = call i32 @ND_PRINT(%struct.TYPE_6__* %102)
  %104 = load i64*, i64** %5, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 8
  store i64* %105, i64** %5, align 8
  %106 = load i64*, i64** %5, align 8
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @ND_TCHECK2(i64 %107, i32 8)
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = load i64*, i64** %5, align 8
  %112 = call i32 @linkaddr_string(%struct.TYPE_6__* %110, i64* %111, i32 0, i32 8)
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to %struct.TYPE_6__*
  %115 = call i32 @ND_PRINT(%struct.TYPE_6__* %114)
  %116 = load i64*, i64** %5, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 8
  store i64* %117, i64** %5, align 8
  br label %118

118:                                              ; preds = %62, %51
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = load i64*, i64** %5, align 8
  %121 = load i64*, i64** %7, align 8
  %122 = call i32 @ahcp1_body_print(%struct.TYPE_6__* %119, i64* %120, i64* %121)
  br label %129

123:                                              ; preds = %27
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to %struct.TYPE_6__*
  %128 = call i32 @ND_PRINT(%struct.TYPE_6__* %127)
  br label %129

129:                                              ; preds = %123, %118
  br label %152

130:                                              ; preds = %45, %26, %17
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %132 = load i32, i32* @istr, align 4
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to %struct.TYPE_6__*
  %135 = call i32 @ND_PRINT(%struct.TYPE_6__* %134)
  %136 = load i64*, i64** %5, align 8
  %137 = load i64, i64* %136, align 8
  %138 = load i64*, i64** %7, align 8
  %139 = load i64*, i64** %5, align 8
  %140 = ptrtoint i64* %138 to i64
  %141 = ptrtoint i64* %139 to i64
  %142 = sub i64 %140, %141
  %143 = sdiv exact i64 %142, 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 @ND_TCHECK2(i64 %137, i32 %144)
  br label %152

146:                                              ; No predecessors!
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %148 = load i32, i32* @tstr, align 4
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to %struct.TYPE_6__*
  %151 = call i32 @ND_PRINT(%struct.TYPE_6__* %150)
  br label %152

152:                                              ; preds = %146, %130, %129
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @ND_TCHECK2(i64, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i64*) #1

declare dso_local i32 @linkaddr_string(%struct.TYPE_6__*, i64*, i32, i32) #1

declare dso_local i32 @ahcp1_body_print(%struct.TYPE_6__*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
