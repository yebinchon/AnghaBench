; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_perror.c_clnt_spcreateerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_perror.c_clnt_spcreateerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@CLNT_PERROR_BUFLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@rpc_createerr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" - \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @clnt_spcreateerror(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = call i8* (...) @_buf()
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %67

15:                                               ; preds = %1
  %16 = load i32, i32* @CLNT_PERROR_BUFLEN, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @snprintf(i8* %18, i64 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = sub i64 %26, %25
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %24, %15
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpc_createerr, i32 0, i32 0), align 4
  %31 = call i8* @clnt_sperrno(i32 %30)
  %32 = load i64, i64* %5, align 8
  %33 = sub i64 %32, 1
  %34 = call i32 @strncat(i8* %29, i8* %31, i64 %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpc_createerr, i32 0, i32 0), align 4
  switch i32 %35, label %59 [
    i32 138, label %36
    i32 132, label %47
    i32 140, label %58
    i32 143, label %58
    i32 142, label %58
    i32 133, label %58
    i32 129, label %58
    i32 136, label %58
    i32 139, label %58
    i32 130, label %58
    i32 144, label %58
    i32 137, label %58
    i32 134, label %58
    i32 135, label %58
    i32 145, label %58
    i32 128, label %58
    i32 131, label %58
    i32 141, label %58
  ]

36:                                               ; preds = %28
  %37 = load i8*, i8** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = sub i64 %38, 1
  %40 = call i32 @strncat(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpc_createerr, i32 0, i32 1, i32 0), align 4
  %43 = call i8* @clnt_sperrno(i32 %42)
  %44 = load i64, i64* %5, align 8
  %45 = sub i64 %44, 4
  %46 = call i32 @strncat(i8* %41, i8* %43, i64 %45)
  br label %60

47:                                               ; preds = %28
  %48 = load i8*, i8** %4, align 8
  %49 = load i64, i64* %5, align 8
  %50 = sub i64 %49, 1
  %51 = call i32 @strncat(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpc_createerr, i32 0, i32 1, i32 1), align 4
  %54 = call i8* @strerror(i32 %53)
  %55 = load i64, i64* %5, align 8
  %56 = sub i64 %55, 4
  %57 = call i32 @strncat(i8* %52, i8* %54, i64 %56)
  br label %60

58:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  br label %59

59:                                               ; preds = %28, %58
  br label %60

60:                                               ; preds = %59, %47, %36
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* @CLNT_PERROR_BUFLEN, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %4, align 8
  store i8* %66, i8** %2, align 8
  br label %67

67:                                               ; preds = %60, %14
  %68 = load i8*, i8** %2, align 8
  ret i8* %68
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @_buf(...) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @strncat(i8*, i8*, i64) #1

declare dso_local i8* @clnt_sperrno(i32) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
