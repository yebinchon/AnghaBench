; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_ieee_802_11_hdr_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_ieee_802_11_hdr_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.meshcntl_t = type { i32, i32, i32, i32, i32, i32 }
%struct.mgmt_header_t = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"More Data \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"More Fragments \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Pwr Mgmt \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Retry \00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Strictly Ordered \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Protected \00", align 1
@CTRL_PS_POLL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"%dus \00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"MeshData (AE %d TTL %u seq %u\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" A4:%s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" A5:%s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" A6:%s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c") \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32*, i64, i64)* @ieee_802_11_hdr_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee_802_11_hdr_print(%struct.TYPE_8__* %0, i32 %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.meshcntl_t*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %78

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @FC_MORE_DATA(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([11 x i8]* @.str to %struct.TYPE_8__*))
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @FC_MORE_FLAG(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([16 x i8]* @.str.1 to %struct.TYPE_8__*))
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @FC_POWER_MGMT(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([10 x i8]* @.str.2 to %struct.TYPE_8__*))
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @FC_RETRY(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([7 x i8]* @.str.3 to %struct.TYPE_8__*))
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @FC_ORDER(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([18 x i8]* @.str.4 to %struct.TYPE_8__*))
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @FC_PROTECTED(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([11 x i8]* @.str.5 to %struct.TYPE_8__*))
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @FC_TYPE(i32 %60)
  %62 = icmp ne i32 %61, 130
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @FC_SUBTYPE(i32 %64)
  %66 = load i64, i64* @CTRL_PS_POLL, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %63, %59
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = bitcast i32* %70 to %struct.mgmt_header_t*
  %72 = getelementptr inbounds %struct.mgmt_header_t, %struct.mgmt_header_t* %71, i32 0, i32 0
  %73 = call i32 @EXTRACT_LE_16BITS(i32* %72)
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to %struct.TYPE_8__*
  %76 = call i32 @ND_PRINT(%struct.TYPE_8__* %75)
  br label %77

77:                                               ; preds = %68, %63
  br label %78

78:                                               ; preds = %77, %5
  %79 = load i64, i64* %10, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %145

81:                                               ; preds = %78
  %82 = load i32*, i32** %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = sub nsw i64 %83, %84
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = bitcast i32* %86 to %struct.meshcntl_t*
  store %struct.meshcntl_t* %87, %struct.meshcntl_t** %11, align 8
  %88 = load %struct.meshcntl_t*, %struct.meshcntl_t** %11, align 8
  %89 = getelementptr inbounds %struct.meshcntl_t, %struct.meshcntl_t* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 3
  store i32 %91, i32* %12, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.meshcntl_t*, %struct.meshcntl_t** %11, align 8
  %95 = getelementptr inbounds %struct.meshcntl_t, %struct.meshcntl_t* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.meshcntl_t*, %struct.meshcntl_t** %11, align 8
  %98 = getelementptr inbounds %struct.meshcntl_t, %struct.meshcntl_t* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @EXTRACT_LE_32BITS(i32 %99)
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to %struct.TYPE_8__*
  %103 = call i32 @ND_PRINT(%struct.TYPE_8__* %102)
  %104 = load i32, i32* %12, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %81
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = load %struct.meshcntl_t*, %struct.meshcntl_t** %11, align 8
  %110 = getelementptr inbounds %struct.meshcntl_t, %struct.meshcntl_t* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @etheraddr_string(%struct.TYPE_8__* %108, i32 %111)
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to %struct.TYPE_8__*
  %115 = call i32 @ND_PRINT(%struct.TYPE_8__* %114)
  br label %116

116:                                              ; preds = %106, %81
  %117 = load i32, i32* %12, align 4
  %118 = icmp sgt i32 %117, 1
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = load %struct.meshcntl_t*, %struct.meshcntl_t** %11, align 8
  %123 = getelementptr inbounds %struct.meshcntl_t, %struct.meshcntl_t* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @etheraddr_string(%struct.TYPE_8__* %121, i32 %124)
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to %struct.TYPE_8__*
  %128 = call i32 @ND_PRINT(%struct.TYPE_8__* %127)
  br label %129

129:                                              ; preds = %119, %116
  %130 = load i32, i32* %12, align 4
  %131 = icmp sgt i32 %130, 2
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %135 = load %struct.meshcntl_t*, %struct.meshcntl_t** %11, align 8
  %136 = getelementptr inbounds %struct.meshcntl_t, %struct.meshcntl_t* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @etheraddr_string(%struct.TYPE_8__* %134, i32 %137)
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to %struct.TYPE_8__*
  %141 = call i32 @ND_PRINT(%struct.TYPE_8__* %140)
  br label %142

142:                                              ; preds = %132, %129
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %144 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([3 x i8]* @.str.11 to %struct.TYPE_8__*))
  br label %145

145:                                              ; preds = %142, %78
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @FC_TYPE(i32 %146)
  switch i32 %147, label %162 [
    i32 128, label %148
    i32 130, label %152
    i32 129, label %157
  ]

148:                                              ; preds = %145
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %150 = load i32*, i32** %8, align 8
  %151 = call i32 @mgmt_header_print(%struct.TYPE_8__* %149, i32* %150)
  br label %163

152:                                              ; preds = %145
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load i32*, i32** %8, align 8
  %156 = call i32 @ctrl_header_print(%struct.TYPE_8__* %153, i32 %154, i32* %155)
  br label %163

157:                                              ; preds = %145
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load i32*, i32** %8, align 8
  %161 = call i32 @data_header_print(%struct.TYPE_8__* %158, i32 %159, i32* %160)
  br label %163

162:                                              ; preds = %145
  br label %163

163:                                              ; preds = %162, %157, %152, %148
  ret void
}

declare dso_local i64 @FC_MORE_DATA(i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_8__*) #1

declare dso_local i64 @FC_MORE_FLAG(i32) #1

declare dso_local i64 @FC_POWER_MGMT(i32) #1

declare dso_local i64 @FC_RETRY(i32) #1

declare dso_local i64 @FC_ORDER(i32) #1

declare dso_local i64 @FC_PROTECTED(i32) #1

declare dso_local i32 @FC_TYPE(i32) #1

declare dso_local i64 @FC_SUBTYPE(i32) #1

declare dso_local i32 @EXTRACT_LE_16BITS(i32*) #1

declare dso_local i32 @EXTRACT_LE_32BITS(i32) #1

declare dso_local i32 @etheraddr_string(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mgmt_header_print(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ctrl_header_print(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @data_header_print(%struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
