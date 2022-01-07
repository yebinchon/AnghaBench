; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_date.c_svn_parse_date.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_date.c_svn_parse_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@APR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Can't manipulate current date\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"YYYY-M[M]-D[D]\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"YYYY-M[M]-D[D]Th[h]:mm[:ss[.u[u[u[u[u[u][Z]\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"YYYY-M[M]-D[D]Th[h]:mm[:ss[.u[u[u[u[u[u]+OO[:oo]\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"YYYYMMDD\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"YYYYMMDDThhmm[ss[.u[u[u[u[u[u][Z]\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"YYYYMMDDThhmm[ss[.u[u[u[u[u[u]+OO[oo]\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"YYYY-M[M]-D[D] h[h]:mm[:ss[.u[u[u[u[u[u][ +OO[oo]\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"YYYY-M[M]-D[D]Th[h]:mm[:ss[.u[u[u[u[u[u]+OO[oo]\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"h[h]:mm[:ss[.u[u[u[u[u[u]\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@valid_days_by_month = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [31 x i8] c"Can't calculate requested date\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Can't expand time\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_parse_date(i64* %0, i32* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__, align 4
  %13 = alloca %struct.TYPE_6__, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__, align 4
  store i64* %0, i64** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load i64, i64* @FALSE, align 8
  %19 = load i64*, i64** %7, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @apr_time_exp_lt(%struct.TYPE_6__* %13, i32 %20)
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* @APR_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i64, i64* %14, align 8
  %27 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = call i32* @svn_error_wrap_apr(i64 %26, i32 %27)
  store i32* %28, i32** %6, align 8
  br label %196

29:                                               ; preds = %5
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @template_match(%struct.TYPE_6__* %12, i64* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %61, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 @template_match(%struct.TYPE_6__* %12, i64* %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %9, align 8
  %39 = call i64 @template_match(%struct.TYPE_6__* %12, i64* %15, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %9, align 8
  %43 = call i64 @template_match(%struct.TYPE_6__* %12, i64* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %9, align 8
  %47 = call i64 @template_match(%struct.TYPE_6__* %12, i64* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %9, align 8
  %51 = call i64 @template_match(%struct.TYPE_6__* %12, i64* %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %9, align 8
  %55 = call i64 @template_match(%struct.TYPE_6__* %12, i64* %15, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %9, align 8
  %59 = call i64 @template_match(%struct.TYPE_6__* %12, i64* %15, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57, %53, %49, %45, %41, %37, %33, %29
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1900
  store i32 %64, i32* %62, align 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %92

68:                                               ; preds = %57
  %69 = load i8*, i8** %9, align 8
  %70 = call i64 @template_match(%struct.TYPE_6__* %12, i64* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i32 %80, i32* %81, align 4
  br label %91

82:                                               ; preds = %68
  %83 = load i32, i32* %10, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @words_match(%struct.TYPE_6__* %12, i64* %15, i32 %83, i8* %84, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %89, i32** %6, align 8
  br label %196

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %72
  br label %92

92:                                               ; preds = %91, %61
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %126, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 11
  br i1 %99, label %126, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** @valid_days_by_month, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %102, %108
  br i1 %109, label %126, label %110

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %112, 1
  br i1 %113, label %126, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp sgt i32 %116, 23
  br i1 %117, label %126, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %120, 59
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %124, 60
  br i1 %125, label %126, label %128

126:                                              ; preds = %122, %118, %114, %110, %100, %96, %92
  %127 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %127, i32** %6, align 8
  br label %196

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %153

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 29
  br i1 %135, label %136, label %153

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = srem i32 %138, 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = srem i32 %143, 100
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = srem i32 %148, 400
  %150 = icmp ne i32 %149, 100
  br i1 %150, label %151, label %153

151:                                              ; preds = %146, %136
  %152 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %152, i32** %6, align 8
  br label %196

153:                                              ; preds = %146, %141, %132, %128
  %154 = load i64, i64* %15, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %182

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 6
  store i32 %158, i32* %159, align 4
  %160 = call i64 @apr_time_exp_gmt_get(i32* %16, %struct.TYPE_6__* %12)
  store i64 %160, i64* %14, align 8
  %161 = load i64, i64* %14, align 8
  %162 = load i64, i64* @APR_SUCCESS, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = load i64, i64* %14, align 8
  %166 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %167 = call i32* @svn_error_wrap_apr(i64 %165, i32 %166)
  store i32* %167, i32** %6, align 8
  br label %196

168:                                              ; preds = %156
  %169 = load i32, i32* %16, align 4
  %170 = call i64 @apr_time_exp_lt(%struct.TYPE_6__* %17, i32 %169)
  store i64 %170, i64* %14, align 8
  %171 = load i64, i64* %14, align 8
  %172 = load i64, i64* @APR_SUCCESS, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load i64, i64* %14, align 8
  %176 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %177 = call i32* @svn_error_wrap_apr(i64 %175, i32 %176)
  store i32* %177, i32** %6, align 8
  br label %196

178:                                              ; preds = %168
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 6
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 6
  store i32 %180, i32* %181, align 4
  br label %182

182:                                              ; preds = %178, %153
  %183 = load i32*, i32** %8, align 8
  %184 = call i64 @apr_time_exp_gmt_get(i32* %183, %struct.TYPE_6__* %12)
  store i64 %184, i64* %14, align 8
  %185 = load i64, i64* %14, align 8
  %186 = load i64, i64* @APR_SUCCESS, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %182
  %189 = load i64, i64* %14, align 8
  %190 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %191 = call i32* @svn_error_wrap_apr(i64 %189, i32 %190)
  store i32* %191, i32** %6, align 8
  br label %196

192:                                              ; preds = %182
  %193 = load i64, i64* @TRUE, align 8
  %194 = load i64*, i64** %7, align 8
  store i64 %193, i64* %194, align 8
  %195 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %195, i32** %6, align 8
  br label %196

196:                                              ; preds = %192, %188, %174, %164, %151, %126, %88, %25
  %197 = load i32*, i32** %6, align 8
  ret i32* %197
}

declare dso_local i64 @apr_time_exp_lt(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @template_match(%struct.TYPE_6__*, i64*, i8*, i8*) #1

declare dso_local i32 @words_match(%struct.TYPE_6__*, i64*, i32, i8*, i32*) #1

declare dso_local i64 @apr_time_exp_gmt_get(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
