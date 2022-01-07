; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_data_header_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_data_header_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"CF \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Ack/Poll\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Ack\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Poll\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"+QoS\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"DA:%s SA:%s BSSID:%s \00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"DA:%s BSSID:%s SA:%s \00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"BSSID:%s SA:%s DA:%s \00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"RA:%s TA:%s DA:%s SA:%s \00", align 1
@ADDR1 = common dso_local global i32 0, align 4
@ADDR2 = common dso_local global i32 0, align 4
@ADDR3 = common dso_local global i32 0, align 4
@ADDR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @data_header_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data_header_print(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @FC_SUBTYPE(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @DATA_FRAME_IS_CF_ACK(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @DATA_FRAME_IS_CF_POLL(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @DATA_FRAME_IS_QOS(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %17, %13, %3
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str to i32*))
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @DATA_FRAME_IS_CF_ACK(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @DATA_FRAME_IS_CF_POLL(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.1 to i32*))
  br label %37

34:                                               ; preds = %27
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %37

37:                                               ; preds = %34, %31
  br label %46

38:                                               ; preds = %21
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @DATA_FRAME_IS_CF_POLL(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.3 to i32*))
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %45, %37
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @DATA_FRAME_IS_QOS(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.4 to i32*))
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %56

56:                                               ; preds = %53, %17
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @FC_TO_DS(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %84, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @FC_FROM_DS(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %84, label %64

64:                                               ; preds = %60
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = ptrtoint i32* %68 to i32
  %70 = call i32 @etheraddr_string(i32* %66, i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 10
  %74 = ptrtoint i32* %73 to i32
  %75 = call i32 @etheraddr_string(i32* %71, i32 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 16
  %79 = ptrtoint i32* %78 to i32
  %80 = call i32 @etheraddr_string(i32* %76, i32 %79)
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i32*
  %83 = call i32 @ND_PRINT(i32* %82)
  br label %176

84:                                               ; preds = %60, %56
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @FC_TO_DS(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %112, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = call i64 @FC_FROM_DS(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %88
  %93 = load i32*, i32** %4, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = ptrtoint i32* %96 to i32
  %98 = call i32 @etheraddr_string(i32* %94, i32 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 10
  %102 = ptrtoint i32* %101 to i32
  %103 = call i32 @etheraddr_string(i32* %99, i32 %102)
  %104 = load i32*, i32** %4, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 16
  %107 = ptrtoint i32* %106 to i32
  %108 = call i32 @etheraddr_string(i32* %104, i32 %107)
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i32*
  %111 = call i32 @ND_PRINT(i32* %110)
  br label %175

112:                                              ; preds = %88, %84
  %113 = load i32, i32* %5, align 4
  %114 = call i64 @FC_TO_DS(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %140

116:                                              ; preds = %112
  %117 = load i32, i32* %5, align 4
  %118 = call i64 @FC_FROM_DS(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %140, label %120

120:                                              ; preds = %116
  %121 = load i32*, i32** %4, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  %125 = ptrtoint i32* %124 to i32
  %126 = call i32 @etheraddr_string(i32* %122, i32 %125)
  %127 = load i32*, i32** %4, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 10
  %130 = ptrtoint i32* %129 to i32
  %131 = call i32 @etheraddr_string(i32* %127, i32 %130)
  %132 = load i32*, i32** %4, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 16
  %135 = ptrtoint i32* %134 to i32
  %136 = call i32 @etheraddr_string(i32* %132, i32 %135)
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i32*
  %139 = call i32 @ND_PRINT(i32* %138)
  br label %174

140:                                              ; preds = %116, %112
  %141 = load i32, i32* %5, align 4
  %142 = call i64 @FC_TO_DS(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %173

144:                                              ; preds = %140
  %145 = load i32, i32* %5, align 4
  %146 = call i64 @FC_FROM_DS(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %173

148:                                              ; preds = %144
  %149 = load i32*, i32** %4, align 8
  %150 = load i32*, i32** %4, align 8
  %151 = load i32*, i32** %6, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  %153 = ptrtoint i32* %152 to i32
  %154 = call i32 @etheraddr_string(i32* %150, i32 %153)
  %155 = load i32*, i32** %4, align 8
  %156 = load i32*, i32** %6, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 10
  %158 = ptrtoint i32* %157 to i32
  %159 = call i32 @etheraddr_string(i32* %155, i32 %158)
  %160 = load i32*, i32** %4, align 8
  %161 = load i32*, i32** %6, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 16
  %163 = ptrtoint i32* %162 to i32
  %164 = call i32 @etheraddr_string(i32* %160, i32 %163)
  %165 = load i32*, i32** %4, align 8
  %166 = load i32*, i32** %6, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 24
  %168 = ptrtoint i32* %167 to i32
  %169 = call i32 @etheraddr_string(i32* %165, i32 %168)
  %170 = sext i32 %169 to i64
  %171 = inttoptr i64 %170 to i32*
  %172 = call i32 @ND_PRINT(i32* %171)
  br label %173

173:                                              ; preds = %148, %144, %140
  br label %174

174:                                              ; preds = %173, %120
  br label %175

175:                                              ; preds = %174, %92
  br label %176

176:                                              ; preds = %175, %64
  ret void
}

declare dso_local i32 @FC_SUBTYPE(i32) #1

declare dso_local i64 @DATA_FRAME_IS_CF_ACK(i32) #1

declare dso_local i64 @DATA_FRAME_IS_CF_POLL(i32) #1

declare dso_local i64 @DATA_FRAME_IS_QOS(i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i64 @FC_TO_DS(i32) #1

declare dso_local i64 @FC_FROM_DS(i32) #1

declare dso_local i32 @etheraddr_string(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
