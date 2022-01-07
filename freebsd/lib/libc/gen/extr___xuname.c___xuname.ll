; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr___xuname.c___xuname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr___xuname.c___xuname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CTL_KERN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"UNAME_s\00", align 1
@KERN_OSTYPE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERN_HOSTNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"UNAME_r\00", align 1
@KERN_OSRELEASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"UNAME_v\00", align 1
@KERN_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"UNAME_m\00", align 1
@CTL_HW = common dso_local global i32 0, align 4
@HW_MACHINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__xuname(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i32, i32* @CTL_KERN, align 4
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %12, i32* %13, align 4
  %14 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i8*, i8** %9, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @strlcpy(i8* %17, i8* %18, i32 %19)
  br label %45

21:                                               ; preds = %2
  %22 = load i32, i32* @KERN_OSTYPE, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %7, align 8
  %26 = load i32, i32* @errno, align 4
  store i32 %26, i32* %10, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @sysctl(i32* %27, i32 2, i8* %28, i64* %7, i32* null, i32 0)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load i32, i32* @errno, align 4
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* @errno, align 4
  br label %38

37:                                               ; preds = %31
  store i32 -1, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %35
  br label %39

39:                                               ; preds = %38, %21
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8 0, i8* %44, align 1
  br label %45

45:                                               ; preds = %39, %16
  %46 = load i32, i32* %3, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %9, align 8
  %50 = load i32, i32* @KERN_HOSTNAME, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %7, align 8
  %54 = load i32, i32* @errno, align 4
  store i32 %54, i32* %10, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @sysctl(i32* %55, i32 2, i8* %56, i64* %7, i32* null, i32 0)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %67

59:                                               ; preds = %45
  %60 = load i32, i32* @errno, align 4
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* @errno, align 4
  br label %66

65:                                               ; preds = %59
  store i32 -1, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %63
  br label %67

67:                                               ; preds = %66, %45
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load i32, i32* %3, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %9, align 8
  %77 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %77, i8** %8, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %67
  %80 = load i8*, i8** %9, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @strlcpy(i8* %80, i8* %81, i32 %82)
  br label %108

84:                                               ; preds = %67
  %85 = load i32, i32* @KERN_OSRELEASE, align 4
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %7, align 8
  %89 = load i32, i32* @errno, align 4
  store i32 %89, i32* %10, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @sysctl(i32* %90, i32 2, i8* %91, i64* %7, i32* null, i32 0)
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %102

94:                                               ; preds = %84
  %95 = load i32, i32* @errno, align 4
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* @errno, align 4
  br label %101

100:                                              ; preds = %94
  store i32 -1, i32* %6, align 4
  br label %101

101:                                              ; preds = %100, %98
  br label %102

102:                                              ; preds = %101, %84
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 0, i8* %107, align 1
  br label %108

108:                                              ; preds = %102, %79
  %109 = load i32, i32* %3, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %9, align 8
  %113 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %113, i8** %8, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load i8*, i8** %9, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @strlcpy(i8* %116, i8* %117, i32 %118)
  br label %172

120:                                              ; preds = %108
  %121 = load i32, i32* @KERN_VERSION, align 4
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %7, align 8
  %125 = load i32, i32* @errno, align 4
  store i32 %125, i32* %10, align 4
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %127 = load i8*, i8** %9, align 8
  %128 = call i32 @sysctl(i32* %126, i32 2, i8* %127, i64* %7, i32* null, i32 0)
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %138

130:                                              ; preds = %120
  %131 = load i32, i32* @errno, align 4
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* @errno, align 4
  br label %137

136:                                              ; preds = %130
  store i32 -1, i32* %6, align 4
  br label %137

137:                                              ; preds = %136, %134
  br label %138

138:                                              ; preds = %137, %120
  %139 = load i8*, i8** %9, align 8
  %140 = load i32, i32* %3, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  store i8 0, i8* %143, align 1
  %144 = load i8*, i8** %9, align 8
  store i8* %144, i8** %8, align 8
  br label %145

145:                                              ; preds = %168, %138
  %146 = load i64, i64* %7, align 8
  %147 = add i64 %146, -1
  store i64 %147, i64* %7, align 8
  %148 = icmp ne i64 %146, 0
  br i1 %148, label %149, label %171

149:                                              ; preds = %145
  %150 = load i8*, i8** %8, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 10
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load i8*, i8** %8, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 9
  br i1 %158, label %159, label %167

159:                                              ; preds = %154, %149
  %160 = load i64, i64* %7, align 8
  %161 = icmp ugt i64 %160, 1
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load i8*, i8** %8, align 8
  store i8 32, i8* %163, align 1
  br label %166

164:                                              ; preds = %159
  %165 = load i8*, i8** %8, align 8
  store i8 0, i8* %165, align 1
  br label %166

166:                                              ; preds = %164, %162
  br label %167

167:                                              ; preds = %166, %154
  br label %168

168:                                              ; preds = %167
  %169 = load i8*, i8** %8, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %8, align 8
  br label %145

171:                                              ; preds = %145
  br label %172

172:                                              ; preds = %171, %115
  %173 = load i32, i32* %3, align 4
  %174 = load i8*, i8** %9, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  store i8* %176, i8** %9, align 8
  %177 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %177, i8** %8, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %184

179:                                              ; preds = %172
  %180 = load i8*, i8** %9, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = load i32, i32* %3, align 4
  %183 = call i32 @strlcpy(i8* %180, i8* %181, i32 %182)
  br label %210

184:                                              ; preds = %172
  %185 = load i32, i32* @CTL_HW, align 4
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %185, i32* %186, align 4
  %187 = load i32, i32* @HW_MACHINE, align 4
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %187, i32* %188, align 4
  %189 = load i32, i32* %3, align 4
  %190 = sext i32 %189 to i64
  store i64 %190, i64* %7, align 8
  %191 = load i32, i32* @errno, align 4
  store i32 %191, i32* %10, align 4
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %193 = load i8*, i8** %9, align 8
  %194 = call i32 @sysctl(i32* %192, i32 2, i8* %193, i64* %7, i32* null, i32 0)
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %204

196:                                              ; preds = %184
  %197 = load i32, i32* @errno, align 4
  %198 = load i32, i32* @ENOMEM, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  %201 = load i32, i32* %10, align 4
  store i32 %201, i32* @errno, align 4
  br label %203

202:                                              ; preds = %196
  store i32 -1, i32* %6, align 4
  br label %203

203:                                              ; preds = %202, %200
  br label %204

204:                                              ; preds = %203, %184
  %205 = load i8*, i8** %9, align 8
  %206 = load i32, i32* %3, align 4
  %207 = sub nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %205, i64 %208
  store i8 0, i8* %209, align 1
  br label %210

210:                                              ; preds = %204, %179
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
