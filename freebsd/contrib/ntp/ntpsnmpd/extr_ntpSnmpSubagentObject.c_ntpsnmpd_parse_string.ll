; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpsnmpd/extr_ntpSnmpSubagentObject.c_ntpsnmpd_parse_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpsnmpd/extr_ntpSnmpSubagentObject.c_ntpsnmpd_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ntpsnmpd_parse_string(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ult i64 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i64, i64* %11, align 8
  %21 = icmp ult i64 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %5
  store i64 0, i64* %6, align 8
  br label %188

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %15, align 8
  store i32 0, i32* %13, align 4
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %66, %23
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %15, align 8
  %34 = icmp ule i64 %32, %33
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i1 [ false, %27 ], [ %34, %30 ]
  br i1 %36, label %37, label %69

37:                                               ; preds = %35
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %47 [
    i32 9, label %44
    i32 10, label %44
    i32 13, label %44
    i32 32, label %44
    i32 61, label %45
  ]

44:                                               ; preds = %37, %37, %37, %37
  br label %65

45:                                               ; preds = %37
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %14, align 4
  br label %65

47:                                               ; preds = %37
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %9, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = call signext i8 @toupper(i8 signext %57)
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8 %58, i8* %63, align 1
  br label %64

64:                                               ; preds = %52, %47
  br label %65

65:                                               ; preds = %64, %45, %44
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %27

69:                                               ; preds = %35
  %70 = load i32, i32* %13, align 4
  %71 = load i64, i64* %9, align 8
  %72 = sub i64 %71, 1
  %73 = call i8* @min(i32 %70, i64 %72)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %13, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 0, i8* %80, align 1
  store i32 0, i32* %13, align 4
  store i64 0, i64* %16, align 8
  br label %81

81:                                               ; preds = %149, %69
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %15, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %152

86:                                               ; preds = %81
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sgt i32 %92, 13
  br i1 %93, label %94, label %109

94:                                               ; preds = %86
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 32
  br i1 %101, label %102, label %109

102:                                              ; preds = %94
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i64, i64* %11, align 8
  %106 = sub i64 %105, 1
  %107 = call i8* @min(i32 %104, i64 %106)
  %108 = ptrtoint i8* %107 to i64
  store i64 %108, i64* %16, align 8
  br label %109

109:                                              ; preds = %102, %94, %86
  %110 = load i8*, i8** %10, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %131, label %115

115:                                              ; preds = %109
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp sgt i32 %121, 13
  br i1 %122, label %123, label %148

123:                                              ; preds = %115
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 32
  br i1 %130, label %131, label %148

131:                                              ; preds = %123, %109
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* %11, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = load i8*, i8** %7, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = load i8*, i8** %10, align 8
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %13, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  store i8 %141, i8* %146, align 1
  br label %147

147:                                              ; preds = %136, %131
  br label %148

148:                                              ; preds = %147, %123, %115
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %12, align 4
  br label %81

152:                                              ; preds = %81
  %153 = load i8*, i8** %10, align 8
  %154 = load i64, i64* %16, align 8
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8 0, i8* %155, align 1
  %156 = load i8*, i8** %10, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 34
  br i1 %160, label %161, label %186

161:                                              ; preds = %152
  %162 = load i64, i64* %16, align 8
  %163 = add i64 %162, -1
  store i64 %163, i64* %16, align 8
  %164 = load i8*, i8** %10, align 8
  %165 = load i8*, i8** %10, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 1
  %167 = load i64, i64* %11, align 8
  %168 = call i32 @strlcpy(i8* %164, i8* %166, i64 %167)
  %169 = load i64, i64* %16, align 8
  %170 = icmp ugt i64 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %161
  %172 = load i8*, i8** %10, align 8
  %173 = load i64, i64* %16, align 8
  %174 = sub i64 %173, 1
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 34
  br i1 %178, label %179, label %185

179:                                              ; preds = %171
  %180 = load i64, i64* %16, align 8
  %181 = add i64 %180, -1
  store i64 %181, i64* %16, align 8
  %182 = load i8*, i8** %10, align 8
  %183 = load i64, i64* %16, align 8
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8 0, i8* %184, align 1
  br label %185

185:                                              ; preds = %179, %171, %161
  br label %186

186:                                              ; preds = %185, %152
  %187 = load i64, i64* %16, align 8
  store i64 %187, i64* %6, align 8
  br label %188

188:                                              ; preds = %186, %22
  %189 = load i64, i64* %6, align 8
  ret i64 %189
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i8* @min(i32, i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
