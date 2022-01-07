; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsvc/extr_yp_passwd.c__yppasswd.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsvc/extr_yp_passwd.c__yppasswd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x_passwd = type { i32 }
%struct.yppasswd = type { i8*, %struct.x_passwd }

@.str = private unnamed_addr constant [14 x i8] c"passwd.byname\00", align 1
@YPPASSWDPROG = common dso_local global i32 0, align 4
@YPPASSWDPROC_UPDATE = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPORT_RESERVED = common dso_local global i32 0, align 4
@YPPASSWDVERS = common dso_local global i32 0, align 4
@xdr_yppasswd = common dso_local global i64 0, align 8
@xdr_int = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_yppasswd(i8* %0, %struct.x_passwd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.x_passwd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.yppasswd, align 8
  store i8* %0, i8** %4, align 8
  store %struct.x_passwd* %1, %struct.x_passwd** %5, align 8
  %11 = getelementptr inbounds %struct.yppasswd, %struct.yppasswd* %10, i32 0, i32 1
  %12 = load %struct.x_passwd*, %struct.x_passwd** %5, align 8
  %13 = bitcast %struct.x_passwd* %11 to i8*
  %14 = bitcast %struct.x_passwd* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds %struct.yppasswd, %struct.yppasswd* %10, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = call i64 @yp_get_default_domain(i8** %7)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %61

20:                                               ; preds = %2
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @yp_master(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %6)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %61

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @YPPASSWDPROG, align 4
  %28 = load i32, i32* @YPPASSWDPROC_UPDATE, align 4
  %29 = load i32, i32* @IPPROTO_UDP, align 4
  %30 = call i32 @getrpcport(i8* %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @IPPORT_RESERVED, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %25
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @free(i8* %38)
  store i32 -1, i32* %3, align 4
  br label %61

40:                                               ; preds = %33
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @YPPASSWDPROG, align 4
  %43 = load i32, i32* @YPPASSWDVERS, align 4
  %44 = load i32, i32* @YPPASSWDPROC_UPDATE, align 4
  %45 = load i64, i64* @xdr_yppasswd, align 8
  %46 = trunc i64 %45 to i32
  %47 = bitcast %struct.yppasswd* %10 to i8*
  %48 = load i64, i64* @xdr_int, align 8
  %49 = trunc i64 %48 to i32
  %50 = bitcast i32* %9 to i8*
  %51 = call i32 @callrpc(i8* %41, i32 %42, i32 %43, i32 %44, i32 %46, i8* %47, i32 %49, i8* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %40
  store i32 -1, i32* %3, align 4
  br label %61

60:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %59, %37, %24, %19
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @yp_get_default_domain(i8**) #2

declare dso_local i64 @yp_master(i8*, i8*, i8**) #2

declare dso_local i32 @getrpcport(i8*, i32, i32, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @callrpc(i8*, i32, i32, i32, i32, i8*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
