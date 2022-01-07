; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_ssl_print_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_ssl_print_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@SSL_ERROR_ZERO_RETURN = common dso_local global i64 0, align 8
@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"warning, in SSL_write, peer closed connection\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"could not SSL_write\00", align 1
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"could not send: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_print_text(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %12
  %18 = call i32 (...) @ERR_clear_error()
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = trunc i64 %24 to i32
  %26 = call i32 @SSL_write(i64 %21, i8* %22, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %17
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @SSL_get_error(i64 %31, i32 %32)
  %34 = load i64, i64* @SSL_ERROR_ZERO_RETURN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @VERB_QUERY, align 4
  %38 = call i32 @verbose(i32 %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %82

39:                                               ; preds = %28
  %40 = call i32 @log_crypto_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %82

41:                                               ; preds = %17
  br label %81

42:                                               ; preds = %12
  store i64 0, i64* %7, align 8
  br label %43

43:                                               ; preds = %75, %70, %42
  %44 = load i64, i64* %7, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = icmp ult i64 %44, %46
  br i1 %47, label %48, label %80

48:                                               ; preds = %43
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8*, i8** %5, align 8
  %56 = call i64 @strlen(i8* %55)
  %57 = load i64, i64* %7, align 8
  %58 = sub i64 %56, %57
  %59 = call i32 @send(i32 %51, i8* %54, i64 %58, i32 0)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %75

62:                                               ; preds = %48
  %63 = load i64, i64* @errno, align 8
  %64 = load i64, i64* @EAGAIN, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @EINTR, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %62
  br label %43

71:                                               ; preds = %66
  %72 = load i64, i64* @errno, align 8
  %73 = call i32 @strerror(i64 %72)
  %74 = call i32 @log_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  store i32 0, i32* %3, align 4
  br label %82

75:                                               ; preds = %48
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %7, align 8
  br label %43

80:                                               ; preds = %43
  br label %81

81:                                               ; preds = %80, %41
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %71, %39, %36, %11
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @SSL_write(i64, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @SSL_get_error(i64, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @log_crypto_err(i8*) #1

declare dso_local i32 @send(i32, i8*, i64, i32) #1

declare dso_local i32 @log_err(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
