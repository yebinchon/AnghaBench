; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_init_sockets.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_init_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.descr = type { i64 }

@explicit_addresses = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"krb5_get_all_server_addrs\00", align 1
@port_str = common dso_local global i32 0, align 4
@num_ports = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"malloc(%lu) failed\00", align 1
@ports = common dso_local global %struct.TYPE_7__* null, align 8
@rk_INVALID_SOCKET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"listening on %s port %u/%s\00", align 1
@SOCK_STREAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"realloc(%lu) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.descr**)* @init_sockets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_sockets(i32 %0, i32* %1, %struct.descr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.descr**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.descr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 8
  %13 = alloca [80 x i8], align 16
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.descr** %2, %struct.descr*** %6, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @explicit_addresses, i32 0, i32 0), align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = bitcast %struct.TYPE_6__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_6__* @explicit_addresses to i8*), i64 16, i1 false)
  br label %29

19:                                               ; preds = %3
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @krb5_get_all_server_addrs(i32 %20, %struct.TYPE_6__* %12)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @krb5_err(i32 %25, i32 1, i64 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %19
  br label %29

29:                                               ; preds = %28, %17
  %30 = load i32, i32* %4, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @port_str, align 4
  %33 = call i32 @parse_ports(i32 %30, i32* %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @num_ports, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 8
  %40 = trunc i64 %39 to i32
  %41 = call %struct.descr* @malloc(i32 %40)
  store %struct.descr* %41, %struct.descr** %10, align 8
  %42 = load %struct.descr*, %struct.descr** %10, align 8
  %43 = icmp eq %struct.descr* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %29
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @num_ports, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = call i32 @krb5_errx(i32 %45, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %44, %29
  store i64 0, i64* %8, align 8
  br label %51

51:                                               ; preds = %131, %50
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* @num_ports, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %52, %54
  br i1 %55, label %56, label %134

56:                                               ; preds = %51
  store i64 0, i64* %9, align 8
  br label %57

57:                                               ; preds = %127, %56
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %130

63:                                               ; preds = %57
  %64 = load i32, i32* %4, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.descr*, %struct.descr** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.descr, %struct.descr* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ports, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ports, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ports, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @init_socket(i32 %64, i32* %65, %struct.descr* %69, i32* %73, i32 %78, i64 %83, i32 %88)
  %90 = load %struct.descr*, %struct.descr** %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.descr, %struct.descr* %90, i64 %92
  %94 = getelementptr inbounds %struct.descr, %struct.descr* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @rk_INVALID_SOCKET, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %126

98:                                               ; preds = %63
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %104 = call i32 @krb5_print_address(i32* %102, i8* %103, i32 80, i64* %14)
  %105 = load i32, i32* %4, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ports, align 8
  %109 = load i64, i64* %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ntohs(i32 %112)
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ports, align 8
  %115 = load i64, i64* %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @SOCK_STREAM, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %123 = call i32 @kdc_log(i32 %105, i32* %106, i32 5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %107, i32 %113, i8* %122)
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %98, %63
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %9, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %9, align 8
  br label %57

130:                                              ; preds = %57
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %8, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %8, align 8
  br label %51

134:                                              ; preds = %51
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @krb5_free_addresses(i32 %135, %struct.TYPE_6__* %12)
  %137 = load %struct.descr*, %struct.descr** %10, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = mul i64 %139, 8
  %141 = trunc i64 %140 to i32
  %142 = call %struct.descr* @realloc(%struct.descr* %137, i32 %141)
  store %struct.descr* %142, %struct.descr** %10, align 8
  %143 = load %struct.descr*, %struct.descr** %10, align 8
  %144 = icmp eq %struct.descr* %143, null
  br i1 %144, label %145, label %154

145:                                              ; preds = %134
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = mul i64 %151, 8
  %153 = call i32 @krb5_errx(i32 %149, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %152)
  br label %154

154:                                              ; preds = %148, %145, %134
  %155 = load %struct.descr*, %struct.descr** %10, align 8
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @reinit_descrs(%struct.descr* %155, i32 %156)
  %158 = load %struct.descr*, %struct.descr** %10, align 8
  %159 = load %struct.descr**, %struct.descr*** %6, align 8
  store %struct.descr* %158, %struct.descr** %159, align 8
  %160 = load i32, i32* %11, align 4
  ret i32 %160
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @krb5_get_all_server_addrs(i32, %struct.TYPE_6__*) #2

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #2

declare dso_local i32 @parse_ports(i32, i32*, i32) #2

declare dso_local %struct.descr* @malloc(i32) #2

declare dso_local i32 @krb5_errx(i32, i32, i8*, i64) #2

declare dso_local i32 @init_socket(i32, i32*, %struct.descr*, i32*, i32, i64, i32) #2

declare dso_local i32 @krb5_print_address(i32*, i8*, i32, i64*) #2

declare dso_local i32 @kdc_log(i32, i32*, i32, i8*, i8*, i32, i8*) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @krb5_free_addresses(i32, %struct.TYPE_6__*) #2

declare dso_local %struct.descr* @realloc(%struct.descr*, i32) #2

declare dso_local i32 @reinit_descrs(%struct.descr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
