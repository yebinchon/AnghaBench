; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sl.c_compressed_sl_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sl.c_compressed_sl_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32 }
%struct.tcphdr = type { i32 }

@NEW_C = common dso_local global i32 0, align 4
@lastconn = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"ctcp %d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ctcp *\00", align 1
@SPECIALS_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c" *SA+%d\00", align 1
@lastlen = common dso_local global i32** null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c" *S+%d\00", align 1
@NEW_U = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"U=\00", align 1
@NEW_W = common dso_local global i32 0, align 4
@NEW_A = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"A+\00", align 1
@NEW_S = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"S+\00", align 1
@NEW_I = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"I+\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c" %d (%ld)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.ip*, i32, i32)* @compressed_sl_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compressed_sl_print(i32* %0, i32* %1, %struct.ip* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.ip* %2, %struct.ip** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32*, i32** %7, align 8
  store i32* %14, i32** %11, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %11, align 8
  %17 = load i32, i32* %15, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @NEW_C, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %5
  %23 = load i32*, i32** %11, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %11, align 8
  %25 = load i32, i32* %23, align 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* @lastconn, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* @lastconn, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @ND_PRINT(i32* %29)
  br label %34

31:                                               ; preds = %5
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.1 to i32*))
  br label %34

34:                                               ; preds = %31, %22
  %35 = load i32*, i32** %11, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32* %36, i32** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @SPECIALS_MASK, align 4
  %39 = and i32 %37, %38
  switch i32 %39, label %66 [
    i32 128, label %40
    i32 129, label %53
  ]

40:                                               ; preds = %34
  %41 = load i32*, i32** %6, align 8
  %42 = load i32**, i32*** @lastlen, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @lastconn, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i32*
  %52 = call i32 @ND_PRINT(i32* %51)
  br label %103

53:                                               ; preds = %34
  %54 = load i32*, i32** %6, align 8
  %55 = load i32**, i32*** @lastlen, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @lastconn, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i32*
  %65 = call i32 @ND_PRINT(i32* %64)
  br label %103

66:                                               ; preds = %34
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @NEW_U, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32*, i32** %6, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i32* @print_sl_change(i32* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %73)
  store i32* %74, i32** %11, align 8
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @NEW_W, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = call i32* @print_sl_winchange(i32* %81, i32* %82)
  store i32* %83, i32** %11, align 8
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @NEW_A, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32*, i32** %6, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = call i32* @print_sl_change(i32* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %91)
  store i32* %92, i32** %11, align 8
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @NEW_S, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32*, i32** %6, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = call i32* @print_sl_change(i32* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %100)
  store i32* %101, i32** %11, align 8
  br label %102

102:                                              ; preds = %98, %93
  br label %103

103:                                              ; preds = %102, %53, %40
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @NEW_I, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32*, i32** %6, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = call i32* @print_sl_change(i32* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %110)
  store i32* %111, i32** %11, align 8
  br label %112

112:                                              ; preds = %108, %103
  %113 = load %struct.ip*, %struct.ip** %8, align 8
  %114 = call i32 @IP_HL(%struct.ip* %113)
  store i32 %114, i32* %13, align 4
  %115 = load %struct.ip*, %struct.ip** %8, align 8
  %116 = bitcast %struct.ip* %115 to i32*
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = bitcast i32* %119 to %struct.tcphdr*
  %121 = call i64 @TH_OFF(%struct.tcphdr* %120)
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %13, align 4
  %128 = shl i32 %127, 2
  %129 = sub nsw i32 %126, %128
  %130 = load i32**, i32*** @lastlen, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* @lastconn, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32 %129, i32* %136, align 4
  %137 = load i32*, i32** %6, align 8
  %138 = load i32**, i32*** @lastlen, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @lastconn, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %11, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = ptrtoint i32* %146 to i64
  %149 = ptrtoint i32* %147 to i64
  %150 = sub i64 %148, %149
  %151 = sdiv exact i64 %150, 4
  %152 = inttoptr i64 %151 to i32*
  %153 = call i32 @ND_PRINT(i32* %152)
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32* @print_sl_change(i32*, i8*, i32*) #1

declare dso_local i32* @print_sl_winchange(i32*, i32*) #1

declare dso_local i32 @IP_HL(%struct.ip*) #1

declare dso_local i64 @TH_OFF(%struct.tcphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
