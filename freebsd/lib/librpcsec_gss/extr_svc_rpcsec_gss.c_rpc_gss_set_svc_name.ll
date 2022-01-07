; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_set_svc_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_set_svc_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_svc_name = type { i8*, i8*, i32, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_6__ = type { i32, i8* }

@FALSE = common dso_local global i32 0, align 4
@GSS_C_NT_HOSTBASED_SERVICE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@GSS_C_ACCEPT = common dso_local global i32 0, align 4
@svc_rpc_gss_svc_names = common dso_local global i32 0, align 4
@sn_link = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_gss_set_svc_name(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.svc_rpc_gss_svc_name*, align 8
  %15 = alloca %struct.TYPE_5__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_6__, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %20 = call i32 (...) @svc_rpc_gss_init()
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @rpc_gss_mech_to_oid(i8* %21, i8** %17)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %6, align 4
  br label %85

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i8*, i8** %17, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* @GSS_C_NT_HOSTBASED_SERVICE, align 4
  %38 = call i64 @gss_import_name(i64* %13, %struct.TYPE_5__* %15, i32 %37, i32* %16)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @GSS_S_COMPLETE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %6, align 4
  br label %85

44:                                               ; preds = %26
  %45 = load i32, i32* %16, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* @GSS_C_ACCEPT, align 4
  %48 = call i64 @gss_acquire_cred(i64* %13, i32 %45, i8* %46, %struct.TYPE_6__* %18, i32 %47, i32* %19, i32* null, i32* null)
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* @GSS_S_COMPLETE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %6, align 4
  br label %85

54:                                               ; preds = %44
  %55 = call i32 @gss_release_name(i64* %13, i32* %16)
  %56 = call %struct.svc_rpc_gss_svc_name* @malloc(i32 48)
  store %struct.svc_rpc_gss_svc_name* %56, %struct.svc_rpc_gss_svc_name** %14, align 8
  %57 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %14, align 8
  %58 = icmp ne %struct.svc_rpc_gss_svc_name* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %6, align 4
  br label %85

61:                                               ; preds = %54
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @strdup(i8* %62)
  %64 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %14, align 8
  %65 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load i8*, i8** %17, align 8
  %67 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %14, align 8
  %68 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %14, align 8
  %71 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %19, align 4
  %73 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %14, align 8
  %74 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %14, align 8
  %77 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %14, align 8
  %80 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %14, align 8
  %82 = load i32, i32* @sn_link, align 4
  %83 = call i32 @SLIST_INSERT_HEAD(i32* @svc_rpc_gss_svc_names, %struct.svc_rpc_gss_svc_name* %81, i32 %82)
  %84 = load i32, i32* @TRUE, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %61, %59, %52, %42, %24
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @svc_rpc_gss_init(...) #1

declare dso_local i32 @rpc_gss_mech_to_oid(i8*, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @gss_import_name(i64*, %struct.TYPE_5__*, i32, i32*) #1

declare dso_local i64 @gss_acquire_cred(i64*, i32, i8*, %struct.TYPE_6__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @gss_release_name(i64*, i32*) #1

declare dso_local %struct.svc_rpc_gss_svc_name* @malloc(i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.svc_rpc_gss_svc_name*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
