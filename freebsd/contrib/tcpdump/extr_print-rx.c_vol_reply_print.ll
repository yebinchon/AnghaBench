; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_vol_reply_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_vol_reply_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_header = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c" vol reply %s\00", align 1
@vol_req = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"op#%d\00", align 1
@RX_PACKET_TYPE_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c" volid\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" trans\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" newvol\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" volume\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" partition\00", align 1
@AFSNAMEMAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c" nextuniq\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" type\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c" parentid\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" clone\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c" backup\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c" restore\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c" maxquota\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c" minquota\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" owner\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c" create\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c" access\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c" update\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c" expire\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c" copy\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c" name\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c" <none!>\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c" errcode\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c" [|vol]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @vol_reply_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vol_reply_print(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rx_header*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sle i32 %12, 8
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %165

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = bitcast i32* %16 to %struct.rx_header*
  store %struct.rx_header* %17, %struct.rx_header** %9, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @vol_req, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @tok2str(i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  %24 = call i32 @ND_PRINT(i32* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 8
  store i32* %26, i32** %6, align 8
  %27 = load %struct.rx_header*, %struct.rx_header** %9, align 8
  %28 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RX_PACKET_TYPE_DATA, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %157

32:                                               ; preds = %15
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %155 [
    i32 100, label %34
    i32 104, label %41
    i32 105, label %43
    i32 107, label %47
    i32 108, label %49
    i32 110, label %53
    i32 112, label %60
    i32 113, label %63
    i32 115, label %112
    i32 116, label %113
    i32 121, label %113
  ]

34:                                               ; preds = %32
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.2 to i32*))
  %37 = call i32 (...) @UINTOUT()
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.3 to i32*))
  %40 = call i32 (...) @UINTOUT()
  br label %156

41:                                               ; preds = %32
  %42 = call i32 (...) @UINTOUT()
  br label %156

43:                                               ; preds = %32
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.4 to i32*))
  %46 = call i32 (...) @UINTOUT()
  br label %156

47:                                               ; preds = %32
  %48 = call i32 (...) @UINTOUT()
  br label %156

49:                                               ; preds = %32
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.3 to i32*))
  %52 = call i32 (...) @UINTOUT()
  br label %156

53:                                               ; preds = %32
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.5 to i32*))
  %56 = call i32 (...) @UINTOUT()
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @ND_PRINT(i32* bitcast ([11 x i8]* @.str.6 to i32*))
  %59 = call i32 (...) @UINTOUT()
  br label %156

60:                                               ; preds = %32
  %61 = load i32, i32* @AFSNAMEMAX, align 4
  %62 = call i32 @STROUT(i32 %61)
  br label %156

63:                                               ; preds = %32
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.2 to i32*))
  %66 = call i32 (...) @UINTOUT()
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.7 to i32*))
  %69 = call i32 (...) @UINTOUT()
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.8 to i32*))
  %72 = call i32 (...) @UINTOUT()
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.9 to i32*))
  %75 = call i32 (...) @UINTOUT()
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.10 to i32*))
  %78 = call i32 (...) @UINTOUT()
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.11 to i32*))
  %81 = call i32 (...) @UINTOUT()
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.12 to i32*))
  %84 = call i32 (...) @UINTOUT()
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.13 to i32*))
  %87 = call i32 (...) @UINTOUT()
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.14 to i32*))
  %90 = call i32 (...) @UINTOUT()
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.15 to i32*))
  %93 = call i32 (...) @UINTOUT()
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.16 to i32*))
  %96 = call i32 (...) @DATEOUT()
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.17 to i32*))
  %99 = call i32 (...) @DATEOUT()
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.18 to i32*))
  %102 = call i32 (...) @DATEOUT()
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.19 to i32*))
  %105 = call i32 (...) @DATEOUT()
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.11 to i32*))
  %108 = call i32 (...) @DATEOUT()
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.20 to i32*))
  %111 = call i32 (...) @DATEOUT()
  br label %156

112:                                              ; preds = %32
  br label %156

113:                                              ; preds = %32, %32
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ND_TCHECK2(i32 %116, i32 4)
  %118 = load i32*, i32** %6, align 8
  %119 = call i64 @EXTRACT_32BITS(i32* %118)
  store i64 %119, i64* %11, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  store i32* %121, i32** %6, align 8
  store i64 0, i64* %10, align 8
  br label %122

122:                                              ; preds = %145, %113
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* %11, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %122
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.21 to i32*))
  %129 = call i32 @VECOUT(i32 32)
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.2 to i32*))
  %132 = call i32 (...) @UINTOUT()
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.8 to i32*))
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 84
  store i32* %136, i32** %6, align 8
  %137 = load i64, i64* %10, align 8
  %138 = load i64, i64* %11, align 8
  %139 = sub i64 %138, 1
  %140 = icmp ne i64 %137, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %126
  %142 = load i32*, i32** %5, align 8
  %143 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.22 to i32*))
  br label %144

144:                                              ; preds = %141, %126
  br label %145

145:                                              ; preds = %144
  %146 = load i64, i64* %10, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %10, align 8
  br label %122

148:                                              ; preds = %122
  %149 = load i64, i64* %11, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32*, i32** %5, align 8
  %153 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.23 to i32*))
  br label %154

154:                                              ; preds = %151, %148
  br label %156

155:                                              ; preds = %32
  br label %156

156:                                              ; preds = %155, %154, %112, %63, %60, %53, %49, %47, %43, %41, %34
  br label %161

157:                                              ; preds = %15
  %158 = load i32*, i32** %5, align 8
  %159 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.24 to i32*))
  %160 = call i32 (...) @INTOUT()
  br label %161

161:                                              ; preds = %157, %156
  br label %165

162:                                              ; No predecessors!
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.25 to i32*))
  br label %165

165:                                              ; preds = %162, %161, %14
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @UINTOUT(...) #1

declare dso_local i32 @STROUT(i32) #1

declare dso_local i32 @DATEOUT(...) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i64 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @VECOUT(i32) #1

declare dso_local i32 @INTOUT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
