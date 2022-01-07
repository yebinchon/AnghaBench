; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_get_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_get_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"bad hexadecimal digits\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"odd count hexadecimal digits\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"hexadecimal digits too long\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"string too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i32*)* @get_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_string(i8* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 48
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = call signext i8 @tolower(i32 %25)
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 120
  br label %29

29:                                               ; preds = %21, %4
  %30 = phi i1 [ false, %4 ], [ %28, %21 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  store i8* %36, i8** %6, align 8
  br label %37

37:                                               ; preds = %34, %29
  br label %38

38:                                               ; preds = %156, %37
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %157

44:                                               ; preds = %38
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i32* @strchr(i8* %48, i8 signext %50)
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  br label %157

56:                                               ; preds = %47, %44
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = call i32 @isxdigit(i32 %63) #3
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %197

68:                                               ; preds = %59
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = call i32 @isxdigit(i32 %72) #3
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %68
  %76 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %197

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %56
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = icmp uge i8* %79, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %92

90:                                               ; preds = %85
  %91 = call i32 @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %88
  store i8* null, i8** %5, align 8
  br label %197

93:                                               ; preds = %78
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %150

96:                                               ; preds = %93
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = call i32 @isdigit(i32 %100) #3
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = sub nsw i32 %107, 48
  br label %118

109:                                              ; preds = %96
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = call signext i8 @tolower(i32 %113)
  %115 = sext i8 %114 to i32
  %116 = sub nsw i32 %115, 97
  %117 = add nsw i32 %116, 10
  br label %118

118:                                              ; preds = %109, %103
  %119 = phi i32 [ %108, %103 ], [ %117, %109 ]
  %120 = shl i32 %119, 4
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = call i32 @isdigit(i32 %124) #3
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %118
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = sub nsw i32 %131, 48
  br label %142

133:                                              ; preds = %118
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = call signext i8 @tolower(i32 %137)
  %139 = sext i8 %138 to i32
  %140 = sub nsw i32 %139, 97
  %141 = add nsw i32 %140, 10
  br label %142

142:                                              ; preds = %133, %127
  %143 = phi i32 [ %132, %127 ], [ %141, %133 ]
  %144 = or i32 %120, %143
  %145 = trunc i32 %144 to i8
  %146 = load i8*, i8** %12, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %12, align 8
  store i8 %145, i8* %146, align 1
  %148 = load i8*, i8** %6, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 2
  store i8* %149, i8** %6, align 8
  br label %156

150:                                              ; preds = %93
  %151 = load i8*, i8** %6, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %6, align 8
  %153 = load i8, i8* %151, align 1
  %154 = load i8*, i8** %12, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %12, align 8
  store i8 %153, i8* %154, align 1
  br label %156

156:                                              ; preds = %150, %142
  br label %38

157:                                              ; preds = %53, %43
  %158 = load i8*, i8** %12, align 8
  %159 = load i8*, i8** %8, align 8
  %160 = ptrtoint i8* %158 to i64
  %161 = ptrtoint i8* %159 to i64
  %162 = sub i64 %160, %161
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %180, label %166

166:                                              ; preds = %157
  %167 = load i32, i32* %10, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %180

169:                                              ; preds = %166
  %170 = load i8*, i8** %8, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 0
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 45
  br i1 %174, label %175, label %180

175:                                              ; preds = %169
  store i32 0, i32* %10, align 4
  %176 = load i8*, i8** %8, align 8
  %177 = load i32*, i32** %9, align 8
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @memset(i8* %176, i32 0, i32 %178)
  br label %193

180:                                              ; preds = %169, %166, %157
  %181 = load i32, i32* %10, align 4
  %182 = load i32*, i32** %9, align 8
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %181, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %180
  %186 = load i8*, i8** %12, align 8
  %187 = load i32*, i32** %9, align 8
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %10, align 4
  %190 = sub nsw i32 %188, %189
  %191 = call i32 @memset(i8* %186, i32 0, i32 %190)
  br label %192

192:                                              ; preds = %185, %180
  br label %193

193:                                              ; preds = %192, %175
  %194 = load i32, i32* %10, align 4
  %195 = load i32*, i32** %9, align 8
  store i32 %194, i32* %195, align 4
  %196 = load i8*, i8** %6, align 8
  store i8* %196, i8** %5, align 8
  br label %197

197:                                              ; preds = %193, %92, %75, %66
  %198 = load i8*, i8** %5, align 8
  ret i8* %198
}

declare dso_local signext i8 @tolower(i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isxdigit(i32) #2

declare dso_local i32 @warnx(i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
