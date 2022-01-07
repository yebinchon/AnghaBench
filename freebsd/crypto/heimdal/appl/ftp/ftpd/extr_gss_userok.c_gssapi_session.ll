; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_gss_userok.c_gssapi_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_gss_userok.c_gssapi_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gssapi_data = type { i64 }

@GSS_C_NO_CREDENTIAL = common dso_local global i64 0, align 8
@GSS_C_INITIATE = common dso_local global i32 0, align 4
@GSS_C_NO_OID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gssapi_session(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gssapi_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.gssapi_data*
  store %struct.gssapi_data* %10, %struct.gssapi_data** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.gssapi_data*, %struct.gssapi_data** %5, align 8
  %12 = getelementptr inbounds %struct.gssapi_data, %struct.gssapi_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.gssapi_data*, %struct.gssapi_data** %5, align 8
  %18 = getelementptr inbounds %struct.gssapi_data, %struct.gssapi_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @GSS_C_INITIATE, align 4
  %21 = load i32, i32* @GSS_C_NO_OID, align 4
  %22 = call i32 @gss_store_cred(i32* %7, i64 %19, i32 %20, i32 %21, i32 1, i32 1, i32* null, i32* null)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @GSS_ERROR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  br label %27

27:                                               ; preds = %26, %16
  %28 = call i32 @afslog(i32* null, i32 1)
  br label %29

29:                                               ; preds = %27, %2
  %30 = load %struct.gssapi_data*, %struct.gssapi_data** %5, align 8
  %31 = getelementptr inbounds %struct.gssapi_data, %struct.gssapi_data* %30, i32 0, i32 0
  %32 = call i32 @gss_release_cred(i32* %7, i64* %31)
  %33 = load i32, i32* %8, align 4
  ret i32 %33
}

declare dso_local i32 @gss_store_cred(i32*, i64, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @GSS_ERROR(i32) #1

declare dso_local i32 @afslog(i32*, i32) #1

declare dso_local i32 @gss_release_cred(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
