; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cmdline.c_trust_server_cert_non_interactive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cmdline.c_trust_server_cert_non_interactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.trust_server_cert_non_interactive_baton = type { i64, i64, i64, i64, i64 }

@SVN_AUTH_SSL_UNKNOWNCA = common dso_local global i32 0, align 4
@SVN_AUTH_SSL_CNMISMATCH = common dso_local global i32 0, align 4
@SVN_AUTH_SSL_EXPIRED = common dso_local global i32 0, align 4
@SVN_AUTH_SSL_NOTYETVALID = common dso_local global i32 0, align 4
@SVN_AUTH_SSL_OTHER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__**, i8*, i8*, i32, i32*, i32, i32*)* @trust_server_cert_non_interactive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @trust_server_cert_non_interactive(%struct.TYPE_4__** %0, i8* %1, i8* %2, i32 %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_4__**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.trust_server_cert_non_interactive_baton*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.trust_server_cert_non_interactive_baton*
  store %struct.trust_server_cert_non_interactive_baton* %18, %struct.trust_server_cert_non_interactive_baton** %15, align 8
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %19, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.trust_server_cert_non_interactive_baton*, %struct.trust_server_cert_non_interactive_baton** %15, align 8
  %22 = getelementptr inbounds %struct.trust_server_cert_non_interactive_baton, %struct.trust_server_cert_non_interactive_baton* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* @SVN_AUTH_SSL_UNKNOWNCA, align 4
  br label %28

27:                                               ; preds = %7
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = load %struct.trust_server_cert_non_interactive_baton*, %struct.trust_server_cert_non_interactive_baton** %15, align 8
  %31 = getelementptr inbounds %struct.trust_server_cert_non_interactive_baton, %struct.trust_server_cert_non_interactive_baton* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @SVN_AUTH_SSL_CNMISMATCH, align 4
  br label %37

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = or i32 %29, %38
  %40 = load %struct.trust_server_cert_non_interactive_baton*, %struct.trust_server_cert_non_interactive_baton** %15, align 8
  %41 = getelementptr inbounds %struct.trust_server_cert_non_interactive_baton, %struct.trust_server_cert_non_interactive_baton* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @SVN_AUTH_SSL_EXPIRED, align 4
  br label %47

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = or i32 %39, %48
  %50 = load %struct.trust_server_cert_non_interactive_baton*, %struct.trust_server_cert_non_interactive_baton** %15, align 8
  %51 = getelementptr inbounds %struct.trust_server_cert_non_interactive_baton, %struct.trust_server_cert_non_interactive_baton* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @SVN_AUTH_SSL_NOTYETVALID, align 4
  br label %57

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  %59 = or i32 %49, %58
  %60 = load %struct.trust_server_cert_non_interactive_baton*, %struct.trust_server_cert_non_interactive_baton** %15, align 8
  %61 = getelementptr inbounds %struct.trust_server_cert_non_interactive_baton, %struct.trust_server_cert_non_interactive_baton* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @SVN_AUTH_SSL_OTHER, align 4
  br label %67

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i32 [ %65, %64 ], [ 0, %66 ]
  %69 = or i32 %59, %68
  %70 = xor i32 %69, -1
  %71 = and i32 %20, %70
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %67
  %75 = load i32*, i32** %14, align 8
  %76 = call %struct.TYPE_4__* @apr_pcalloc(i32* %75, i32 8)
  %77 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  store %struct.TYPE_4__* %76, %struct.TYPE_4__** %77, align 8
  %78 = load i32, i32* @FALSE, align 4
  %79 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %74, %67
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %87
}

declare dso_local %struct.TYPE_4__* @apr_pcalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
