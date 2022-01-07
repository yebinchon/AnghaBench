; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_perror.c_clnt_sperror.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_perror.c_clnt_sperror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_err = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@CLNT_PERROR_BUFLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"; errno = %s\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"; low version = %u, high version = %u\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"; why = \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"(unknown authentication error - %d)\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"; s1 = %u, s2 = %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @clnt_sperror(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rpc_err, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = call i8* (...) @_buf()
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %187

24:                                               ; preds = %2
  %25 = load i32, i32* @CLNT_PERROR_BUFLEN, align 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %10, align 8
  %27 = load i8*, i8** %8, align 8
  store i8* %27, i8** %9, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @CLNT_GETERR(i32* %28, %struct.rpc_err* %6)
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %30, i64 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i64 %33, i64* %11, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load i64, i64* %11, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** %8, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %35, %24
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @clnt_sperrno(i32 %45)
  %47 = load i64, i64* %10, align 8
  %48 = sub i64 %47, 1
  %49 = call i32 @strncpy(i8* %43, i32 %46, i64 %48)
  %50 = load i8*, i8** %8, align 8
  %51 = call i64 @strlen(i8* %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 %52
  store i8* %54, i8** %8, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %10, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %10, align 8
  %58 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %160 [
    i32 133, label %60
    i32 142, label %60
    i32 143, label %60
    i32 131, label %60
    i32 135, label %60
    i32 137, label %60
    i32 144, label %60
    i32 132, label %60
    i32 130, label %60
    i32 129, label %60
    i32 138, label %60
    i32 136, label %60
    i32 139, label %60
    i32 140, label %61
    i32 141, label %61
    i32 128, label %78
    i32 145, label %98
    i32 134, label %140
  ]

60:                                               ; preds = %42, %42, %42, %42, %42, %42, %42, %42, %42, %42, %42, %42, %42
  br label %180

61:                                               ; preds = %42, %42
  %62 = load i8*, i8** %8, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %6, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @strerror(i32 %65)
  %67 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %62, i64 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp ugt i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load i64, i64* %11, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %73, i8** %8, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %10, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %10, align 8
  br label %77

77:                                               ; preds = %70, %61
  br label %180

78:                                               ; preds = %42
  %79 = load i8*, i8** %8, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %6, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %6, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %79, i64 %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %86)
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %11, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %78
  %91 = load i64, i64* %11, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 %91
  store i8* %93, i8** %8, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %10, align 8
  %96 = sub i64 %95, %94
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %90, %78
  br label %180

98:                                               ; preds = %42
  %99 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %6, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = call i8* @auth_errmsg(i64 %100)
  store i8* %101, i8** %7, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %102, i64 %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i64 %104, i64* %11, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp ugt i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %98
  %108 = load i64, i64* %11, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 %108
  store i8* %110, i8** %8, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %10, align 8
  %113 = sub i64 %112, %111
  store i64 %113, i64* %10, align 8
  br label %114

114:                                              ; preds = %107, %98
  %115 = load i8*, i8** %7, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i8*, i8** %8, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %118, i64 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %120)
  store i64 %121, i64* %11, align 8
  br label %129

122:                                              ; preds = %114
  %123 = load i8*, i8** %8, align 8
  %124 = load i64, i64* %10, align 8
  %125 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %6, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %123, i64 %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  store i64 %128, i64* %11, align 8
  br label %129

129:                                              ; preds = %122, %117
  %130 = load i64, i64* %11, align 8
  %131 = icmp ugt i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load i64, i64* %11, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 %133
  store i8* %135, i8** %8, align 8
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* %10, align 8
  %138 = sub i64 %137, %136
  store i64 %138, i64* %10, align 8
  br label %139

139:                                              ; preds = %132, %129
  br label %180

140:                                              ; preds = %42
  %141 = load i8*, i8** %8, align 8
  %142 = load i64, i64* %10, align 8
  %143 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %6, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %6, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %141, i64 %142, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %145, i32 %148)
  store i64 %149, i64* %11, align 8
  %150 = load i64, i64* %11, align 8
  %151 = icmp ugt i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %140
  %153 = load i64, i64* %11, align 8
  %154 = load i8*, i8** %8, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 %153
  store i8* %155, i8** %8, align 8
  %156 = load i64, i64* %11, align 8
  %157 = load i64, i64* %10, align 8
  %158 = sub i64 %157, %156
  store i64 %158, i64* %10, align 8
  br label %159

159:                                              ; preds = %152, %140
  br label %180

160:                                              ; preds = %42
  %161 = load i8*, i8** %8, align 8
  %162 = load i64, i64* %10, align 8
  %163 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %6, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %6, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %161, i64 %162, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %165, i32 %168)
  store i64 %169, i64* %11, align 8
  %170 = load i64, i64* %11, align 8
  %171 = icmp ugt i64 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %160
  %173 = load i64, i64* %11, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 %173
  store i8* %175, i8** %8, align 8
  %176 = load i64, i64* %11, align 8
  %177 = load i64, i64* %10, align 8
  %178 = sub i64 %177, %176
  store i64 %178, i64* %10, align 8
  br label %179

179:                                              ; preds = %172, %160
  br label %180

180:                                              ; preds = %179, %159, %139, %97, %77, %60
  %181 = load i8*, i8** %9, align 8
  %182 = load i32, i32* @CLNT_PERROR_BUFLEN, align 4
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %181, i64 %184
  store i8 0, i8* %185, align 1
  %186 = load i8*, i8** %9, align 8
  store i8* %186, i8** %3, align 8
  br label %187

187:                                              ; preds = %180, %23
  %188 = load i8*, i8** %3, align 8
  ret i8* %188
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @_buf(...) #1

declare dso_local i32 @CLNT_GETERR(i32*, %struct.rpc_err*) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @strncpy(i8*, i32, i64) #1

declare dso_local i32 @clnt_sperrno(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i8* @auth_errmsg(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
