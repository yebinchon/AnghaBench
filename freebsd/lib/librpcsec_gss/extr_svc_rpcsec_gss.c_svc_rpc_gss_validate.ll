; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_client = type { i32, i32, i32 }
%struct.rpc_msg = type { %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.opaque_auth, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.opaque_auth = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"in svc_rpc_gss_validate()\00", align 1
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"gss_verify_mic\00", align 1
@CLIENT_STALE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rpc_gss_client*, %struct.rpc_msg*, i32*)* @svc_rpc_gss_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_rpc_gss_validate(%struct.svc_rpc_gss_client* %0, %struct.rpc_msg* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rpc_gss_client*, align 8
  %6 = alloca %struct.rpc_msg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.opaque_auth*, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [32 x i32], align 16
  %15 = alloca i32*, align 8
  store %struct.svc_rpc_gss_client* %0, %struct.svc_rpc_gss_client** %5, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = call i32 @log_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %18 = call i32 @memset(i32* %17, i32 0, i32 128)
  %19 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  store i32* %19, i32** %15, align 8
  %20 = load i32*, i32** %15, align 8
  %21 = load %struct.rpc_msg*, %struct.rpc_msg** %6, align 8
  %22 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @IXDR_PUT_LONG(i32* %20, i64 %23)
  %25 = load i32*, i32** %15, align 8
  %26 = load %struct.rpc_msg*, %struct.rpc_msg** %6, align 8
  %27 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @IXDR_PUT_ENUM(i32* %25, i32 %28)
  %30 = load i32*, i32** %15, align 8
  %31 = load %struct.rpc_msg*, %struct.rpc_msg** %6, align 8
  %32 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @IXDR_PUT_LONG(i32* %30, i64 %34)
  %36 = load i32*, i32** %15, align 8
  %37 = load %struct.rpc_msg*, %struct.rpc_msg** %6, align 8
  %38 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @IXDR_PUT_LONG(i32* %36, i64 %40)
  %42 = load i32*, i32** %15, align 8
  %43 = load %struct.rpc_msg*, %struct.rpc_msg** %6, align 8
  %44 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @IXDR_PUT_LONG(i32* %42, i64 %46)
  %48 = load i32*, i32** %15, align 8
  %49 = load %struct.rpc_msg*, %struct.rpc_msg** %6, align 8
  %50 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @IXDR_PUT_LONG(i32* %48, i64 %52)
  %54 = load %struct.rpc_msg*, %struct.rpc_msg** %6, align 8
  %55 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store %struct.opaque_auth* %56, %struct.opaque_auth** %8, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = load %struct.opaque_auth*, %struct.opaque_auth** %8, align 8
  %59 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @IXDR_PUT_ENUM(i32* %57, i32 %60)
  %62 = load i32*, i32** %15, align 8
  %63 = load %struct.opaque_auth*, %struct.opaque_auth** %8, align 8
  %64 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @IXDR_PUT_LONG(i32* %62, i64 %65)
  %67 = load %struct.opaque_auth*, %struct.opaque_auth** %8, align 8
  %68 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %3
  %72 = load i32*, i32** %15, align 8
  %73 = ptrtoint i32* %72 to i32
  %74 = load %struct.opaque_auth*, %struct.opaque_auth** %8, align 8
  %75 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.opaque_auth*, %struct.opaque_auth** %8, align 8
  %78 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @memcpy(i32 %73, i32 %76, i64 %79)
  %81 = load %struct.opaque_auth*, %struct.opaque_auth** %8, align 8
  %82 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @RNDUP(i64 %83)
  %85 = sext i32 %84 to i64
  %86 = udiv i64 %85, 4
  %87 = load i32*, i32** %15, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 %86
  store i32* %88, i32** %15, align 8
  br label %89

89:                                               ; preds = %71, %3
  %90 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32* %90, i32** %91, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %94 = ptrtoint i32* %92 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %98, i32* %99, align 8
  %100 = load %struct.rpc_msg*, %struct.rpc_msg** %6, align 8
  %101 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32* %104, i32** %105, align 8
  %106 = load %struct.rpc_msg*, %struct.rpc_msg** %6, align 8
  %107 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %110, i32* %111, align 8
  %112 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %5, align 8
  %113 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @gss_verify_mic(i64* %12, i32 %114, %struct.TYPE_8__* %9, %struct.TYPE_8__* %10, i32* %13)
  store i64 %115, i64* %11, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* @GSS_S_COMPLETE, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %89
  %120 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %5, align 8
  %121 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %12, align 8
  %125 = call i32 @log_status(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %122, i64 %123, i64 %124)
  %126 = load i32, i32* @CLIENT_STALE, align 4
  %127 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %5, align 8
  %128 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @FALSE, align 4
  store i32 %129, i32* %4, align 4
  br label %134

130:                                              ; preds = %89
  %131 = load i32, i32* %13, align 4
  %132 = load i32*, i32** %7, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* @TRUE, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %130, %119
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @IXDR_PUT_LONG(i32*, i64) #1

declare dso_local i32 @IXDR_PUT_ENUM(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @RNDUP(i64) #1

declare dso_local i64 @gss_verify_mic(i64*, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @log_status(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
