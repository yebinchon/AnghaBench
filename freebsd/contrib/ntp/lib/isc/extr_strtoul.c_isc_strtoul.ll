; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_strtoul.c_isc_strtoul.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_strtoul.c_isc_strtoul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULONG_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_strtoul(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %7, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %19, %3
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %7, align 8
  %18 = load i8, i8* %16, align 1
  store i8 %18, i8* %9, align 1
  br label %19

19:                                               ; preds = %15
  %20 = load i8, i8* %9, align 1
  %21 = call i64 @isspace(i8 zeroext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %15, label %23

23:                                               ; preds = %19
  %24 = load i8, i8* %9, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  store i32 1, i32* %11, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %7, align 8
  %30 = load i8, i8* %28, align 1
  store i8 %30, i8* %9, align 1
  br label %40

31:                                               ; preds = %23
  %32 = load i8, i8* %9, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 43
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  %38 = load i8, i8* %36, align 1
  store i8 %38, i8* %9, align 1
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 16
  br i1 %45, label %46, label %66

46:                                               ; preds = %43, %40
  %47 = load i8, i8* %9, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 48
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 120
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 88
  br i1 %59, label %60, label %66

60:                                               ; preds = %55, %50
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %9, align 1
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8* %65, i8** %7, align 8
  store i32 16, i32* %6, align 4
  br label %66

66:                                               ; preds = %60, %55, %46, %43
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i8, i8* %9, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, 48
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 8, i32 10
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %69, %66
  %76 = load i64, i64* @ULONG_MAX, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = udiv i64 %76, %78
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* @ULONG_MAX, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = urem i64 %80, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %13, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %148, %75
  %86 = load i8, i8* %9, align 1
  %87 = call i32 @isascii(i8 zeroext %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  br label %152

90:                                               ; preds = %85
  %91 = load i8, i8* %9, align 1
  %92 = call i64 @isdigit(i8 zeroext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i8, i8* %9, align 1
  %96 = zext i8 %95 to i32
  %97 = sub nsw i32 %96, 48
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %9, align 1
  br label %115

99:                                               ; preds = %90
  %100 = load i8, i8* %9, align 1
  %101 = call i64 @isalpha(i8 zeroext %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load i8, i8* %9, align 1
  %105 = call i64 @isupper(i8 zeroext %104)
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 55, i32 87
  %109 = load i8, i8* %9, align 1
  %110 = zext i8 %109 to i32
  %111 = sub nsw i32 %110, %108
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %9, align 1
  br label %114

113:                                              ; preds = %99
  br label %152

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114, %94
  %116 = load i8, i8* %9, align 1
  %117 = zext i8 %116 to i32
  %118 = load i32, i32* %6, align 4
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %152

121:                                              ; preds = %115
  %122 = load i32, i32* %12, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %137, label %124

124:                                              ; preds = %121
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* %10, align 8
  %127 = icmp ugt i64 %125, %126
  br i1 %127, label %137, label %128

128:                                              ; preds = %124
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* %10, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load i8, i8* %9, align 1
  %134 = zext i8 %133 to i32
  %135 = load i32, i32* %13, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %132, %124, %121
  store i32 -1, i32* %12, align 4
  br label %147

138:                                              ; preds = %132, %128
  store i32 1, i32* %12, align 4
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %8, align 8
  %142 = mul i64 %141, %140
  store i64 %142, i64* %8, align 8
  %143 = load i8, i8* %9, align 1
  %144 = zext i8 %143 to i64
  %145 = load i64, i64* %8, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %8, align 8
  br label %147

147:                                              ; preds = %138, %137
  br label %148

148:                                              ; preds = %147
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %7, align 8
  %151 = load i8, i8* %149, align 1
  store i8 %151, i8* %9, align 1
  br label %85

152:                                              ; preds = %120, %113, %89
  %153 = load i32, i32* %12, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i64, i64* @ULONG_MAX, align 8
  store i64 %156, i64* %8, align 8
  %157 = load i32, i32* @ERANGE, align 4
  store i32 %157, i32* @errno, align 4
  br label %165

158:                                              ; preds = %152
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i64, i64* %8, align 8
  %163 = sub i64 0, %162
  store i64 %163, i64* %8, align 8
  br label %164

164:                                              ; preds = %161, %158
  br label %165

165:                                              ; preds = %164, %155
  %166 = load i8**, i8*** %5, align 8
  %167 = icmp ne i8** %166, null
  br i1 %167, label %168, label %181

168:                                              ; preds = %165
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i8*, i8** %7, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 -1
  br label %176

174:                                              ; preds = %168
  %175 = load i8*, i8** %4, align 8
  br label %176

176:                                              ; preds = %174, %171
  %177 = phi i8* [ %173, %171 ], [ %175, %174 ]
  %178 = load i8**, i8*** %5, align 8
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @DE_CONST(i8* %177, i8* %179)
  br label %181

181:                                              ; preds = %176, %165
  %182 = load i64, i64* %8, align 8
  ret i64 %182
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @isascii(i8 zeroext) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i64 @isupper(i8 zeroext) #1

declare dso_local i32 @DE_CONST(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
