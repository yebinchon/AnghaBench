; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/swapon/extr_swapon.c_swap_on_geli_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/swapon/extr_swapon.c_swap_on_geli_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" -s \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"aalgo=\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" -a \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ealgo=\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" -e \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"keylen=\00", align 1
@errno = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"Invalid keylen: %s\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" -l \00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"sectorsize=\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Invalid sectorsize: %s\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"notrim\00", align 1
@Eflag = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [41 x i8] c"Options \22notrim\22 and \22trimonce\22 conflict\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" -T \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"late\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"noauto\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"sw\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"trimonce\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Invalid option: %s\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"%s%s%s%s%s%s%s%s%s -d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @swap_on_geli_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @swap_on_geli_args(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  store i8* null, i8** %7, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %162

23:                                               ; preds = %1
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* @strdup(i8* %24)
  store i8* %25, i8** %17, align 8
  store i8* %25, i8** %16, align 8
  br label %26

26:                                               ; preds = %160, %23
  %27 = call i8* @strsep(i8** %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %27, i8** %15, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %161

29:                                               ; preds = %26
  %30 = load i8*, i8** %15, align 8
  %31 = call i8* @strstr(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %31, i8** %13, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i8*, i8** %13, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 7
  %37 = getelementptr inbounds i8, i8* %36, i64 -1
  store i8* %37, i8** %4, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %160

38:                                               ; preds = %29
  %39 = load i8*, i8** %15, align 8
  %40 = call i8* @strstr(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i8* %40, i8** %13, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i8*, i8** %13, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 7
  %46 = getelementptr inbounds i8, i8* %45, i64 -1
  store i8* %46, i8** %5, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %159

47:                                               ; preds = %38
  %48 = load i8*, i8** %15, align 8
  %49 = call i8* @strstr(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i8* %49, i8** %13, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = icmp eq i8* %49, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %47
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 8
  %55 = getelementptr inbounds i8, i8* %54, i64 -1
  store i8* %55, i8** %6, align 8
  store i64 0, i64* @errno, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i64 @strtoul(i8* %56, i8** %13, i32 10)
  store i64 %57, i64* %20, align 8
  %58 = load i64, i64* @errno, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %52
  %61 = load i8*, i8** %13, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* %20, align 8
  %67 = load i64, i64* @INT_MAX, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65, %60
  %70 = load i64, i64* @EINVAL, align 8
  store i64 %70, i64* @errno, align 8
  br label %71

71:                                               ; preds = %69, %65
  br label %72

72:                                               ; preds = %71, %52
  %73 = load i64, i64* @errno, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %76)
  %78 = load i8*, i8** %17, align 8
  %79 = call i32 @free(i8* %78)
  store i8* null, i8** %2, align 8
  br label %193

80:                                               ; preds = %72
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  br label %158

81:                                               ; preds = %47
  %82 = load i8*, i8** %15, align 8
  %83 = call i8* @strstr(i8* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  store i8* %83, i8** %13, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = icmp eq i8* %83, %84
  br i1 %85, label %86, label %115

86:                                               ; preds = %81
  %87 = load i8*, i8** %13, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 12
  %89 = getelementptr inbounds i8, i8* %88, i64 -1
  store i8* %89, i8** %7, align 8
  store i64 0, i64* @errno, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = call i64 @strtoul(i8* %90, i8** %13, i32 10)
  store i64 %91, i64* %20, align 8
  %92 = load i64, i64* @errno, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %86
  %95 = load i8*, i8** %13, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = load i64, i64* %20, align 8
  %101 = load i64, i64* @INT_MAX, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99, %94
  %104 = load i64, i64* @EINVAL, align 8
  store i64 %104, i64* @errno, align 8
  br label %105

105:                                              ; preds = %103, %99
  br label %106

106:                                              ; preds = %105, %86
  %107 = load i64, i64* @errno, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %110)
  %112 = load i8*, i8** %17, align 8
  %113 = call i32 @free(i8* %112)
  store i8* null, i8** %2, align 8
  br label %193

114:                                              ; preds = %106
  br label %157

115:                                              ; preds = %81
  %116 = load i8*, i8** %15, align 8
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load i64, i64* @Eflag, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %124 = load i8*, i8** %17, align 8
  %125 = call i32 @free(i8* %124)
  store i8* null, i8** %2, align 8
  br label %193

126:                                              ; preds = %119
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8** %11, align 8
  br label %156

127:                                              ; preds = %115
  %128 = load i8*, i8** %15, align 8
  %129 = call i64 @strcmp(i8* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %155

132:                                              ; preds = %127
  %133 = load i8*, i8** %15, align 8
  %134 = call i64 @strcmp(i8* %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %154

137:                                              ; preds = %132
  %138 = load i8*, i8** %15, align 8
  %139 = call i64 @strcmp(i8* %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  br label %153

142:                                              ; preds = %137
  %143 = load i8*, i8** %15, align 8
  %144 = call i64 @strcmp(i8* %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  br label %152

147:                                              ; preds = %142
  %148 = load i8*, i8** %15, align 8
  %149 = call i32 @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i8* %148)
  %150 = load i8*, i8** %17, align 8
  %151 = call i32 @free(i8* %150)
  store i8* null, i8** %2, align 8
  br label %193

152:                                              ; preds = %146
  br label %153

153:                                              ; preds = %152, %141
  br label %154

154:                                              ; preds = %153, %136
  br label %155

155:                                              ; preds = %154, %131
  br label %156

156:                                              ; preds = %155, %126
  br label %157

157:                                              ; preds = %156, %114
  br label %158

158:                                              ; preds = %157, %80
  br label %159

159:                                              ; preds = %158, %43
  br label %160

160:                                              ; preds = %159, %34
  br label %26

161:                                              ; preds = %26
  br label %163

162:                                              ; preds = %1
  store i8* null, i8** %17, align 8
  br label %163

163:                                              ; preds = %162, %161
  %164 = load i8*, i8** %7, align 8
  %165 = icmp eq i8* %164, null
  br i1 %165, label %166, label %179

166:                                              ; preds = %163
  %167 = call i32 (...) @getpagesize()
  store i32 %167, i32* %18, align 4
  %168 = load i32, i32* %18, align 4
  %169 = call i32 @snprintf(i8* null, i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 %168)
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  store i64 %171, i64* %19, align 8
  %172 = load i64, i64* %19, align 8
  %173 = call i8* @alloca(i64 %172)
  store i8* %173, i8** %13, align 8
  %174 = load i8*, i8** %13, align 8
  %175 = load i64, i64* %19, align 8
  %176 = load i32, i32* %18, align 4
  %177 = call i32 @snprintf(i8* %174, i64 %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 %176)
  %178 = load i8*, i8** %13, align 8
  store i8* %178, i8** %7, align 8
  br label %179

179:                                              ; preds = %166, %163
  %180 = load i8*, i8** %8, align 8
  %181 = load i8*, i8** %4, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = load i8*, i8** %5, align 8
  %184 = load i8*, i8** %10, align 8
  %185 = load i8*, i8** %6, align 8
  %186 = load i8*, i8** %11, align 8
  %187 = load i8*, i8** %12, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = call i32 @asprintf(i8** %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i8* %180, i8* %181, i8* %182, i8* %183, i8* %184, i8* %185, i8* %186, i8* %187, i8* %188)
  %190 = load i8*, i8** %17, align 8
  %191 = call i32 @free(i8* %190)
  %192 = load i8*, i8** %14, align 8
  store i8* %192, i8** %2, align 8
  br label %193

193:                                              ; preds = %179, %147, %122, %109, %75
  %194 = load i8*, i8** %2, align 8
  ret i8* %194
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
