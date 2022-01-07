; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_fudge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_fudge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.conf_fudge = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"time1\00", align 1
@FUDGE_TIME1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"time2\00", align 1
@FUDGE_TIME2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"val1\00", align 1
@FUDGE_VAL1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"val2\00", align 1
@FUDGE_VAL2 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@FUDGE_FLAGS = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"What fudge is %s?\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Unknown fudge parameter %s\0A\00", align 1
@impl_ver = common dso_local global i64 0, align 8
@REQ_SET_CLKFUDGE = common dso_local global i32 0, align 4
@INFO_ERR_IMPL = common dso_local global i32 0, align 4
@IMPL_XNTPD = common dso_local global i64 0, align 8
@IMPL_XNTPD_OLD = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"done!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @fudge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fudge(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.conf_fudge, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %13, align 4
  %14 = call i32 @ZERO(%struct.conf_fudge* byval(%struct.conf_fudge) align 8 %5)
  %15 = load %struct.parse*, %struct.parse** %3, align 8
  %16 = getelementptr inbounds %struct.parse, %struct.parse* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @NSRCADR(i32* %19)
  %21 = getelementptr inbounds %struct.conf_fudge, %struct.conf_fudge* %5, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load %struct.parse*, %struct.parse** %3, align 8
  %23 = getelementptr inbounds %struct.parse, %struct.parse* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @STREQ(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %2
  %31 = load i64, i64* @FUDGE_TIME1, align 8
  %32 = call i8* @htonl(i64 %31)
  %33 = getelementptr inbounds %struct.conf_fudge, %struct.conf_fudge* %5, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load %struct.parse*, %struct.parse** %3, align 8
  %35 = getelementptr inbounds %struct.parse, %struct.parse* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @atolfp(i8* %39, i32* %9)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  store i32 1, i32* %13, align 4
  br label %46

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.conf_fudge, %struct.conf_fudge* %5, i32 0, i32 2
  %45 = call i32 @NTOHL_FP(i32* %9, i32* %44)
  br label %46

46:                                               ; preds = %43, %42
  br label %171

47:                                               ; preds = %2
  %48 = load %struct.parse*, %struct.parse** %3, align 8
  %49 = getelementptr inbounds %struct.parse, %struct.parse* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @STREQ(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %47
  %57 = load i64, i64* @FUDGE_TIME2, align 8
  %58 = call i8* @htonl(i64 %57)
  %59 = getelementptr inbounds %struct.conf_fudge, %struct.conf_fudge* %5, i32 0, i32 1
  store i8* %58, i8** %59, align 8
  %60 = load %struct.parse*, %struct.parse** %3, align 8
  %61 = getelementptr inbounds %struct.parse, %struct.parse* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @atolfp(i8* %65, i32* %9)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %56
  store i32 1, i32* %13, align 4
  br label %72

69:                                               ; preds = %56
  %70 = getelementptr inbounds %struct.conf_fudge, %struct.conf_fudge* %5, i32 0, i32 2
  %71 = call i32 @NTOHL_FP(i32* %9, i32* %70)
  br label %72

72:                                               ; preds = %69, %68
  br label %170

73:                                               ; preds = %47
  %74 = load %struct.parse*, %struct.parse** %3, align 8
  %75 = getelementptr inbounds %struct.parse, %struct.parse* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @STREQ(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %73
  %83 = load i64, i64* @FUDGE_VAL1, align 8
  %84 = call i8* @htonl(i64 %83)
  %85 = getelementptr inbounds %struct.conf_fudge, %struct.conf_fudge* %5, i32 0, i32 1
  store i8* %84, i8** %85, align 8
  %86 = load %struct.parse*, %struct.parse** %3, align 8
  %87 = getelementptr inbounds %struct.parse, %struct.parse* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @atoint(i8* %91, i64* %11)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %82
  store i32 1, i32* %13, align 4
  br label %99

95:                                               ; preds = %82
  %96 = load i64, i64* %11, align 8
  %97 = call i8* @htonl(i64 %96)
  %98 = getelementptr inbounds %struct.conf_fudge, %struct.conf_fudge* %5, i32 0, i32 0
  store i8* %97, i8** %98, align 8
  br label %99

99:                                               ; preds = %95, %94
  br label %169

100:                                              ; preds = %73
  %101 = load %struct.parse*, %struct.parse** %3, align 8
  %102 = getelementptr inbounds %struct.parse, %struct.parse* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @STREQ(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %100
  %110 = load i64, i64* @FUDGE_VAL2, align 8
  %111 = call i8* @htonl(i64 %110)
  %112 = getelementptr inbounds %struct.conf_fudge, %struct.conf_fudge* %5, i32 0, i32 1
  store i8* %111, i8** %112, align 8
  %113 = load %struct.parse*, %struct.parse** %3, align 8
  %114 = getelementptr inbounds %struct.parse, %struct.parse* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @atoint(i8* %118, i64* %11)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %109
  store i32 1, i32* %13, align 4
  br label %126

122:                                              ; preds = %109
  %123 = load i64, i64* %11, align 8
  %124 = call i8* @htonl(i64 %123)
  %125 = getelementptr inbounds %struct.conf_fudge, %struct.conf_fudge* %5, i32 0, i32 0
  store i8* %124, i8** %125, align 8
  br label %126

126:                                              ; preds = %122, %121
  br label %168

127:                                              ; preds = %100
  %128 = load %struct.parse*, %struct.parse** %3, align 8
  %129 = getelementptr inbounds %struct.parse, %struct.parse* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i64 @STREQ(i8* %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %156

136:                                              ; preds = %127
  %137 = load i64, i64* @FUDGE_FLAGS, align 8
  %138 = call i8* @htonl(i64 %137)
  %139 = getelementptr inbounds %struct.conf_fudge, %struct.conf_fudge* %5, i32 0, i32 1
  store i8* %138, i8** %139, align 8
  %140 = load %struct.parse*, %struct.parse** %3, align 8
  %141 = getelementptr inbounds %struct.parse, %struct.parse* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 2
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @hextoint(i8* %145, i32* %12)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %136
  store i32 1, i32* %13, align 4
  br label %155

149:                                              ; preds = %136
  %150 = load i32, i32* %12, align 4
  %151 = and i32 %150, 15
  %152 = sext i32 %151 to i64
  %153 = call i8* @htonl(i64 %152)
  %154 = getelementptr inbounds %struct.conf_fudge, %struct.conf_fudge* %5, i32 0, i32 0
  store i8* %153, i8** %154, align 8
  br label %155

155:                                              ; preds = %149, %148
  br label %167

156:                                              ; preds = %127
  %157 = load i32, i32* @stderr, align 4
  %158 = sext i32 %157 to i64
  %159 = inttoptr i64 %158 to i32*
  %160 = load %struct.parse*, %struct.parse** %3, align 8
  %161 = getelementptr inbounds %struct.parse, %struct.parse* %160, i32 0, i32 0
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 1
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 (i32*, i8*, ...) @fprintf(i32* %159, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %165)
  br label %207

167:                                              ; preds = %155
  br label %168

168:                                              ; preds = %167, %126
  br label %169

169:                                              ; preds = %168, %99
  br label %170

170:                                              ; preds = %169, %72
  br label %171

171:                                              ; preds = %170, %46
  %172 = load i32, i32* %13, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %171
  %175 = load i32, i32* @stderr, align 4
  %176 = sext i32 %175 to i64
  %177 = inttoptr i64 %176 to i32*
  %178 = load %struct.parse*, %struct.parse** %3, align 8
  %179 = getelementptr inbounds %struct.parse, %struct.parse* %178, i32 0, i32 0
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 2
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 (i32*, i8*, ...) @fprintf(i32* %177, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %183)
  br label %207

185:                                              ; preds = %171
  br label %186

186:                                              ; preds = %198, %185
  %187 = load i64, i64* @impl_ver, align 8
  %188 = load i32, i32* @REQ_SET_CLKFUDGE, align 4
  %189 = bitcast %struct.conf_fudge* %5 to i8*
  %190 = call i32 @doquery(i64 %187, i32 %188, i32 1, i32 1, i32 24, i8* %189, i64* %6, i64* %7, i8** %8, i32 0, i32 8)
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* @INFO_ERR_IMPL, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %186
  %195 = load i64, i64* @impl_ver, align 8
  %196 = load i64, i64* @IMPL_XNTPD, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i64, i64* @IMPL_XNTPD_OLD, align 8
  store i64 %199, i64* @impl_ver, align 8
  br label %186

200:                                              ; preds = %194, %186
  %201 = load i32, i32* %10, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i32*, i32** %4, align 8
  %205 = call i32 (i32*, i8*, ...) @fprintf(i32* %204, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %206

206:                                              ; preds = %203, %200
  br label %207

207:                                              ; preds = %206, %174, %156
  ret void
}

declare dso_local i32 @ZERO(%struct.conf_fudge* byval(%struct.conf_fudge) align 8) #1

declare dso_local i32 @NSRCADR(i32*) #1

declare dso_local i64 @STREQ(i8*, i8*) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @atolfp(i8*, i32*) #1

declare dso_local i32 @NTOHL_FP(i32*, i32*) #1

declare dso_local i32 @atoint(i8*, i64*) #1

declare dso_local i32 @hextoint(i8*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @doquery(i64, i32, i32, i32, i32, i8*, i64*, i64*, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
