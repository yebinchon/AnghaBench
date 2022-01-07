; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_tcp_client.c_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_tcp_client.c_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"krb5_auth_con_init\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"krb5_auth_con_setaddrs_from_fd\00", align 1
@KRB5_NT_SRV_HST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"krb5_sname_to_principal\00", align 1
@VERSION = common dso_local global i32 0, align 4
@AP_OPTS_MUTUAL_REQUIRED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"krb5_sendauth\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"hej\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"krb5_mk_safe\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"krb5_net_write\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"hemligt\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"krb5_mk_priv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i32, i32* @context, align 4
  %15 = call i64 @krb5_auth_con_init(i32 %14, i32* %7)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @context, align 4
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @krb5_err(i32 %19, i32 1, i64 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %3
  %23 = load i32, i32* @context, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @krb5_auth_con_setaddrs_from_fd(i32 %23, i32 %24, i32* %4)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @context, align 4
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @krb5_err(i32 %29, i32 1, i64 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* @context, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @KRB5_NT_SRV_HST, align 4
  %37 = call i64 @krb5_sname_to_principal(i32 %33, i8* %34, i8* %35, i32 %36, i32* %9)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @context, align 4
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @krb5_err(i32 %41, i32 1, i64 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %32
  %45 = load i32, i32* @context, align 4
  %46 = load i32, i32* @VERSION, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @AP_OPTS_MUTUAL_REQUIRED, align 4
  %49 = call i64 @krb5_sendauth(i32 %45, i32* %7, i32* %4, i32 %46, i32* null, i32 %47, i32 %48, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32, i32* @context, align 4
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @krb5_err(i32 %53, i32 1, i64 %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %44
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 3, i32* %58, align 8
  %59 = call i32 @krb5_data_zero(%struct.TYPE_8__* %11)
  %60 = load i32, i32* @context, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @krb5_mk_safe(i32 %60, i32 %61, %struct.TYPE_8__* %10, %struct.TYPE_8__* %11, i32* null)
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i32, i32* @context, align 4
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @krb5_err(i32 %66, i32 1, i64 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %56
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @htonl(i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* @context, align 4
  %75 = call i32 @krb5_net_write(i32 %74, i32* %4, i32* %13, i32 4)
  %76 = icmp ne i32 %75, 4
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %69
  %80 = load i32, i32* @context, align 4
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @krb5_net_write(i32 %80, i32* %4, i32* %83, i32 %84)
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %79
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 7, i32* %92, align 8
  %93 = call i32 @krb5_data_free(%struct.TYPE_8__* %11)
  %94 = load i32, i32* @context, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i64 @krb5_mk_priv(i32 %94, i32 %95, %struct.TYPE_8__* %10, %struct.TYPE_8__* %11, i32* null)
  store i64 %96, i64* %8, align 8
  %97 = load i64, i64* %8, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load i32, i32* @context, align 4
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @krb5_err(i32 %100, i32 1, i64 %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %103

103:                                              ; preds = %99, %90
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @htonl(i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* @context, align 4
  %109 = call i32 @krb5_net_write(i32 %108, i32* %4, i32* %13, i32 4)
  %110 = icmp ne i32 %109, 4
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %103
  %114 = load i32, i32* @context, align 4
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = bitcast i8* %116 to i32*
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @krb5_net_write(i32 %114, i32* %4, i32* %117, i32 %118)
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %113
  ret i32 0
}

declare dso_local i64 @krb5_auth_con_init(i32, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @krb5_auth_con_setaddrs_from_fd(i32, i32, i32*) #1

declare dso_local i64 @krb5_sname_to_principal(i32, i8*, i8*, i32, i32*) #1

declare dso_local i64 @krb5_sendauth(i32, i32*, i32*, i32, i32*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @krb5_data_zero(%struct.TYPE_8__*) #1

declare dso_local i64 @krb5_mk_safe(i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @krb5_net_write(i32, i32*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_8__*) #1

declare dso_local i64 @krb5_mk_priv(i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
