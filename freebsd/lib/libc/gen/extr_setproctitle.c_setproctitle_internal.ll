; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_setproctitle.c_setproctitle_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_setproctitle.c_setproctitle_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_strings = type { i8**, i32 }

@setproctitle_internal.ps_strings = internal global %struct.ps_strings* null, align 8
@setproctitle_internal.buf = internal global i8* null, align 8
@setproctitle_internal.obuf = internal global i8* null, align 8
@setproctitle_internal.oargv = internal global i8** null, align 8
@setproctitle_internal.kbuf = internal global i8* null, align 8
@setproctitle_internal.oargc = internal global i32 -1, align 4
@setproctitle_internal.nargv = internal global [2 x i8*] zeroinitializer, align 16
@SPT_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"kern.ps_strings\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @setproctitle_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @setproctitle_internal(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** @setproctitle_internal.buf, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32, i32* @SPT_BUFSIZE, align 4
  %15 = call i8* @malloc(i32 %14)
  store i8* %15, i8** @setproctitle_internal.buf, align 8
  %16 = load i8*, i8** @setproctitle_internal.buf, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i8* null, i8** %3, align 8
  br label %172

19:                                               ; preds = %13
  %20 = load i8*, i8** @setproctitle_internal.buf, align 8
  store i8* %20, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @setproctitle_internal.nargv, i64 0, i64 0), align 16
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i8*, i8** @setproctitle_internal.obuf, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, i32* @SPT_BUFSIZE, align 4
  %26 = call i8* @malloc(i32 %25)
  store i8* %26, i8** @setproctitle_internal.obuf, align 8
  %27 = load i8*, i8** @setproctitle_internal.obuf, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i8* null, i8** %3, align 8
  br label %172

30:                                               ; preds = %24
  %31 = load i8*, i8** @setproctitle_internal.obuf, align 8
  store i8 0, i8* %31, align 1
  br label %32

32:                                               ; preds = %30, %21
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %69

35:                                               ; preds = %32
  %36 = load i8*, i8** @setproctitle_internal.buf, align 8
  %37 = load i32, i32* @SPT_BUFSIZE, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 45
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  store i64 0, i64* %9, align 8
  br label %56

49:                                               ; preds = %35
  %50 = load i8*, i8** @setproctitle_internal.buf, align 8
  %51 = load i32, i32* @SPT_BUFSIZE, align 4
  %52 = call i8* (...) @_getprogname()
  %53 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %50, i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load i8*, i8** @setproctitle_internal.buf, align 8
  %55 = call i64 @strlen(i8* %54)
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %49, %46
  %57 = load i8*, i8** @setproctitle_internal.buf, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i32, i32* @SPT_BUFSIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %9, align 8
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @vsnprintf(i8* %59, i32 %64, i8* %65, i32 %66)
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @setproctitle_internal.nargv, i64 0, i64 0), i8*** %6, align 8
  store i32 1, i32* %7, align 4
  %68 = load i8*, i8** @setproctitle_internal.buf, align 8
  store i8* %68, i8** @setproctitle_internal.kbuf, align 8
  br label %80

69:                                               ; preds = %32
  %70 = load i8*, i8** @setproctitle_internal.obuf, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i8**, i8*** @setproctitle_internal.oargv, align 8
  store i8** %75, i8*** %6, align 8
  %76 = load i32, i32* @setproctitle_internal.oargc, align 4
  store i32 %76, i32* %7, align 4
  %77 = load i8*, i8** @setproctitle_internal.obuf, align 8
  store i8* %77, i8** @setproctitle_internal.kbuf, align 8
  br label %79

78:                                               ; preds = %69
  store i8* null, i8** %3, align 8
  br label %172

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %56
  %81 = load %struct.ps_strings*, %struct.ps_strings** @setproctitle_internal.ps_strings, align 8
  %82 = icmp eq %struct.ps_strings* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  store i64 8, i64* %9, align 8
  %84 = call i32 @sysctlbyname(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64* %10, i64* %9, i32* null, i32 0)
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i8* null, i8** %3, align 8
  br label %172

87:                                               ; preds = %83
  %88 = load i64, i64* %10, align 8
  %89 = inttoptr i64 %88 to %struct.ps_strings*
  store %struct.ps_strings* %89, %struct.ps_strings** @setproctitle_internal.ps_strings, align 8
  br label %90

90:                                               ; preds = %87, %80
  %91 = load %struct.ps_strings*, %struct.ps_strings** @setproctitle_internal.ps_strings, align 8
  %92 = getelementptr inbounds %struct.ps_strings, %struct.ps_strings* %91, i32 0, i32 0
  %93 = load i8**, i8*** %92, align 8
  %94 = icmp eq i8** %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i8* null, i8** %3, align 8
  br label %172

96:                                               ; preds = %90
  %97 = load i32, i32* @setproctitle_internal.oargc, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %162

99:                                               ; preds = %96
  %100 = load %struct.ps_strings*, %struct.ps_strings** @setproctitle_internal.ps_strings, align 8
  %101 = getelementptr inbounds %struct.ps_strings, %struct.ps_strings* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* @setproctitle_internal.oargc, align 4
  %103 = load %struct.ps_strings*, %struct.ps_strings** @setproctitle_internal.ps_strings, align 8
  %104 = getelementptr inbounds %struct.ps_strings, %struct.ps_strings* %103, i32 0, i32 0
  %105 = load i8**, i8*** %104, align 8
  store i8** %105, i8*** @setproctitle_internal.oargv, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %158, %99
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @setproctitle_internal.oargc, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %161

110:                                              ; preds = %106
  %111 = load i8**, i8*** @setproctitle_internal.oargv, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* @setproctitle_internal.oargc, align 4
  br label %161

119:                                              ; preds = %110
  %120 = load i8*, i8** @setproctitle_internal.obuf, align 8
  %121 = load i64, i64* %9, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = load i32, i32* @SPT_BUFSIZE, align 4
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* %9, align 8
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  %128 = load i64, i64* %9, align 8
  %129 = icmp ne i64 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %132 = load i8**, i8*** @setproctitle_internal.oargv, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %122, i32 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %131, i8* %136)
  %138 = load i64, i64* %9, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %119
  %141 = load i64, i64* %9, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %9, align 8
  br label %143

143:                                              ; preds = %140, %119
  %144 = load i8**, i8*** @setproctitle_internal.oargv, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 @strlen(i8* %148)
  %150 = load i64, i64* %9, align 8
  %151 = add i64 %150, %149
  store i64 %151, i64* %9, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load i32, i32* @SPT_BUFSIZE, align 4
  %154 = sext i32 %153 to i64
  %155 = icmp uge i64 %152, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %143
  br label %161

157:                                              ; preds = %143
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %8, align 4
  br label %106

161:                                              ; preds = %156, %117, %106
  br label %162

162:                                              ; preds = %161, %96
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.ps_strings*, %struct.ps_strings** @setproctitle_internal.ps_strings, align 8
  %165 = getelementptr inbounds %struct.ps_strings, %struct.ps_strings* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 8
  %166 = load i8**, i8*** %6, align 8
  %167 = load %struct.ps_strings*, %struct.ps_strings** @setproctitle_internal.ps_strings, align 8
  %168 = getelementptr inbounds %struct.ps_strings, %struct.ps_strings* %167, i32 0, i32 0
  store i8** %166, i8*** %168, align 8
  %169 = load i8**, i8*** %6, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 0
  %171 = load i8*, i8** %170, align 8
  store i8* %171, i8** %3, align 8
  br label %172

172:                                              ; preds = %162, %95, %86, %78, %29, %18
  %173 = load i8*, i8** %3, align 8
  ret i8* %173
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i8* @_getprogname(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @sysctlbyname(i8*, i64*, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
