; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_ssl_read_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_ssl_read_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@SSL_ERROR_ZERO_RETURN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"could not SSL_read\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"could not recv: %s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"control line too long (%d): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_read_line(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %105

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %93, %14
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %96

19:                                               ; preds = %15
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %19
  %25 = call i32 (...) @ERR_clear_error()
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = call i32 @SSL_read(i64 %28, i8* %31, i32 1)
  store i32 %32, i32* %8, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %24
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @SSL_get_error(i64 %37, i32 %38)
  %40 = load i64, i64* @SSL_ERROR_ZERO_RETURN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 0, i8* %45, align 1
  store i32 1, i32* %4, align 4
  br label %105

46:                                               ; preds = %34
  %47 = call i32 @log_crypto_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %105

48:                                               ; preds = %24
  br label %82

49:                                               ; preds = %19
  br label %50

50:                                               ; preds = %49, %75
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = call i64 @recv(i32 %53, i8* %56, i32 1, i32 0)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp sle i64 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %50
  %61 = load i64, i64* %10, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 0, i8* %66, align 1
  store i32 1, i32* %4, align 4
  br label %105

67:                                               ; preds = %60
  %68 = load i64, i64* @errno, align 8
  %69 = load i64, i64* @EINTR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i64, i64* @errno, align 8
  %73 = load i64, i64* @EAGAIN, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %67
  br label %50

76:                                               ; preds = %71
  %77 = load i64, i64* @errno, align 8
  %78 = call i32 @strerror(i64 %77)
  %79 = call i32 (i8*, i32, ...) @log_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  store i32 0, i32* %4, align 4
  br label %105

80:                                               ; preds = %50
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81, %48
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 10
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load i8*, i8** %6, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 0, i8* %92, align 1
  store i32 1, i32* %4, align 4
  br label %105

93:                                               ; preds = %82
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %9, align 8
  br label %15

96:                                               ; preds = %15
  %97 = load i8*, i8** %6, align 8
  %98 = load i64, i64* %7, align 8
  %99 = sub i64 %98, 1
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8 0, i8* %100, align 1
  %101 = load i64, i64* %7, align 8
  %102 = trunc i64 %101 to i32
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 (i8*, i32, ...) @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %102, i8* %103)
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %96, %89, %76, %63, %46, %42, %13
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @SSL_read(i64, i8*, i32) #1

declare dso_local i64 @SSL_get_error(i64, i32) #1

declare dso_local i32 @log_crypto_err(i8*) #1

declare dso_local i64 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @log_err(i8*, i32, ...) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
