; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_revoke.c_load_ocsp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_revoke.c_load_ocsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revoke_ocsp = type { i32*, i32*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32* }
%struct.stat = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to parse OCSP response\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"MEMORY:ocsp-certs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.revoke_ocsp*)* @load_ocsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_ocsp(i32 %0, %struct.revoke_ocsp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.revoke_ocsp*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.revoke_ocsp* %1, %struct.revoke_ocsp** %5, align 8
  store i32* null, i32** %7, align 8
  %14 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %5, align 8
  %15 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @rk_undumpdata(i32 %16, i8** %10, i64* %8)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %3, align 4
  br label %115

22:                                               ; preds = %2
  %23 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %5, align 8
  %24 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @stat(i32 %25, %struct.stat* %9)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @errno, align 4
  store i32 %30, i32* %3, align 4
  br label %115

31:                                               ; preds = %22
  %32 = load i8*, i8** %10, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @parse_ocsp_basic(i8* %32, i64 %33, %struct.TYPE_6__* %6)
  store i32 %34, i32* %11, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @rk_xfree(i8* %35)
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @hx509_set_error_string(i32 %40, i32 0, i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %3, align 4
  br label %115

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %91

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @hx509_certs_init(i32 %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null, i32** %7)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = call i32 @free_OCSPBasicOCSPResponse(%struct.TYPE_6__* %6)
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %3, align 4
  br label %115

56:                                               ; preds = %48
  store i64 0, i64* %12, align 8
  br label %57

57:                                               ; preds = %87, %56
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %58, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %57
  %65 = load i32, i32* %4, align 4
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = call i32 @hx509_cert_init(i32 %65, i32* %71, i32** %13)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %87

76:                                               ; preds = %64
  %77 = load i32, i32* %4, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @hx509_certs_add(i32 %77, i32* %78, i32* %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @hx509_cert_free(i32* %81)
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %87

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %85, %75
  %88 = load i64, i64* %12, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %12, align 8
  br label %57

90:                                               ; preds = %57
  br label %91

91:                                               ; preds = %90, %44
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %5, align 8
  %95 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %5, align 8
  %97 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %96, i32 0, i32 2
  %98 = call i32 @free_OCSPBasicOCSPResponse(%struct.TYPE_6__* %97)
  %99 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %5, align 8
  %100 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %99, i32 0, i32 1
  %101 = call i32 @hx509_certs_free(i32** %100)
  %102 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %5, align 8
  %103 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @hx509_cert_free(i32* %104)
  %106 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %5, align 8
  %107 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %106, i32 0, i32 2
  %108 = bitcast %struct.TYPE_6__* %107 to i8*
  %109 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 8, i1 false)
  %110 = load i32*, i32** %7, align 8
  %111 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %5, align 8
  %112 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %111, i32 0, i32 1
  store i32* %110, i32** %112, align 8
  %113 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %5, align 8
  %114 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %113, i32 0, i32 0
  store i32* null, i32** %114, align 8
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %91, %53, %39, %29, %20
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @rk_undumpdata(i32, i8**, i64*) #1

declare dso_local i32 @stat(i32, %struct.stat*) #1

declare dso_local i32 @parse_ocsp_basic(i8*, i64, %struct.TYPE_6__*) #1

declare dso_local i32 @rk_xfree(i8*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32*, i32**) #1

declare dso_local i32 @free_OCSPBasicOCSPResponse(%struct.TYPE_6__*) #1

declare dso_local i32 @hx509_cert_init(i32, i32*, i32**) #1

declare dso_local i32 @hx509_certs_add(i32, i32*, i32*) #1

declare dso_local i32 @hx509_cert_free(i32*) #1

declare dso_local i32 @hx509_certs_free(i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
