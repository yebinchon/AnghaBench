; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_prot_reply_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_prot_reply_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_header = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c" pt\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" reply %s\00", align 1
@pt_req = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"op#%d\00", align 1
@RX_PACKET_TYPE_DATA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c" ids:\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" <none!>\00", align 1
@PRNAMEMAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c" maxuid\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" maxgid\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" errcode\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" [|pt]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @prot_reply_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prot_reply_print(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rx_header*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %143

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = bitcast i32* %18 to %struct.rx_header*
  store %struct.rx_header* %19, %struct.rx_header** %9, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str to i32*))
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @is_ubik(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @ubik_reply_print(i32* %26, i32* %27, i32 %28, i32 %29)
  br label %143

31:                                               ; preds = %17
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @pt_req, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @tok2str(i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  %38 = call i32 @ND_PRINT(i32* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 8
  store i32* %40, i32** %6, align 8
  %41 = load %struct.rx_header*, %struct.rx_header** %9, align 8
  %42 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RX_PACKET_TYPE_DATA, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %135

46:                                               ; preds = %31
  %47 = load i32, i32* %8, align 4
  switch i32 %47, label %133 [
    i32 504, label %48
    i32 505, label %75
    i32 508, label %101
    i32 514, label %101
    i32 517, label %101
    i32 518, label %101
    i32 519, label %101
    i32 510, label %126
  ]

48:                                               ; preds = %46
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.3 to i32*))
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ND_TCHECK2(i32 %53, i32 4)
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @EXTRACT_32BITS(i32* %55)
  store i64 %56, i64* %10, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32* %58, i32** %6, align 8
  store i64 0, i64* %11, align 8
  br label %59

59:                                               ; preds = %65, %48
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = call i32 (...) @INTOUT()
  br label %65

65:                                               ; preds = %63
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %11, align 8
  br label %59

68:                                               ; preds = %59
  %69 = load i64, i64* %11, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.4 to i32*))
  br label %74

74:                                               ; preds = %71, %68
  br label %134

75:                                               ; preds = %46
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ND_TCHECK2(i32 %78, i32 4)
  %80 = load i32*, i32** %6, align 8
  %81 = call i64 @EXTRACT_32BITS(i32* %80)
  store i64 %81, i64* %12, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  store i32* %83, i32** %6, align 8
  store i64 0, i64* %10, align 8
  br label %84

84:                                               ; preds = %91, %75
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32, i32* @PRNAMEMAX, align 4
  %90 = call i32 @VECOUT(i32 %89)
  br label %91

91:                                               ; preds = %88
  %92 = load i64, i64* %10, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %10, align 8
  br label %84

94:                                               ; preds = %84
  %95 = load i64, i64* %12, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.4 to i32*))
  br label %100

100:                                              ; preds = %97, %94
  br label %134

101:                                              ; preds = %46, %46, %46, %46, %46
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ND_TCHECK2(i32 %104, i32 4)
  %106 = load i32*, i32** %6, align 8
  %107 = call i64 @EXTRACT_32BITS(i32* %106)
  store i64 %107, i64* %13, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  store i32* %109, i32** %6, align 8
  store i64 0, i64* %10, align 8
  br label %110

110:                                              ; preds = %116, %101
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* %13, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = call i32 (...) @INTOUT()
  br label %116

116:                                              ; preds = %114
  %117 = load i64, i64* %10, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %10, align 8
  br label %110

119:                                              ; preds = %110
  %120 = load i64, i64* %13, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.4 to i32*))
  br label %125

125:                                              ; preds = %122, %119
  br label %134

126:                                              ; preds = %46
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.5 to i32*))
  %129 = call i32 (...) @INTOUT()
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.6 to i32*))
  %132 = call i32 (...) @INTOUT()
  br label %134

133:                                              ; preds = %46
  br label %134

134:                                              ; preds = %133, %126, %125, %100, %74
  br label %139

135:                                              ; preds = %31
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.7 to i32*))
  %138 = call i32 (...) @INTOUT()
  br label %139

139:                                              ; preds = %135, %134
  br label %143

140:                                              ; No predecessors!
  %141 = load i32*, i32** %5, align 8
  %142 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.8 to i32*))
  br label %143

143:                                              ; preds = %140, %139, %25, %16
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i64 @is_ubik(i32) #1

declare dso_local i32 @ubik_reply_print(i32*, i32*, i32, i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i64 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @INTOUT(...) #1

declare dso_local i32 @VECOUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
