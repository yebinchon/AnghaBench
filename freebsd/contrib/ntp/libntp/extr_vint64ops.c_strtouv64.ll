; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_vint64ops.c_strtouv64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_vint64ops.c_strtouv64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, i8* }

@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strtouv64(%struct.TYPE_8__* noalias sret %0, i8* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 %3, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %11, align 8
  br label %14

14:                                               ; preds = %19, %4
  %15 = load i8*, i8** %11, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @isspace(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %11, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %11, align 8
  br label %14

22:                                               ; preds = %14
  %23 = load i8*, i8** %11, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %11, align 8
  store i32 1, i32* %9, align 4
  br label %39

30:                                               ; preds = %22
  %31 = load i8*, i8** %11, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 43
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %11, align 8
  br label %38

38:                                               ; preds = %35, %30
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  store i32 10, i32* %7, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 48
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  store i32 8, i32* %7, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %11, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call signext i8 @toupper(i8 signext %50)
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 88
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %11, align 8
  store i32 16, i32* %7, align 4
  br label %57

57:                                               ; preds = %54, %47
  br label %58

58:                                               ; preds = %57, %42
  br label %90

59:                                               ; preds = %39
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 16
  br i1 %61, label %62, label %79

62:                                               ; preds = %59
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 48
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load i8*, i8** %11, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = call signext i8 @toupper(i8 signext %71)
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 88
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  store i8* %77, i8** %11, align 8
  br label %78

78:                                               ; preds = %75, %68, %62
  br label %89

79:                                               ; preds = %59
  %80 = load i32, i32* %7, align 4
  %81 = icmp sle i32 %80, 2
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = icmp sgt i32 %83, 36
  br i1 %84, label %85, label %88

85:                                               ; preds = %82, %79
  %86 = call i32 @memset(%struct.TYPE_8__* %0, i32 255, i32 32)
  %87 = load i32, i32* @ERANGE, align 4
  store i32 %87, i32* @errno, align 4
  br label %211

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %78
  br label %90

90:                                               ; preds = %89, %58
  %91 = call i32 @memset(%struct.TYPE_8__* %0, i32 0, i32 32)
  br label %92

92:                                               ; preds = %140, %90
  %93 = load i8*, i8** %11, align 8
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %96, label %186

96:                                               ; preds = %92
  %97 = load i8*, i8** %11, align 8
  %98 = load i8, i8* %97, align 1
  %99 = call i64 @isdigit(i8 signext %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i8*, i8** %11, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = sub nsw i32 %104, 48
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %8, align 1
  br label %134

107:                                              ; preds = %96
  %108 = load i8*, i8** %11, align 8
  %109 = load i8, i8* %108, align 1
  %110 = call i64 @isupper(i8 signext %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load i8*, i8** %11, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = sub nsw i32 %115, 65
  %117 = add nsw i32 %116, 10
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %8, align 1
  br label %133

119:                                              ; preds = %107
  %120 = load i8*, i8** %11, align 8
  %121 = load i8, i8* %120, align 1
  %122 = call i64 @islower(i8 signext %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load i8*, i8** %11, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = sub nsw i32 %127, 97
  %129 = add nsw i32 %128, 10
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %8, align 1
  br label %132

131:                                              ; preds = %119
  br label %186

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %112
  br label %134

134:                                              ; preds = %133, %101
  %135 = load i8, i8* %8, align 1
  %136 = sext i8 %135 to i32
  %137 = load i32, i32* %7, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %186

140:                                              ; preds = %134
  store i32 1, i32* %10, align 4
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = ptrtoint i8* %143 to i32
  %145 = load i32, i32* %7, align 4
  %146 = mul nsw i32 %144, %145
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = load i32, i32* %12, align 4
  %153 = ashr i32 %152, 16
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = ptrtoint i8* %156 to i32
  %158 = load i32, i32* %7, align 4
  %159 = mul nsw i32 %157, %158
  %160 = add nsw i32 %153, %159
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i8*
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %7, align 4
  %170 = mul nsw i32 %168, %169
  %171 = load i32, i32* %12, align 4
  %172 = ashr i32 %171, 16
  %173 = add nsw i32 %170, %172
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i8, i8* %8, align 1
  %183 = call i32 @M_ADD(i32 %178, i32 %181, i32 0, i8 signext %182)
  %184 = load i8*, i8** %11, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %11, align 8
  br label %92

186:                                              ; preds = %139, %131, %92
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* @EINVAL, align 4
  store i32 %190, i32* @errno, align 4
  br label %191

191:                                              ; preds = %189, %186
  %192 = load i8**, i8*** %6, align 8
  %193 = icmp ne i8** %192, null
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load i8*, i8** %11, align 8
  %196 = call i64 @noconst(i8* %195)
  %197 = inttoptr i64 %196 to i8*
  %198 = load i8**, i8*** %6, align 8
  store i8* %197, i8** %198, align 8
  br label %199

199:                                              ; preds = %194, %191
  %200 = load i32, i32* %9, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @M_NEG(i32 %205, i32 %208)
  br label %210

210:                                              ; preds = %202, %199
  br label %211

211:                                              ; preds = %210, %85
  ret void
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @isupper(i8 signext) #1

declare dso_local i64 @islower(i8 signext) #1

declare dso_local i32 @M_ADD(i32, i32, i32, i8 signext) #1

declare dso_local i64 @noconst(i8*) #1

declare dso_local i32 @M_NEG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
