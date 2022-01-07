; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_ipfw_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_ipfw_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i32 }

@EX_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"missing rule specification\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@co = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"invalid syntax\00", align 1
@IP_FW_NAT_DEL = common dso_local global i32 0, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"nat %u not available\00", align 1
@IPFW_RCFLAG_SET = common dso_local global i32 0, align 4
@IPFW_RCFLAG_ALL = common dso_local global i32 0, align 4
@IPFW_RCFLAG_RANGE = common dso_local global i32 0, align 4
@IPFW_RCFLAG_DYNAMIC = common dso_local global i32 0, align 4
@IP_FW_XDEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"rule %u: setsockopt(IP_FW_XDEL)\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"no rules rules in %u-%u range\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"rule %u not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_delete(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %9 = load i32, i32* @EX_OK, align 4
  store i32 %9, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i8**, i8*** %2, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %11, i8*** %2, align 8
  %12 = call i32 @NEED1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %13 = load i8**, i8*** %2, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load i8**, i8*** %2, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @_substrcmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 0), align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EX_DATAERR, align 4
  %26 = call i32 @errx(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %21
  store i32 1, i32* %8, align 4
  %28 = load i8**, i8*** %2, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %29, i8*** %2, align 8
  br label %30

30:                                               ; preds = %27, %16, %1
  br label %31

31:                                               ; preds = %185, %164, %145, %70, %30
  %32 = load i8**, i8*** %2, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i8**, i8*** %2, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @isdigit(i8 signext %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi i1 [ false, %31 ], [ %40, %35 ]
  br i1 %42, label %43, label %186

43:                                               ; preds = %41
  %44 = load i8**, i8*** %2, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strtol(i8* %45, i8** %4, i32 10)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %6, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 45
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = call i32 @strtol(i8* %54, i8** null, i32 10)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %43
  %57 = load i8**, i8*** %2, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %2, align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 5), align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = load i32, i32* @IP_FW_NAT_DEL, align 4
  %63 = call i32 @do_cmd(i32 %62, i32* %5, i32 4)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i32, i32* @EX_UNAVAILABLE, align 4
  store i32 %67, i32* %7, align 4
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 3), align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %31

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %61
  br label %185

75:                                               ; preds = %56
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 4), align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 4), align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @ipfw_delete_pipe(i64 %79, i32 %80)
  store i32 %81, i32* %7, align 4
  br label %184

82:                                               ; preds = %75
  %83 = call i32 @memset(%struct.TYPE_5__* %3, i32 0, i32 32)
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, 31
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  %90 = load i32, i32* @IPFW_RCFLAG_SET, align 4
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 4
  store i32 %90, i32* %91, align 8
  br label %128

92:                                               ; preds = %82
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %93, 65535
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, 65535
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store i32 %97, i32* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %92
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32, i32* @IPFW_RCFLAG_ALL, align 4
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 8
  br label %116

111:                                              ; preds = %102, %92
  %112 = load i32, i32* @IPFW_RCFLAG_RANGE, align 4
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %111, %106
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 0), align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 0), align 8
  %121 = sub nsw i32 %120, 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %121, i32* %122, align 8
  %123 = load i32, i32* @IPFW_RCFLAG_SET, align 4
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %119, %116
  br label %128

128:                                              ; preds = %127, %86
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 1), align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load i32, i32* @IPFW_RCFLAG_DYNAMIC, align 4
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %132
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %131, %128
  %137 = load i32, i32* @IP_FW_XDEL, align 4
  %138 = call i32 @do_range_cmd(i32 %137, %struct.TYPE_5__* %3)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %136
  %142 = load i32, i32* @EX_UNAVAILABLE, align 4
  store i32 %142, i32* %7, align 4
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 3), align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %31

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %148)
  br label %183

150:                                              ; preds = %136
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %182

154:                                              ; preds = %150
  %155 = load i32, i32* %8, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %182

157:                                              ; preds = %154
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 1), align 4
  %159 = icmp ne i32 %158, 2
  br i1 %159, label %160, label %182

160:                                              ; preds = %157
  %161 = load i32, i32* @EX_UNAVAILABLE, align 4
  store i32 %161, i32* %7, align 4
  %162 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 3), align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  br label %31

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %167, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %173, i32 %175)
  br label %181

177:                                              ; preds = %165
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %177, %171
  br label %182

182:                                              ; preds = %181, %157, %154, %150
  br label %183

183:                                              ; preds = %182, %146
  br label %184

184:                                              ; preds = %183, %78
  br label %185

185:                                              ; preds = %184, %74
  br label %31

186:                                              ; preds = %41
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @EX_OK, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %186
  %191 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 2), align 8
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @exit(i32 %194) #3
  unreachable

196:                                              ; preds = %190, %186
  ret void
}

declare dso_local i32 @NEED1(i8*) #1

declare dso_local i64 @_substrcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @do_cmd(i32, i32*, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @ipfw_delete_pipe(i64, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @do_range_cmd(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @warnx(i8*, i32, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
