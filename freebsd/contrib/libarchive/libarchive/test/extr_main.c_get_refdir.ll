; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_get_refdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_get_refdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unable to allocate memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@KNOWNREF = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s/test\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s/%s/test\00", align 1
@PROGRAM = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"/usr/obj\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Unable to locate known reference file %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"  Checked following directories:\0A%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"Use -r option to specify full path to reference directory\0A\00", align 1
@LIBRARY = common dso_local global i8* null, align 8
@PATH_MAX = common dso_local global i64 0, align 8
@PROGRAM_ALIAS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_refdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_refdir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i64 8192, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i8* @calloc(i64 %9, i32 1)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  %19 = mul i64 %18, 2
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i8* @calloc(i64 %20, i32 1)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %17
  %29 = load i8*, i8** %2, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  store i8* null, i8** %7, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %32, i64 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** @KNOWNREF, align 8
  %38 = call i8* @slurpfile(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %36, i8* %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %221

42:                                               ; preds = %31
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %3, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = sub i64 %45, %47
  %49 = sub i64 %48, 1
  %50 = call i32 @strncat(i8* %43, i8* %44, i64 %49)
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %3, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @strlen(i8* %53)
  %55 = sub i64 %52, %54
  %56 = sub i64 %55, 1
  %57 = call i32 @strncat(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  br label %214

58:                                               ; preds = %28
  %59 = call i8* @getcwd(i32* null, i64 0)
  store i8* %59, i8** %7, align 8
  br label %60

60:                                               ; preds = %69, %58
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i64 @strlen(i8* %62)
  %64 = sub i64 %63, 1
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 10
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load i8*, i8** %7, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i64 @strlen(i8* %71)
  %73 = sub i64 %72, 1
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  store i8 0, i8* %74, align 1
  br label %60

75:                                               ; preds = %60
  %76 = load i8*, i8** %5, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %76, i64 %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  %80 = load i8*, i8** %5, align 8
  %81 = load i8*, i8** @KNOWNREF, align 8
  %82 = call i8* @slurpfile(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %80, i8* %81)
  store i8* %82, i8** %8, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %221

86:                                               ; preds = %75
  %87 = load i8*, i8** %6, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load i64, i64* %3, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i64 @strlen(i8* %90)
  %92 = sub i64 %89, %91
  %93 = sub i64 %92, 1
  %94 = call i32 @strncat(i8* %87, i8* %88, i64 %93)
  %95 = load i8*, i8** %6, align 8
  %96 = load i64, i64* %3, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = call i64 @strlen(i8* %97)
  %99 = sub i64 %96, %98
  %100 = sub i64 %99, 1
  %101 = call i32 @strncat(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %100)
  %102 = load i8*, i8** %5, align 8
  %103 = load i64, i64* %4, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %102, i64 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %104)
  %106 = load i8*, i8** %5, align 8
  %107 = load i8*, i8** @KNOWNREF, align 8
  %108 = call i8* @slurpfile(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %106, i8* %107)
  store i8* %108, i8** %8, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %86
  br label %221

112:                                              ; preds = %86
  %113 = load i8*, i8** %6, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = load i64, i64* %3, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = call i64 @strlen(i8* %116)
  %118 = sub i64 %115, %117
  %119 = sub i64 %118, 1
  %120 = call i32 @strncat(i8* %113, i8* %114, i64 %119)
  %121 = load i8*, i8** %6, align 8
  %122 = load i64, i64* %3, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = call i64 @strlen(i8* %123)
  %125 = sub i64 %122, %124
  %126 = sub i64 %125, 1
  %127 = call i32 @strncat(i8* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %126)
  %128 = load i8*, i8** %5, align 8
  %129 = load i64, i64* %4, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = load i8*, i8** @PROGRAM, align 8
  %132 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %128, i64 %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %130, i8* %131)
  %133 = load i8*, i8** %5, align 8
  %134 = load i8*, i8** @KNOWNREF, align 8
  %135 = call i8* @slurpfile(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %133, i8* %134)
  store i8* %135, i8** %8, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %112
  br label %221

139:                                              ; preds = %112
  %140 = load i8*, i8** %6, align 8
  %141 = load i8*, i8** %5, align 8
  %142 = load i64, i64* %3, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = call i64 @strlen(i8* %143)
  %145 = sub i64 %142, %144
  %146 = sub i64 %145, 1
  %147 = call i32 @strncat(i8* %140, i8* %141, i64 %146)
  %148 = load i8*, i8** %6, align 8
  %149 = load i64, i64* %3, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = call i64 @strlen(i8* %150)
  %152 = sub i64 %149, %151
  %153 = sub i64 %152, 1
  %154 = call i32 @strncat(i8* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %153)
  %155 = load i8*, i8** %7, align 8
  %156 = call i64 @memcmp(i8* %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %213

158:                                              ; preds = %139
  %159 = load i8*, i8** %5, align 8
  %160 = load i64, i64* %4, align 8
  %161 = load i8*, i8** %7, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 8
  %163 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %159, i64 %160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %162)
  %164 = load i8*, i8** %5, align 8
  %165 = load i8*, i8** @KNOWNREF, align 8
  %166 = call i8* @slurpfile(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %164, i8* %165)
  store i8* %166, i8** %8, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %170

169:                                              ; preds = %158
  br label %221

170:                                              ; preds = %158
  %171 = load i8*, i8** %6, align 8
  %172 = load i8*, i8** %5, align 8
  %173 = load i64, i64* %3, align 8
  %174 = load i8*, i8** %6, align 8
  %175 = call i64 @strlen(i8* %174)
  %176 = sub i64 %173, %175
  %177 = sub i64 %176, 1
  %178 = call i32 @strncat(i8* %171, i8* %172, i64 %177)
  %179 = load i8*, i8** %6, align 8
  %180 = load i64, i64* %3, align 8
  %181 = load i8*, i8** %6, align 8
  %182 = call i64 @strlen(i8* %181)
  %183 = sub i64 %180, %182
  %184 = sub i64 %183, 1
  %185 = call i32 @strncat(i8* %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %184)
  %186 = load i8*, i8** %5, align 8
  %187 = load i64, i64* %4, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 8
  %190 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %186, i64 %187, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %189)
  %191 = load i8*, i8** %5, align 8
  %192 = load i8*, i8** @KNOWNREF, align 8
  %193 = call i8* @slurpfile(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %191, i8* %192)
  store i8* %193, i8** %8, align 8
  %194 = load i8*, i8** %8, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %197

196:                                              ; preds = %170
  br label %221

197:                                              ; preds = %170
  %198 = load i8*, i8** %6, align 8
  %199 = load i8*, i8** %5, align 8
  %200 = load i64, i64* %3, align 8
  %201 = load i8*, i8** %6, align 8
  %202 = call i64 @strlen(i8* %201)
  %203 = sub i64 %200, %202
  %204 = sub i64 %203, 1
  %205 = call i32 @strncat(i8* %198, i8* %199, i64 %204)
  %206 = load i8*, i8** %6, align 8
  %207 = load i64, i64* %3, align 8
  %208 = load i8*, i8** %6, align 8
  %209 = call i64 @strlen(i8* %208)
  %210 = sub i64 %207, %209
  %211 = sub i64 %210, 1
  %212 = call i32 @strncat(i8* %206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %211)
  br label %213

213:                                              ; preds = %197, %139
  br label %214

214:                                              ; preds = %213, %42
  %215 = load i8*, i8** @KNOWNREF, align 8
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* %215)
  %217 = load i8*, i8** %6, align 8
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %217)
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0))
  %220 = call i32 @exit(i32 1) #3
  unreachable

221:                                              ; preds = %196, %169, %138, %111, %85, %41
  %222 = load i8*, i8** %8, align 8
  %223 = call i32 @free(i8* %222)
  %224 = load i8*, i8** %7, align 8
  %225 = call i32 @free(i8* %224)
  %226 = load i8*, i8** %6, align 8
  %227 = call i32 @free(i8* %226)
  %228 = load i8*, i8** %5, align 8
  %229 = call i8* @strdup(i8* %228)
  store i8* %229, i8** %8, align 8
  %230 = load i8*, i8** %5, align 8
  %231 = call i32 @free(i8* %230)
  %232 = load i8*, i8** %8, align 8
  ret i8* %232
}

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i8* @slurpfile(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @strncat(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @getcwd(i32*, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
