; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_getenv.c___build_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_getenv.c___build_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i32, i32*, i32* }

@environ = common dso_local global i8** null, align 8
@envVarsTotal = common dso_local global i32 0, align 4
@envVarsSize = common dso_local global i32 0, align 4
@envVars = common dso_local global %struct.TYPE_3__* null, align 8
@CorruptEnvValueMsg = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CorruptEnvFindMsg = common dso_local global i32 0, align 4
@origEnviron = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__build_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__build_env() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = load i8**, i8*** @environ, align 8
  %8 = icmp eq i8** %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  %10 = load i8**, i8*** @environ, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %0
  store i32 0, i32* %1, align 4
  br label %192

15:                                               ; preds = %9
  %16 = load i8**, i8*** @environ, align 8
  store i8** %16, i8*** %2, align 8
  store i32 0, i32* @envVarsTotal, align 4
  br label %17

17:                                               ; preds = %24, %15
  %18 = load i8**, i8*** %2, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* @envVarsTotal, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @envVarsTotal, align 4
  br label %24

24:                                               ; preds = %21
  %25 = load i8**, i8*** %2, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %26, i8*** %2, align 8
  br label %17

27:                                               ; preds = %17
  %28 = load i32, i32* @envVarsTotal, align 4
  %29 = mul nsw i32 %28, 2
  store i32 %29, i32* @envVarsSize, align 4
  %30 = load i32, i32* @envVarsSize, align 4
  %31 = call %struct.TYPE_3__* @calloc(i32 %30, i32 48)
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** @envVars, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @envVars, align 8
  %33 = icmp eq %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %188

35:                                               ; preds = %27
  %36 = load i32, i32* @envVarsTotal, align 4
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %178, %35
  %39 = load i32, i32* %4, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %181

41:                                               ; preds = %38
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @envVars, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load i8**, i8*** @environ, align 8
  %48 = load i32, i32* @envVarsTotal, align 4
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %47, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32* @strdup(i8* %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @envVars, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  store i32* %55, i32** %60, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @envVars, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %41
  br label %188

69:                                               ; preds = %41
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @envVars, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = call i32* @strchr(i32* %75, i8 signext 61)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @envVars, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 5
  store i32* %76, i32** %81, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @envVars, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %109

89:                                               ; preds = %69
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @envVars, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %94, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** @envVars, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = call i64 @strlen(i32* %102)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** @envVars, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store i64 %103, i64* %108, align 8
  br label %126

109:                                              ; preds = %69
  %110 = load i32, i32* @CorruptEnvValueMsg, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** @envVars, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** @envVars, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = call i64 @strlen(i32* %122)
  %124 = call i32 @__env_warnx(i32 %110, i32* %116, i64 %123)
  %125 = load i32, i32* @EFAULT, align 4
  store i32 %125, i32* @errno, align 4
  br label %188

126:                                              ; preds = %89
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** @envVars, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 5
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** @envVars, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = ptrtoint i32* %132 to i64
  %140 = ptrtoint i32* %138 to i64
  %141 = sub i64 %139, %140
  %142 = sdiv exact i64 %141, 4
  %143 = sub nsw i64 %142, 1
  store i64 %143, i64* %6, align 8
  %144 = load i64, i64* %6, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** @envVars, align 8
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  store i64 %144, i64* %149, align 8
  %150 = load i32, i32* @envVarsTotal, align 4
  %151 = sub nsw i32 %150, 1
  store i32 %151, i32* %3, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** @envVars, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* %6, align 8
  %159 = call i32* @__findenv(i32* %157, i64 %158, i32* %3, i32 0)
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %172

161:                                              ; preds = %126
  %162 = load i32, i32* @CorruptEnvFindMsg, align 4
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** @envVars, align 8
  %164 = load i32, i32* %4, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 4
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* %6, align 8
  %170 = call i32 @__env_warnx(i32 %162, i32* %168, i64 %169)
  %171 = load i32, i32* @EFAULT, align 4
  store i32 %171, i32* @errno, align 4
  br label %188

172:                                              ; preds = %126
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** @envVars, align 8
  %174 = load i32, i32* %3, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 3
  store i32 1, i32* %177, align 8
  br label %178

178:                                              ; preds = %172
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %4, align 4
  br label %38

181:                                              ; preds = %38
  %182 = load i8**, i8*** @environ, align 8
  store i8** %182, i8*** @origEnviron, align 8
  store i8** null, i8*** @environ, align 8
  %183 = load i32, i32* @envVarsTotal, align 4
  %184 = call i64 @__rebuild_environ(i32 %183)
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  store i32 0, i32* %1, align 4
  br label %192

187:                                              ; preds = %181
  br label %188

188:                                              ; preds = %187, %161, %109, %68, %34
  %189 = load i32, i32* @errno, align 4
  store i32 %189, i32* %5, align 4
  %190 = call i32 @__clean_env(i32 1)
  %191 = load i32, i32* %5, align 4
  store i32 %191, i32* @errno, align 4
  store i32 -1, i32* %1, align 4
  br label %192

192:                                              ; preds = %188, %186, %14
  %193 = load i32, i32* %1, align 4
  ret i32 %193
}

declare dso_local %struct.TYPE_3__* @calloc(i32, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32* @strchr(i32*, i8 signext) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @__env_warnx(i32, i32*, i64) #1

declare dso_local i32* @__findenv(i32*, i64, i32*, i32) #1

declare dso_local i64 @__rebuild_environ(i32) #1

declare dso_local i32 @__clean_env(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
