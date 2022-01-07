; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/afsutil/extr_pagsh.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/afsutil/extr_pagsh.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@getargs = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s_XXXXXX\00", align 1
@TKT_ROOT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"mkstemp failed\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"KRBTKFILE\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Out of memory allocating %lu bytes\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"no such user: %d\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Out of memory copying path\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Out of memory copying arguments\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"PAGPID\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@c_flag = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"Out of memory copying sh arguments\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"execvp\00", align 1
@typename_arg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.passwd*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %12, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @setprogname(i8* %18)
  %20 = load i32, i32* @getargs, align 4
  %21 = load i32, i32* @num_args, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i64 @getarg(i32 %20, i32 %21, i32 %22, i8** %23, i32* %12)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = call i32 @usage(i32 1)
  br label %28

28:                                               ; preds = %26, %2
  %29 = load i64, i64* @help_flag, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @usage(i32 0)
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i64, i64* @version_flag, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = call i32 @print_version(i32* null)
  %38 = call i32 @exit(i32 0) #3
  unreachable

39:                                               ; preds = %33
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8*, i8** %44, i64 %45
  store i8** %46, i8*** %5, align 8
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %48 = load i8*, i8** @TKT_ROOT, align 8
  %49 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %47, i32 1024, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %51 = call i32 @mkstemp(i8* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %39
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @close(i32 %57)
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %60 = call i32 @unlink(i8* %59)
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %62 = call i32 @esetenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %61, i32 1)
  store i32 0, i32* %11, align 4
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 10
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 8
  %67 = trunc i64 %66 to i32
  %68 = call i8** @malloc(i32 %67)
  store i8** %68, i8*** %10, align 8
  %69 = load i8**, i8*** %10, align 8
  %70 = icmp eq i8** %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %56
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 10
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 8
  %76 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %71, %56
  %78 = load i8**, i8*** %5, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %100

81:                                               ; preds = %77
  %82 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i8* %82, i8** %9, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = call i64 (...) @geteuid()
  %87 = call %struct.passwd* @k_getpwuid(i64 %86)
  store %struct.passwd* %87, %struct.passwd** %13, align 8
  %88 = load %struct.passwd*, %struct.passwd** %13, align 8
  %89 = icmp eq %struct.passwd* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = call i64 (...) @geteuid()
  %92 = trunc i64 %91 to i32
  %93 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %85
  %95 = load %struct.passwd*, %struct.passwd** %13, align 8
  %96 = getelementptr inbounds %struct.passwd, %struct.passwd* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @strdup(i8* %97)
  store i8* %98, i8** %9, align 8
  br label %99

99:                                               ; preds = %94, %81
  br label %105

100:                                              ; preds = %77
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i32 1
  store i8** %102, i8*** %5, align 8
  %103 = load i8*, i8** %101, align 8
  %104 = call i8* @strdup(i8* %103)
  store i8* %104, i8** %9, align 8
  br label %105

105:                                              ; preds = %100, %99
  %106 = load i8*, i8** %9, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i8*, i8** %9, align 8
  %112 = call i8* @strrchr(i8* %111, i8 signext 47)
  store i8* %112, i8** %8, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = call i8* @strdup(i8* %117)
  %119 = load i8**, i8*** %10, align 8
  %120 = load i32, i32* %11, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  store i8* %118, i8** %122, align 8
  br label %130

123:                                              ; preds = %110
  %124 = load i8*, i8** %9, align 8
  %125 = call i8* @strdup(i8* %124)
  %126 = load i8**, i8*** %10, align 8
  %127 = load i32, i32* %11, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  store i8* %125, i8** %129, align 8
  br label %130

130:                                              ; preds = %123, %115
  %131 = load i8**, i8*** %10, align 8
  %132 = load i32, i32* %11, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %11, align 4
  %134 = zext i32 %132 to i64
  %135 = getelementptr inbounds i8*, i8** %131, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = icmp eq i8* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %130
  br label %141

141:                                              ; preds = %145, %140
  %142 = load i8**, i8*** %5, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load i8**, i8*** %5, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i32 1
  store i8** %147, i8*** %5, align 8
  %148 = load i8*, i8** %146, align 8
  %149 = load i8**, i8*** %10, align 8
  %150 = load i32, i32* %11, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %11, align 4
  %152 = zext i32 %150 to i64
  %153 = getelementptr inbounds i8*, i8** %149, i64 %152
  store i8* %148, i8** %153, align 8
  br label %141

154:                                              ; preds = %141
  %155 = load i8**, i8*** %10, align 8
  %156 = load i32, i32* %11, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %11, align 4
  %158 = zext i32 %156 to i64
  %159 = getelementptr inbounds i8*, i8** %155, i64 %158
  store i8* null, i8** %159, align 8
  %160 = call i64 (...) @k_hasafs()
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %154
  %163 = call i32 (...) @k_setpag()
  br label %164

164:                                              ; preds = %162, %154
  %165 = call i32 @unsetenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %166 = load i8*, i8** %9, align 8
  %167 = load i8**, i8*** %10, align 8
  %168 = call i32 @execvp(i8* %166, i8** %167)
  %169 = load i64, i64* @errno, align 8
  %170 = load i64, i64* @ENOENT, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %175, label %172

172:                                              ; preds = %164
  %173 = load i64, i64* @c_flag, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %215

175:                                              ; preds = %172, %164
  %176 = load i32, i32* %11, align 4
  %177 = add i32 %176, 2
  %178 = zext i32 %177 to i64
  %179 = mul i64 %178, 8
  %180 = trunc i64 %179 to i32
  %181 = call i8** @malloc(i32 %180)
  store i8** %181, i8*** %14, align 8
  %182 = load i8**, i8*** %14, align 8
  %183 = icmp eq i8** %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %175
  %185 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %175
  store i32 1, i32* %15, align 4
  br label %187

187:                                              ; preds = %202, %186
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* %11, align 4
  %190 = icmp ult i32 %188, %189
  br i1 %190, label %191, label %205

191:                                              ; preds = %187
  %192 = load i8**, i8*** %10, align 8
  %193 = load i32, i32* %15, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = load i8**, i8*** %14, align 8
  %198 = load i32, i32* %15, align 4
  %199 = add i32 %198, 2
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %197, i64 %200
  store i8* %196, i8** %201, align 8
  br label %202

202:                                              ; preds = %191
  %203 = load i32, i32* %15, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %15, align 4
  br label %187

205:                                              ; preds = %187
  %206 = load i8**, i8*** %14, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %207, align 8
  %208 = load i8**, i8*** %14, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %209, align 8
  %210 = load i8*, i8** %9, align 8
  %211 = load i8**, i8*** %14, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 2
  store i8* %210, i8** %212, align 8
  %213 = load i8**, i8*** %14, align 8
  %214 = call i32 @execv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %213)
  br label %215

215:                                              ; preds = %205, %172
  %216 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i64 @getarg(i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @esetenv(i8*, i8*, i32) #1

declare dso_local i8** @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local %struct.passwd* @k_getpwuid(i64) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @k_hasafs(...) #1

declare dso_local i32 @k_setpag(...) #1

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @execv(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
