; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibsysstat.c_server_respond.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibsysstat.c_server_respond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i8*, %struct.TYPE_12__, i32, i8*, i32 }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i8*, i32, i64, i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i32, i32, i32, i32 }

@IB_DEFAULT_QP1_QKEY = common dso_local global i8* null, align 8
@IB_MAD_MGMTCLASS_F = common dso_local global i32 0, align 4
@IB_MAD_METHOD_GET = common dso_local global i32 0, align 4
@IB_MAD_RESPONSE = common dso_local global i32 0, align 4
@IB_MAD_ATTRID_F = common dso_local global i32 0, align 4
@IB_MAD_ATTRMOD_F = common dso_local global i32 0, align 4
@IB_VEND2_OUI_F = common dso_local global i32 0, align 4
@IB_MAD_TRID_F = common dso_local global i32 0, align 4
@IB_MAD_SIZE = common dso_local global i32 0, align 4
@IB_RMPP_FLAG_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"responding %d bytes to %s, attr 0x%x mod 0x%x qkey %x\00", align 1
@ibdebug = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"mad respond pkt\0A\00", align 1
@srcport = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"send failed; %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @server_respond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_respond(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.TYPE_14__, align 4
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = bitcast %struct.TYPE_13__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 56, i1 false)
  %12 = bitcast %struct.TYPE_14__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load i8*, i8** %4, align 8
  %14 = call i32* @umad_get_mad(i8* %13)
  store i32* %14, i32** %9, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call %struct.TYPE_16__* @umad_get_mad_addr(i8* %15)
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %10, align 8
  %17 = icmp ne %struct.TYPE_16__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %139

19:                                               ; preds = %2
  %20 = call i32 @memset(%struct.TYPE_15__* %8, i32 0, i32 40)
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohs(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 5
  store i32 %24, i32* %25, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @ntohl(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @ntohl(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 4
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %19
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i8*, i8** @IB_DEFAULT_QP1_QKEY, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  br label %51

51:                                               ; preds = %48, %44, %19
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  store i64 %54, i64* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @memcpy(i32 %61, i32 %64, i32 16)
  br label %66

66:                                               ; preds = %59, %51
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* @IB_MAD_MGMTCLASS_F, align 4
  %69 = call i8* @mad_get_field(i32* %67, i32 0, i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  store i8* %69, i8** %70, align 8
  %71 = load i32, i32* @IB_MAD_METHOD_GET, align 4
  %72 = load i32, i32* @IB_MAD_RESPONSE, align 4
  %73 = or i32 %71, %72
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i32 %73, i32* %74, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* @IB_MAD_ATTRID_F, align 4
  %77 = call i8* @mad_get_field(i32* %75, i32 0, i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* @IB_MAD_ATTRMOD_F, align 4
  %82 = call i8* @mad_get_field(i32* %80, i32 0, i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* @IB_VEND2_OUI_F, align 4
  %87 = call i8* @mad_get_field(i32* %85, i32 0, i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 5
  store i8* %87, i8** %88, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* @IB_MAD_TRID_F, align 4
  %91 = call i32 @mad_get_field64(i32* %89, i32 0, i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  store i32 %91, i32* %92, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @IB_MAD_SIZE, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %66
  %97 = load i32, i32* @IB_RMPP_FLAG_ACTIVE, align 4
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %66
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @portid2str(%struct.TYPE_15__* %8)
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101, i8* %104, i8* %107, i8* %109)
  %111 = load i8*, i8** %4, align 8
  %112 = call i64 @mad_build_pkt(i8* %111, %struct.TYPE_13__* %6, %struct.TYPE_15__* %8, %struct.TYPE_14__* %7, i32 0)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %99
  store i32 -1, i32* %3, align 4
  br label %139

115:                                              ; preds = %99
  %116 = load i32, i32* @ibdebug, align 4
  %117 = icmp sgt i32 %116, 1
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32, i32* @stderr, align 4
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* @IB_MAD_SIZE, align 4
  %122 = call i32 @xdump(i32 %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %120, i32 %121)
  br label %123

123:                                              ; preds = %118, %115
  %124 = load i32, i32* @srcport, align 4
  %125 = call i32 @mad_rpc_portid(i32 %124)
  %126 = load i32, i32* @srcport, align 4
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @mad_rpc_class_agent(i32 %126, i8* %128)
  %130 = load i8*, i8** %4, align 8
  %131 = load i32, i32* %5, align 4
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @umad_send(i32 %125, i32 %129, i8* %130, i32 %131, i32 %133, i32 0)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %123
  %137 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %139

138:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %136, %114, %18
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @umad_get_mad(i8*) #2

declare dso_local %struct.TYPE_16__* @umad_get_mad_addr(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i8* @ntohl(i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i8* @mad_get_field(i32*, i32, i32) #2

declare dso_local i32 @mad_get_field64(i32*, i32, i32) #2

declare dso_local i32 @DEBUG(i8*, ...) #2

declare dso_local i32 @portid2str(%struct.TYPE_15__*) #2

declare dso_local i64 @mad_build_pkt(i8*, %struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @xdump(i32, i8*, i32*, i32) #2

declare dso_local i64 @umad_send(i32, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @mad_rpc_portid(i32) #2

declare dso_local i32 @mad_rpc_class_agent(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
