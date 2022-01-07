; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_make_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_make_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32 }

@APR_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown hostname '%s'\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@APR_PROTO_TCP = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Can't connect to host '%s'\00", align 1
@APR_SO_KEEPALIVE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@APR_INET6 = common dso_local global i32 0, align 4
@APR_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i16, i32**, i32*)* @make_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_connection(i8* %0, i16 zeroext %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i16 %1, i16* %7, align 2
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* @APR_INET, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %12, align 4
  %16 = load i16, i16* %7, align 2
  %17 = load i32*, i32** %9, align 8
  %18 = call i64 @apr_sockaddr_info_get(%struct.TYPE_4__** %10, i8* %14, i32 %15, i16 zeroext %16, i32 0, i32* %17)
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %6, align 8
  %25 = call i32* @svn_error_createf(i64 %22, i32* null, i32 %23, i8* %24)
  store i32* %25, i32** %5, align 8
  br label %83

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %63, %26
  %28 = load i32**, i32*** %8, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SOCK_STREAM, align 4
  %33 = load i32, i32* @APR_PROTO_TCP, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = call i64 (i32**, i32, i32, i32, ...) @apr_socket_create(i32** %28, i32 %31, i32 %32, i32 %33, i32* %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @APR_SUCCESS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %27
  %40 = load i32**, i32*** %8, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = call i64 @apr_socket_connect(i32* %41, %struct.TYPE_4__* %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @APR_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32**, i32*** %8, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @apr_socket_close(i32* %49)
  br label %51

51:                                               ; preds = %47, %39
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %10, align 8
  br label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @APR_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %62 = icmp ne %struct.TYPE_4__* %61, null
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i1 [ false, %56 ], [ %62, %60 ]
  br i1 %64, label %27, label %65

65:                                               ; preds = %63
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i8*, i8** %6, align 8
  %72 = call i32* @svn_error_wrap_apr(i64 %69, i32 %70, i8* %71)
  store i32* %72, i32** %5, align 8
  br label %83

73:                                               ; preds = %65
  %74 = load i32**, i32*** %8, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @APR_SO_KEEPALIVE, align 4
  %77 = call i64 @apr_socket_opt_set(i32* %75, i32 %76, i32 1)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %73
  %82 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %82, i32** %5, align 8
  br label %83

83:                                               ; preds = %81, %68, %21
  %84 = load i32*, i32** %5, align 8
  ret i32* %84
}

declare dso_local i64 @apr_sockaddr_info_get(%struct.TYPE_4__**, i8*, i32, i16 zeroext, i32, i32*) #1

declare dso_local i32* @svn_error_createf(i64, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @apr_socket_create(i32**, i32, i32, i32, ...) #1

declare dso_local i64 @apr_socket_connect(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @apr_socket_close(i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32, i8*) #1

declare dso_local i64 @apr_socket_opt_set(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
