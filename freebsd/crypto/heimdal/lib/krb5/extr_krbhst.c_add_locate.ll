; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_add_locate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_add_locate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.krb5_krbhst_info = type { i8*, %struct.addrinfo*, i32, i32, i32 }
%struct.addrinfo = type { i32 }
%struct.krb5_krbhst_data = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.sockaddr*)* @add_locate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_locate(i8* %0, i32 %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.krb5_krbhst_info*, align 8
  %9 = alloca %struct.krb5_krbhst_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.addrinfo, align 4
  %14 = alloca %struct.addrinfo*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.krb5_krbhst_data*
  store %struct.krb5_krbhst_data* %20, %struct.krb5_krbhst_data** %9, align 8
  %21 = load i32, i32* @NI_MAXHOST, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i32, i32* @NI_MAXSERV, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %28 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %29 = call i32 @socket_sockaddr_size(%struct.sockaddr* %28)
  store i32 %29, i32* %15, align 4
  %30 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %31 = load i32, i32* %15, align 4
  %32 = trunc i64 %22 to i32
  %33 = trunc i64 %26 to i32
  %34 = load i32, i32* @NI_NUMERICHOST, align 4
  %35 = load i32, i32* @NI_NUMERICSERV, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @getnameinfo(%struct.sockaddr* %30, i32 %31, i8* %24, i32 %32, i8* %27, i32 %33, i32 %36)
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %86

41:                                               ; preds = %3
  %42 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %9, align 8
  %43 = call i32 @krbhst_get_default_proto(%struct.krb5_krbhst_data* %42)
  %44 = call i32 @make_hints(%struct.addrinfo* %13, i32 %43)
  %45 = call i32 @getaddrinfo(i8* %24, i8* %27, %struct.addrinfo* %13, %struct.addrinfo** %14)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %86

49:                                               ; preds = %41
  %50 = call i64 @strlen(i8* %24)
  store i64 %50, i64* %16, align 8
  %51 = load i64, i64* %16, align 8
  %52 = add i64 32, %51
  %53 = trunc i64 %52 to i32
  %54 = call %struct.krb5_krbhst_info* @calloc(i32 1, i32 %53)
  store %struct.krb5_krbhst_info* %54, %struct.krb5_krbhst_info** %8, align 8
  %55 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %8, align 8
  %56 = icmp eq %struct.krb5_krbhst_info* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @ENOMEM, align 4
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %86

59:                                               ; preds = %49
  %60 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %9, align 8
  %61 = call i32 @krbhst_get_default_proto(%struct.krb5_krbhst_data* %60)
  %62 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %8, align 8
  %63 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %65 = call i32 @socket_get_port(%struct.sockaddr* %64)
  %66 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %8, align 8
  %67 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %8, align 8
  %69 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %68, i32 0, i32 3
  store i32 %65, i32* %69, align 4
  %70 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %71 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %8, align 8
  %72 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %71, i32 0, i32 1
  store %struct.addrinfo* %70, %struct.addrinfo** %72, align 8
  %73 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %8, align 8
  %74 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i64, i64* %16, align 8
  %77 = call i32 @memmove(i8* %75, i8* %24, i64 %76)
  %78 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %8, align 8
  %79 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* %16, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %9, align 8
  %84 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %8, align 8
  %85 = call i32 @append_host_hostinfo(%struct.krb5_krbhst_data* %83, %struct.krb5_krbhst_info* %84)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %86

86:                                               ; preds = %59, %57, %48, %40
  %87 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @socket_sockaddr_size(%struct.sockaddr*) #2

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @make_hints(%struct.addrinfo*, i32) #2

declare dso_local i32 @krbhst_get_default_proto(%struct.krb5_krbhst_data*) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local %struct.krb5_krbhst_info* @calloc(i32, i32) #2

declare dso_local i32 @socket_get_port(%struct.sockaddr*) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i32 @append_host_hostinfo(%struct.krb5_krbhst_data*, %struct.krb5_krbhst_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
