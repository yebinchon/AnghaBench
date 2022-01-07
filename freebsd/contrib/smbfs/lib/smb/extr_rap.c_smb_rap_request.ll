; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rap.c_smb_rap_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rap.c_smb_rap_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rap = type { i8*, i32, i32, i8*, i8*, i32, i8*, i8*, i64 }
%struct.smb_ctx = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"\\PIPE\\LANMAN\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"reply data mismath %s\00", align 1
@EBADRPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_rap_request(%struct.smb_rap* %0, %struct.smb_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_rap*, align 8
  %5 = alloca %struct.smb_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.smb_rap* %0, %struct.smb_rap** %4, align 8
  store %struct.smb_ctx* %1, %struct.smb_ctx** %5, align 8
  %18 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %19 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %10, align 8
  %21 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %22 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %13, align 4
  %24 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %25 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load %struct.smb_ctx*, %struct.smb_ctx** %5, align 8
  %28 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %29 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %32 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %31, i32 0, i32 8
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %35 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %38 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @smb_t2_request(%struct.smb_ctx* %27, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %33, i32 0, i32* null, i32* %14, i64 %36, i32* %13, i8* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %3, align 4
  br label %150

45:                                               ; preds = %2
  %46 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %47 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %6, align 8
  %52 = load i32, i32* %50, align 4
  %53 = call i8* @le16toh(i32 %52)
  %54 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %55 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %6, align 8
  %58 = load i32, i32* %56, align 4
  %59 = call i8* @le16toh(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %7, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = bitcast i32* %61 to i8*
  %63 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %64 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  store i32 0, i32* %15, align 4
  %65 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %66 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %65, i32 0, i32 5
  store i32 0, i32* %66, align 8
  store i32 0, i32* %16, align 4
  br label %67

67:                                               ; preds = %99, %45
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load i8*, i8** %10, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %70, %67
  %76 = phi i1 [ false, %67 ], [ %74, %70 ]
  br i1 %76, label %77, label %100

77:                                               ; preds = %75
  %78 = load i8*, i8** %10, align 8
  %79 = load i8, i8* %78, align 1
  store i8 %79, i8* %11, align 1
  %80 = load i8, i8* %11, align 1
  %81 = sext i8 %80 to i32
  switch i32 %81, label %98 [
    i32 101, label %82
  ]

82:                                               ; preds = %77
  %83 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %84 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %83, i32 0, i32 4
  %85 = load i8*, i8** %84, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le16toh(i32 %87)
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %15, align 4
  %90 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %91 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 8
  %92 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %93 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %92, i32 0, i32 4
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  store i8* %95, i8** %93, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %10, align 8
  br label %99

98:                                               ; preds = %77
  store i32 1, i32* %16, align 4
  br label %99

99:                                               ; preds = %98, %82
  br label %67

100:                                              ; preds = %75
  %101 = load i8*, i8** %10, align 8
  %102 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %103 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %105 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %9, align 8
  br label %107

107:                                              ; preds = %147, %100
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %15, align 4
  %110 = icmp ne i32 %108, 0
  br i1 %110, label %111, label %148

111:                                              ; preds = %107
  %112 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %113 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %112, i32 0, i32 6
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %10, align 8
  br label %115

115:                                              ; preds = %142, %111
  %116 = load i8*, i8** %10, align 8
  %117 = load i8, i8* %116, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %147

119:                                              ; preds = %115
  %120 = load i8*, i8** %10, align 8
  %121 = load i8, i8* %120, align 1
  store i8 %121, i8* %11, align 1
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 @smb_rap_parserpdata(i8* %122, i8** %10, i32* %17)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @smb_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* %127)
  %129 = load i32, i32* @EBADRPC, align 4
  store i32 %129, i32* %3, align 4
  br label %150

130:                                              ; preds = %119
  %131 = load i8, i8* %11, align 1
  %132 = sext i8 %131 to i32
  switch i32 %132, label %142 [
    i32 122, label %133
  ]

133:                                              ; preds = %130
  %134 = load i8*, i8** %9, align 8
  %135 = bitcast i8* %134 to i32*
  store i32* %135, i32** %8, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 65535
  %139 = load i32, i32* %7, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load i32*, i32** %8, align 8
  store i32 %140, i32* %141, align 4
  br label %142

142:                                              ; preds = %130, %133
  %143 = load i32, i32* %17, align 4
  %144 = load i8*, i8** %9, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8* %146, i8** %9, align 8
  br label %115

147:                                              ; preds = %115
  br label %107

148:                                              ; preds = %107
  %149 = load i32, i32* %12, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %126, %43
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @smb_t2_request(%struct.smb_ctx*, i32, i32, i8*, i32, i64, i32, i32*, i32*, i64, i32*, i8*) #1

declare dso_local i8* @le16toh(i32) #1

declare dso_local i32 @smb_rap_parserpdata(i8*, i8**, i32*) #1

declare dso_local i32 @smb_error(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
