; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/gen/extr_fmtmsg_test.c_run_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/gen/extr_fmtmsg_test.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@MM_OK = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"waitpid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i8*, i32, i8*, i8*, i8*)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @run_test(i64 %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %23 = call i32 @pipe(i32* %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = call i32 @err(i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %6
  %28 = call i32 (...) @fork()
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @err(i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* %15, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %33
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @close(i32 %38)
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @STDERR_FILENO, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @STDERR_FILENO, align 4
  %48 = call i32 @dup2(i32 %46, i32 %47)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 @_exit(i32 2) #3
  unreachable

52:                                               ; preds = %44, %36
  %53 = load i64, i64* %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call i64 @fmtmsg(i64 %53, i8* %54, i32 %55, i8* %56, i8* %57, i8* %58)
  %60 = load i64, i64* @MM_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = call i32 @_exit(i32 1) #3
  unreachable

64:                                               ; preds = %52
  %65 = call i32 @_exit(i32 0) #3
  unreachable

66:                                               ; preds = %33
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @close(i32 %68)
  store i64 1024, i64* %19, align 8
  %70 = load i64, i64* %19, align 8
  %71 = call i8* @malloc(i64 %70)
  store i8* %71, i8** %17, align 8
  %72 = load i8*, i8** %17, align 8
  store i8* %72, i8** %18, align 8
  br label %73

73:                                               ; preds = %121, %95, %66
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %18, align 8
  %77 = load i8*, i8** %17, align 8
  %78 = load i64, i64* %19, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i8*, i8** %18, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sub nsw i64 %83, 1
  %85 = trunc i64 %84 to i32
  %86 = call i32 @read(i32 %75, i8* %76, i32 %85)
  store i32 %86, i32* %20, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %122

88:                                               ; preds = %73
  %89 = load i32, i32* %20, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load i64, i64* @errno, align 8
  %93 = load i64, i64* @EINTR, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %73

96:                                               ; preds = %91
  %97 = call i32 @err(i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %98, %88
  %100 = load i32, i32* %20, align 4
  %101 = load i8*, i8** %18, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %18, align 8
  %104 = load i8*, i8** %17, align 8
  %105 = load i64, i64* %19, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  %107 = load i8*, i8** %18, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 -1
  %109 = icmp eq i8* %106, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %99
  %111 = load i64, i64* %19, align 8
  %112 = mul i64 %111, 2
  store i64 %112, i64* %19, align 8
  %113 = load i8*, i8** %17, align 8
  %114 = load i64, i64* %19, align 8
  %115 = call i8* @realloc(i8* %113, i64 %114)
  store i8* %115, i8** %17, align 8
  %116 = load i8*, i8** %17, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = call i32 @err(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %110
  br label %121

121:                                              ; preds = %120, %99
  br label %73

122:                                              ; preds = %73
  %123 = load i8*, i8** %17, align 8
  %124 = load i8*, i8** %18, align 8
  %125 = load i8*, i8** %17, align 8
  %126 = ptrtoint i8* %124 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = trunc i64 %128 to i32
  %130 = call i32* @memchr(i8* %123, i8 signext 0, i32 %129)
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %122
  %133 = load i8*, i8** %17, align 8
  %134 = call i32 @free(i8* %133)
  store i8* null, i8** %7, align 8
  br label %164

135:                                              ; preds = %122
  %136 = load i8*, i8** %18, align 8
  store i8 0, i8* %136, align 1
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @close(i32 %138)
  br label %140

140:                                              ; preds = %150, %135
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @waitpid(i32 %141, i32* %21, i32 0)
  store i32 %142, i32* %16, align 4
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i64, i64* @errno, align 8
  %146 = load i64, i64* @EINTR, align 8
  %147 = icmp eq i64 %145, %146
  br label %148

148:                                              ; preds = %144, %140
  %149 = phi i1 [ false, %140 ], [ %147, %144 ]
  br i1 %149, label %150, label %151

150:                                              ; preds = %148
  br label %140

151:                                              ; preds = %148
  %152 = load i32, i32* %16, align 4
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = call i32 @err(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %151
  %157 = load i32, i32* %21, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i8*, i8** %17, align 8
  %161 = call i32 @free(i8* %160)
  store i8* null, i8** %7, align 8
  br label %164

162:                                              ; preds = %156
  %163 = load i8*, i8** %17, align 8
  store i8* %163, i8** %7, align 8
  br label %164

164:                                              ; preds = %162, %159, %132
  %165 = load i8*, i8** %7, align 8
  ret i8* %165
}

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i64 @fmtmsg(i64, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
