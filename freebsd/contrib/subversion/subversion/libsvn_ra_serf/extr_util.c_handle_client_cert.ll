; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_handle_client_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_handle_client_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8* }

@SVN_AUTH_CRED_SSL_CLIENT_CERT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8**, i32*)* @handle_client_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @handle_client_cert(i8* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %7, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %8, align 8
  %17 = load i8**, i8*** %5, align 8
  store i8* null, i8** %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @construct_realm(%struct.TYPE_5__* %18, i32 %21)
  store i8* %22, i8** %9, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* @SVN_AUTH_CRED_SSL_CLIENT_CERT, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @svn_auth_first_credentials(i8** %10, i32* %29, i32 %30, i8* %31, i32 %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  br label %47

38:                                               ; preds = %3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @svn_auth_next_credentials(i8** %10, i32 %41, i32 %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %47

47:                                               ; preds = %38, %27
  %48 = load i8*, i8** %10, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i8*, i8** %10, align 8
  %52 = bitcast i8* %51 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %11, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8**, i8*** %5, align 8
  store i8* %55, i8** %56, align 8
  br label %57

57:                                               ; preds = %50, %47
  %58 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %58
}

declare dso_local i8* @construct_realm(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_auth_first_credentials(i8**, i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @svn_auth_next_credentials(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
