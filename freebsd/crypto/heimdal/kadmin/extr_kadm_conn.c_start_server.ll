; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_kadm_conn.c_start_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_kadm_conn.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kadm_port = type { i8*, i32, %struct.kadm_port* }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@kadm_ports = common dso_local global %struct.kadm_port* null, align 8
@AI_PASSIVE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to reallocate %lu bytes\00", align 1
@rk_SOCK_ERRNO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@SOMAXCONN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"no sockets to listen to - exiting\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_server(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kadm_port*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca [32 x i8], align 16
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i32, i32* %3, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @parse_ports(i32 %20, i8* %21)
  %23 = load %struct.kadm_port*, %struct.kadm_port** @kadm_ports, align 8
  store %struct.kadm_port* %23, %struct.kadm_port** %6, align 8
  br label %24

24:                                               ; preds = %159, %19
  %25 = load %struct.kadm_port*, %struct.kadm_port** %6, align 8
  %26 = icmp ne %struct.kadm_port* %25, null
  br i1 %26, label %27, label %163

27:                                               ; preds = %24
  %28 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %29 = load i32, i32* @AI_PASSIVE, align 4
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 6
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* @SOCK_STREAM, align 4
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load %struct.kadm_port*, %struct.kadm_port** %6, align 8
  %34 = getelementptr inbounds %struct.kadm_port, %struct.kadm_port* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @getaddrinfo(i32* null, i8* %35, %struct.addrinfo* %11, %struct.addrinfo** %12)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %41 = load %struct.kadm_port*, %struct.kadm_port** %6, align 8
  %42 = getelementptr inbounds %struct.kadm_port, %struct.kadm_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @snprintf(i8* %40, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %46 = call i32 @getaddrinfo(i32* null, i8* %45, %struct.addrinfo* %11, %struct.addrinfo** %12)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %39, %27
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @krb5_eai_to_heim_errno(i32 %52, i32 %53)
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %56 = call i32 (i32, i32, i8*, ...) @krb5_warn(i32 %51, i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  br label %159

57:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  %58 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  store %struct.addrinfo* %58, %struct.addrinfo** %13, align 8
  br label %59

59:                                               ; preds = %65, %57
  %60 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %61 = icmp ne %struct.addrinfo* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %62
  %66 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 5
  %68 = load %struct.addrinfo*, %struct.addrinfo** %67, align 8
  store %struct.addrinfo* %68, %struct.addrinfo** %13, align 8
  br label %59

69:                                               ; preds = %59
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add i32 %71, %72
  %74 = zext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i32* @realloc(i32* %70, i32 %76)
  store i32* %77, i32** %8, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %69
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = add i32 %82, %83
  %85 = zext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = call i32 @krb5_warnx(i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %86)
  br label %159

88:                                               ; preds = %69
  %89 = load i32*, i32** %8, align 8
  store i32* %89, i32** %7, align 8
  %90 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  store %struct.addrinfo* %90, %struct.addrinfo** %13, align 8
  br label %91

91:                                               ; preds = %152, %88
  %92 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %93 = icmp ne %struct.addrinfo* %92, null
  br i1 %93, label %94, label %156

94:                                               ; preds = %91
  %95 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %96 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %99 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %102 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @socket(i32 %97, i32 %100, i32 %103)
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i64 @rk_IS_BAD_SOCKET(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %94
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @rk_SOCK_ERRNO, align 4
  %111 = call i32 (i32, i32, i8*, ...) @krb5_warn(i32 %109, i32 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %152

112:                                              ; preds = %94
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @socket_set_reuseaddr(i32 %113, i32 1)
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @socket_set_ipv6only(i32 %115, i32 1)
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %119 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %122 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @bind(i32 %117, i32 %120, i32 %123)
  %125 = call i64 @rk_IS_SOCKET_ERROR(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %112
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* @rk_SOCK_ERRNO, align 4
  %130 = call i32 (i32, i32, i8*, ...) @krb5_warn(i32 %128, i32 %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @rk_closesocket(i32 %131)
  br label %152

133:                                              ; preds = %112
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* @SOMAXCONN, align 4
  %136 = call i32 @listen(i32 %134, i32 %135)
  %137 = call i64 @rk_IS_SOCKET_ERROR(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* @rk_SOCK_ERRNO, align 4
  %142 = call i32 (i32, i32, i8*, ...) @krb5_warn(i32 %140, i32 %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @rk_closesocket(i32 %143)
  br label %152

145:                                              ; preds = %133
  %146 = load i32, i32* %15, align 4
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* %9, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %9, align 4
  %150 = zext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 %146, i32* %151, align 4
  br label %152

152:                                              ; preds = %145, %139, %127, %108
  %153 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %154 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %153, i32 0, i32 5
  %155 = load %struct.addrinfo*, %struct.addrinfo** %154, align 8
  store %struct.addrinfo* %155, %struct.addrinfo** %13, align 8
  br label %91

156:                                              ; preds = %91
  %157 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %158 = call i32 @freeaddrinfo(%struct.addrinfo* %157)
  br label %159

159:                                              ; preds = %156, %80, %50
  %160 = load %struct.kadm_port*, %struct.kadm_port** %6, align 8
  %161 = getelementptr inbounds %struct.kadm_port, %struct.kadm_port* %160, i32 0, i32 2
  %162 = load %struct.kadm_port*, %struct.kadm_port** %161, align 8
  store %struct.kadm_port* %162, %struct.kadm_port** %6, align 8
  br label %24

163:                                              ; preds = %24
  %164 = load i32, i32* %9, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* %3, align 4
  %168 = call i32 @krb5_errx(i32 %167, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %163
  %170 = load i32, i32* %3, align 4
  %171 = load i32*, i32** %7, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @wait_for_connection(i32 %170, i32* %171, i32 %172)
  ret void
}

declare dso_local i32 @parse_ports(i32, i8*) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i32*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @krb5_warn(i32, i32, i8*, ...) #1

declare dso_local i32 @krb5_eai_to_heim_errno(i32, i32) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @krb5_warnx(i32, i8*, i64) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @rk_IS_BAD_SOCKET(i32) #1

declare dso_local i32 @socket_set_reuseaddr(i32, i32) #1

declare dso_local i32 @socket_set_ipv6only(i32, i32) #1

declare dso_local i64 @rk_IS_SOCKET_ERROR(i32) #1

declare dso_local i32 @bind(i32, i32, i32) #1

declare dso_local i32 @rk_closesocket(i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i32 @wait_for_connection(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
