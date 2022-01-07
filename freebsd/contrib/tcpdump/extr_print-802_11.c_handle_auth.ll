; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_handle_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_handle_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgmt_body_t = type { i32, i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c" (%s)-%x [Challenge Text] %s\00", align 1
@NUM_AUTH_ALGS = common dso_local global i32 0, align 4
@auth_alg_text = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@NUM_STATUSES = common dso_local global i64 0, align 8
@status_text = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" (%s)-%x: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @handle_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_auth(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mgmt_body_t, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = call i32 @memset(%struct.mgmt_body_t* %8, i32 0, i32 16)
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ND_TTEST2(i32 %13, i32 6)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %152

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 6
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %152

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = call i8* @EXTRACT_LE_16BITS(i32* %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 2
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 2
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i8* @EXTRACT_LE_16BITS(i32* %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 2
  store i32 %40, i32* %7, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i8* @EXTRACT_LE_16BITS(i32* %44)
  %46 = ptrtoint i8* %45 to i64
  %47 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 2
  store i64 %46, i64* %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 2
  store i32 %51, i32* %7, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @parse_elements(i32* %52, %struct.mgmt_body_t* %8, i32* %53, i32 %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %110

60:                                               ; preds = %21
  %61 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %68, label %110

68:                                               ; preds = %64, %60
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @NUM_AUTH_ALGS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load i8**, i8*** @auth_alg_text, align 8
  %76 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  %80 = load i8*, i8** %79, align 8
  br label %82

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %74
  %83 = phi i8* [ %80, %74 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %81 ]
  %84 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = srem i32 %87, 2
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @NUM_STATUSES, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i8**, i8*** @status_text, align 8
  %97 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  br label %102

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %95
  %103 = phi i8* [ %100, %95 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %101 ]
  br label %105

104:                                              ; preds = %82
  br label %105

105:                                              ; preds = %104, %102
  %106 = phi i8* [ %103, %102 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %104 ]
  %107 = bitcast i8* %106 to i32*
  %108 = call i32 @ND_PRINT(i32* %107)
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %4, align 4
  br label %152

110:                                              ; preds = %64, %21
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @NUM_AUTH_ALGS, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load i8**, i8*** @auth_alg_text, align 8
  %118 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %117, i64 %120
  %122 = load i8*, i8** %121, align 8
  br label %124

123:                                              ; preds = %110
  br label %124

124:                                              ; preds = %123, %116
  %125 = phi i8* [ %122, %116 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %123 ]
  %126 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = srem i32 %129, 2
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @NUM_STATUSES, align 8
  %136 = icmp ult i64 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i8**, i8*** @status_text, align 8
  %139 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  br label %144

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143, %137
  %145 = phi i8* [ %142, %137 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %143 ]
  br label %147

146:                                              ; preds = %124
  br label %147

147:                                              ; preds = %146, %144
  %148 = phi i8* [ %145, %144 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %146 ]
  %149 = bitcast i8* %148 to i32*
  %150 = call i32 @ND_PRINT(i32* %149)
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %147, %105, %20, %16
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @memset(%struct.mgmt_body_t*, i32, i32) #1

declare dso_local i32 @ND_TTEST2(i32, i32) #1

declare dso_local i8* @EXTRACT_LE_16BITS(i32*) #1

declare dso_local i32 @parse_elements(i32*, %struct.mgmt_body_t*, i32*, i32, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
