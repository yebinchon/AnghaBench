; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ypxfr/extr_ypxfrd_getmap.c_ypxfrd_get_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ypxfr/extr_ypxfrd_getmap.c_ypxfrd_get_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.ypxfr_mapname = type { i8*, i8*, i8*, i32 }
%struct.xfr = type { i32 }

@__const.ypxfrd_get_map.timeout = private unnamed_addr constant %struct.timeval { i32 0, i32 25 }, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@XFR_DB_BSD_HASH = common dso_local global i32 0, align 4
@YPXFRD_FREEBSD_PROG = common dso_local global i32 0, align 4
@YPXFRD_FREEBSD_VERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@PERM_SECURE = common dso_local global i32 0, align 4
@fp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"couldn't open %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@YPXFRD_GETMAP = common dso_local global i32 0, align 4
@xdr_ypxfr_mapname = common dso_local global i64 0, align 8
@xdr_my_xfr = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"call to rpc.ypxfrd failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ypxfrd_get_map(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ypxfr_mapname, align 8
  %12 = alloca %struct.xfr, align 4
  %13 = alloca %struct.timeval, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = bitcast %struct.timeval* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.timeval* @__const.ypxfrd_get_map.timeout to i8*), i64 8, i1 false)
  store i32 0, i32* %14, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds %struct.ypxfr_mapname, %struct.ypxfr_mapname* %11, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds %struct.ypxfr_mapname, %struct.ypxfr_mapname* %11, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.ypxfr_mapname, %struct.ypxfr_mapname* %11, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load i32, i32* @XFR_DB_BSD_HASH, align 4
  %22 = getelementptr inbounds %struct.ypxfr_mapname, %struct.ypxfr_mapname* %11, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = bitcast %struct.xfr* %12 to i8*
  %24 = call i32 @bzero(i8* %23, i32 4)
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @YPXFRD_FREEBSD_PROG, align 4
  %27 = load i32, i32* @YPXFRD_FREEBSD_VERS, align 4
  %28 = call i32* @clnt_create(i8* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %28, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %76

31:                                               ; preds = %4
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* @O_RDWR, align 4
  %34 = load i32, i32* @O_CREAT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @PERM_SECURE, align 4
  %37 = call i32 @open(i8* %32, i32 %35, i32 %36)
  store i32 %37, i32* @fp, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @clnt_destroy(i32* %40)
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @strerror(i32 %43)
  %45 = call i32 (i8*, i8*, ...) @yp_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %42, i32 %44)
  store i32 1, i32* %5, align 4
  br label %76

46:                                               ; preds = %31
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* @YPXFRD_GETMAP, align 4
  %49 = load i64, i64* @xdr_ypxfr_mapname, align 8
  %50 = trunc i64 %49 to i32
  %51 = bitcast %struct.ypxfr_mapname* %11 to i8*
  %52 = load i64, i64* @xdr_my_xfr, align 8
  %53 = trunc i64 %52 to i32
  %54 = bitcast %struct.xfr* %12 to i8*
  %55 = bitcast %struct.timeval* %13 to i64*
  %56 = load i64, i64* %55, align 4
  %57 = call i64 @clnt_call(i32* %47, i32 %48, i32 %50, i8* %51, i32 %53, i8* %54, i64 %56)
  %58 = load i64, i64* @RPC_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %46
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @clnt_sperror(i32* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 (i8*, i8*, ...) @yp_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %14, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @unlink(i8* %68)
  br label %70

70:                                               ; preds = %60, %46
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @clnt_destroy(i32* %71)
  %73 = load i32, i32* @fp, align 4
  %74 = call i32 @close(i32 %73)
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %70, %39, %30
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32* @clnt_create(i8*, i32, i32, i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @clnt_destroy(i32*) #2

declare dso_local i32 @yp_error(i8*, i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i64 @clnt_call(i32*, i32, i32, i8*, i32, i8*, i64) #2

declare dso_local i32 @clnt_sperror(i32*, i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
