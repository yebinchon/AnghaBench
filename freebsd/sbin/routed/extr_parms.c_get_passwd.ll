; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_parms.c_get_passwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_parms.c_get_passwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parm = type { %struct.auth* }
%struct.auth = type { i64, i32, i64, i64, i64 }

@get_passwd.buf = internal global [80 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [23 x i8] c"ignore unsafe password\00", align 1
@RIP_AUTH_NONE = common dso_local global i64 0, align 8
@MAX_AUTH_KEYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"too many passwords\00", align 1
@DAY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"| ,\0A\0D\00", align 1
@RIP_AUTH_MD5 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"missing Keyid\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"bad KeyID \22%.20s\22\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"duplicate KeyID \22%.20s\22\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"missing second timestamp\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"out of order timestamp %.30s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, %struct.parm*, i64, i32)* @get_passwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_passwd(i8* %0, i8* %1, %struct.parm* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.parm*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca %struct.auth, align 8
  %16 = alloca %struct.auth*, align 8
  %17 = alloca %struct.auth*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.parm* %2, %struct.parm** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %165

27:                                               ; preds = %5
  %28 = load %struct.parm*, %struct.parm** %9, align 8
  %29 = getelementptr inbounds %struct.parm, %struct.parm* %28, i32 0, i32 0
  %30 = load %struct.auth*, %struct.auth** %29, align 8
  store %struct.auth* %30, %struct.auth** %16, align 8
  store i32 0, i32* %18, align 4
  br label %31

31:                                               ; preds = %43, %27
  %32 = load %struct.auth*, %struct.auth** %16, align 8
  %33 = getelementptr inbounds %struct.auth, %struct.auth* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RIP_AUTH_NONE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* @MAX_AUTH_KEYS, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %165

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %18, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %18, align 4
  %46 = load %struct.auth*, %struct.auth** %16, align 8
  %47 = getelementptr inbounds %struct.auth, %struct.auth* %46, i32 1
  store %struct.auth* %47, %struct.auth** %16, align 8
  br label %31

48:                                               ; preds = %31
  %49 = call i32 @memset(%struct.auth* %15, i32 0, i32 40)
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.auth, %struct.auth* %15, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  %52 = load i64, i64* @DAY, align 8
  %53 = sub nsw i64 -1, %52
  %54 = getelementptr inbounds %struct.auth, %struct.auth* %15, i32 0, i32 2
  store i64 %53, i64* %54, align 8
  %55 = load i8*, i8** %8, align 8
  store i8* %55, i8** %12, align 8
  %56 = getelementptr inbounds %struct.auth, %struct.auth* %15, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = call i64 @parse_quote(i8** %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %14, i8* %58, i32 8)
  %60 = icmp sgt i64 0, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i8*, i8** %7, align 8
  store i8* %62, i8** %6, align 8
  br label %165

63:                                               ; preds = %48
  %64 = load i8, i8* %14, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 124
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @RIP_AUTH_MD5, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %165

72:                                               ; preds = %67
  br label %156

73:                                               ; preds = %63
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %8, align 8
  store i8* %75, i8** %12, align 8
  store i8 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @get_passwd.buf, i64 0, i64 79), align 1
  %76 = call i64 @parse_quote(i8** %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @get_passwd.buf, i64 0, i64 0), i32 80)
  %77 = icmp sgt i64 0, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %73
  %79 = load i8, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @get_passwd.buf, i64 0, i64 79), align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  %83 = call i32 @strtoul(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @get_passwd.buf, i64 0, i64 0), i8** %13, i32 0)
  store i32 %83, i32* %19, align 4
  %84 = icmp sgt i32 %83, 255
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = load i8*, i8** %13, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85, %82, %78, %73
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @get_passwd.buf, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %91)
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @get_passwd.buf, i64 0, i64 0), i8** %6, align 8
  br label %165

93:                                               ; preds = %85
  %94 = load %struct.parm*, %struct.parm** %9, align 8
  %95 = getelementptr inbounds %struct.parm, %struct.parm* %94, i32 0, i32 0
  %96 = load %struct.auth*, %struct.auth** %95, align 8
  store %struct.auth* %96, %struct.auth** %17, align 8
  br label %97

97:                                               ; preds = %111, %93
  %98 = load %struct.auth*, %struct.auth** %17, align 8
  %99 = load %struct.auth*, %struct.auth** %16, align 8
  %100 = icmp ult %struct.auth* %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load %struct.auth*, %struct.auth** %17, align 8
  %103 = getelementptr inbounds %struct.auth, %struct.auth* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %19, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @get_passwd.buf, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %108)
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @get_passwd.buf, i64 0, i64 0), i8** %6, align 8
  br label %165

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.auth*, %struct.auth** %17, align 8
  %113 = getelementptr inbounds %struct.auth, %struct.auth* %112, i32 1
  store %struct.auth* %113, %struct.auth** %17, align 8
  br label %97

114:                                              ; preds = %97
  %115 = load i32, i32* %19, align 4
  %116 = getelementptr inbounds %struct.auth, %struct.auth* %15, i32 0, i32 1
  store i32 %115, i32* %116, align 8
  %117 = load i8, i8* %14, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 124
  br i1 %119, label %120, label %155

120:                                              ; preds = %114
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %8, align 8
  store i8* %122, i8** %12, align 8
  %123 = getelementptr inbounds %struct.auth, %struct.auth* %15, i32 0, i32 3
  %124 = load i8*, i8** %12, align 8
  %125 = call i8* @parse_ts(i64* %123, i8** %8, i8* %124, i8* %14, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @get_passwd.buf, i64 0, i64 0), i32 80)
  store i8* %125, i8** %13, align 8
  %126 = icmp ne i8* null, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i8*, i8** %13, align 8
  store i8* %128, i8** %6, align 8
  br label %165

129:                                              ; preds = %120
  %130 = load i8, i8* %14, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 124
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %165

134:                                              ; preds = %129
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %8, align 8
  store i8* %136, i8** %12, align 8
  %137 = getelementptr inbounds %struct.auth, %struct.auth* %15, i32 0, i32 2
  %138 = load i8*, i8** %12, align 8
  %139 = call i8* @parse_ts(i64* %137, i8** %8, i8* %138, i8* %14, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @get_passwd.buf, i64 0, i64 0), i32 80)
  store i8* %139, i8** %13, align 8
  %140 = icmp ne i8* null, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i8*, i8** %13, align 8
  store i8* %142, i8** %6, align 8
  br label %165

143:                                              ; preds = %134
  %144 = getelementptr inbounds %struct.auth, %struct.auth* %15, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = getelementptr inbounds %struct.auth, %struct.auth* %15, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = icmp sgt i32 %146, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %143
  %152 = load i8*, i8** %12, align 8
  %153 = call i32 @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @get_passwd.buf, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %152)
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @get_passwd.buf, i64 0, i64 0), i8** %6, align 8
  br label %165

154:                                              ; preds = %143
  br label %155

155:                                              ; preds = %154, %114
  br label %156

156:                                              ; preds = %155, %72
  %157 = load i8, i8* %14, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i8*, i8** %7, align 8
  store i8* %161, i8** %6, align 8
  br label %165

162:                                              ; preds = %156
  %163 = load %struct.auth*, %struct.auth** %16, align 8
  %164 = call i32 @memmove(%struct.auth* %163, %struct.auth* %15, i32 40)
  store i8* null, i8** %6, align 8
  br label %165

165:                                              ; preds = %162, %160, %151, %141, %133, %127, %107, %90, %71, %61, %41, %26
  %166 = load i8*, i8** %6, align 8
  ret i8* %166
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.auth*, i32, i32) #1

declare dso_local i64 @parse_quote(i8**, i8*, i8*, i8*, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @parse_ts(i64*, i8**, i8*, i8*, i8*, i32) #1

declare dso_local i32 @memmove(%struct.auth*, %struct.auth*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
