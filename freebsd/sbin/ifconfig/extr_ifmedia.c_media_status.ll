; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifmedia.c_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifmedia.c_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmediareq = type { i32, i32*, i64, i64, i32, i32, i8*, i32, i32, i32 }
%struct.ifdownreason = type { i32, i32*, i64, i64, i32, i32, i8*, i32, i32, i32 }

@name = common dso_local global i32 0, align 4
@SIOCGIFXMEDIA = common dso_local global i32 0, align 4
@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: no media types?\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"SIOCGIFXMEDIA\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"SIOCGIFMEDIA\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\09media: \00", align 1
@IFM_AVALID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"\09status: \00", align 1
@IFM_ACTIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@IFM_IEEE80211_STA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"associated\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"no carrier\00", align 1
@SIOCGIFDOWNREASON = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c" (vendor code %d)\00", align 1
@supmedia = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [19 x i8] c"\09supported media:\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @media_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifmediareq, align 8
  %4 = alloca %struct.ifdownreason, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = call i32 @memset(%struct.ifmediareq* %3, i32 0, i32 64)
  %10 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %3, i32 0, i32 9
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @name, align 4
  %13 = call i32 @strlcpy(i32 %11, i32 %12, i32 4)
  store i32 1, i32* %8, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @SIOCGIFXMEDIA, align 4
  %16 = ptrtoint %struct.ifmediareq* %3 to i32
  %17 = call i64 @ioctl(i32 %14, i32 %15, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @SIOCGIFMEDIA, align 4
  %26 = ptrtoint %struct.ifmediareq* %3 to i32
  %27 = call i64 @ioctl(i32 %24, i32 %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %192

30:                                               ; preds = %23, %20
  %31 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @name, align 4
  %36 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %192

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %3, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i64 @malloc(i32 %42)
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %37
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %3, i32 0, i32 1
  store i32* %50, i32** %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @SIOCGIFXMEDIA, align 4
  %57 = ptrtoint %struct.ifmediareq* %3 to i32
  %58 = call i64 @ioctl(i32 %55, i32 %56, i32 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %54
  br label %72

63:                                               ; preds = %49
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @SIOCGIFMEDIA, align 4
  %66 = ptrtoint %struct.ifmediareq* %3 to i32
  %67 = call i64 @ioctl(i32 %64, i32 %65, i32 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %63
  br label %72

72:                                               ; preds = %71, %62
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %74 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %3, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @print_media_word(i64 %75, i32 1)
  %77 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %3, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %3, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %72
  %83 = call i32 @putchar(i8 signext 32)
  %84 = call i32 @putchar(i8 signext 40)
  %85 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %3, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @print_media_word(i64 %86, i32 0)
  %88 = call i32 @putchar(i8 signext 41)
  br label %89

89:                                               ; preds = %82, %72
  %90 = call i32 @putchar(i8 signext 10)
  %91 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %3, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @IFM_AVALID, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %162

96:                                               ; preds = %89
  store i32 0, i32* %7, align 4
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %98 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %3, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @IFM_TYPE(i64 %99)
  switch i32 %100, label %130 [
    i32 129, label %101
    i32 130, label %101
    i32 128, label %111
  ]

101:                                              ; preds = %96, %96
  %102 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %3, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @IFM_ACTIVE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %110

109:                                              ; preds = %101
  store i32 1, i32* %7, align 4
  br label %110

110:                                              ; preds = %109, %107
  br label %130

111:                                              ; preds = %96
  %112 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %3, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @IFM_ACTIVE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %3, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @IFM_OPMODE(i64 %119)
  %121 = load i32, i32* @IFM_IEEE80211_STA, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %127

125:                                              ; preds = %117
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %123
  br label %129

128:                                              ; preds = %111
  store i32 1, i32* %7, align 4
  br label %129

129:                                              ; preds = %128, %127
  br label %130

130:                                              ; preds = %96, %129, %110
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %160

133:                                              ; preds = %130
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %135 = bitcast %struct.ifdownreason* %4 to %struct.ifmediareq*
  %136 = call i32 @memset(%struct.ifmediareq* %135, i32 0, i32 64)
  %137 = getelementptr inbounds %struct.ifdownreason, %struct.ifdownreason* %4, i32 0, i32 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @name, align 4
  %140 = call i32 @strlcpy(i32 %138, i32 %139, i32 4)
  %141 = load i32, i32* %2, align 4
  %142 = load i32, i32* @SIOCGIFDOWNREASON, align 4
  %143 = ptrtoint %struct.ifdownreason* %4 to i32
  %144 = call i64 @ioctl(i32 %141, i32 %142, i32 %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %133
  %147 = getelementptr inbounds %struct.ifdownreason, %struct.ifdownreason* %4, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  switch i32 %148, label %157 [
    i32 132, label %149
    i32 131, label %153
  ]

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.ifdownreason, %struct.ifdownreason* %4, i32 0, i32 6
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %151)
  br label %158

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.ifdownreason, %struct.ifdownreason* %4, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %155)
  br label %158

157:                                              ; preds = %146
  br label %158

158:                                              ; preds = %157, %153, %149
  br label %159

159:                                              ; preds = %158, %133
  br label %160

160:                                              ; preds = %159, %130
  %161 = call i32 @putchar(i8 signext 10)
  br label %162

162:                                              ; preds = %160, %89
  %163 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %3, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %189

166:                                              ; preds = %162
  %167 = load i64, i64* @supmedia, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %189

169:                                              ; preds = %166
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %171

171:                                              ; preds = %185, %169
  %172 = load i32, i32* %6, align 4
  %173 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %3, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %172, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %171
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %178 = load i32*, i32** %5, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @print_media_word_ifconfig(i32 %182)
  %184 = call i32 @putchar(i8 signext 10)
  br label %185

185:                                              ; preds = %176
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %6, align 4
  br label %171

188:                                              ; preds = %171
  br label %189

189:                                              ; preds = %188, %166, %162
  %190 = load i32*, i32** %5, align 8
  %191 = call i32 @free(i32* %190)
  br label %192

192:                                              ; preds = %189, %34, %29
  ret void
}

declare dso_local i32 @memset(%struct.ifmediareq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_media_word(i64, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @IFM_TYPE(i64) #1

declare dso_local i32 @IFM_OPMODE(i64) #1

declare dso_local i32 @print_media_word_ifconfig(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
