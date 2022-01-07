; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_rpc.c_mad_rpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_rpc.c_mad_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmad_port = type { i32*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@IB_MAD_RPC_VERSION_MASK = common dso_local global i32 0, align 4
@IB_MAD_RPC_VERSION1 = common dso_local global i32 0, align 4
@IB_MAD_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"_do_madrpc failed; dport (%s)\00", align 1
@IB_DRSMP_STATUS_F = common dso_local global i32 0, align 4
@IB_MAD_STS_REDIRECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"MAD completed with error status 0x%x; dport (%s)\00", align 1
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ibdebug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"data offs %d sz %d\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"mad data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mad_rpc(%struct.ibmad_port* %0, %struct.TYPE_6__* %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ibmad_port*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [1024 x i32], align 16
  %15 = alloca [1024 x i32], align 16
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32, align 4
  store %struct.ibmad_port* %0, %struct.ibmad_port** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = bitcast %struct.TYPE_6__* %19 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %17, align 8
  store i32 0, i32* %18, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IB_MAD_RPC_VERSION_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @IB_MAD_RPC_VERSION1, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %5
  br label %32

32:                                               ; preds = %105, %31
  store i32 0, i32* %13, align 4
  %33 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %34 = call i64 (...) @umad_size()
  %35 = load i64, i64* @IB_MAD_SIZE, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @memset(i32* %33, i32 0, i64 %36)
  %38 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @mad_build_pkt(i32* %38, %struct.TYPE_6__* %39, i32* %40, i32 0, i8* %41)
  store i32 %42, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i8* null, i8** %6, align 8
  br label %169

45:                                               ; preds = %32
  %46 = load %struct.ibmad_port*, %struct.ibmad_port** %7, align 8
  %47 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %50 = getelementptr inbounds [1024 x i32], [1024 x i32]* %15, i64 0, i64 0
  %51 = load %struct.ibmad_port*, %struct.ibmad_port** %7, align 8
  %52 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 255
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.ibmad_port*, %struct.ibmad_port** %7, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mad_get_timeout(%struct.ibmad_port* %62, i32 %65)
  %67 = load %struct.ibmad_port*, %struct.ibmad_port** %7, align 8
  %68 = call i32 @mad_get_retries(%struct.ibmad_port* %67)
  %69 = call i32 @_do_madrpc(i32 %48, i32* %49, i32* %50, i32 %60, i32 %61, i32 %66, i32 %68, i32* %18)
  store i32 %69, i32* %13, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %45
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IB_MAD_RPC_VERSION_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @IB_MAD_RPC_VERSION1, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load i32, i32* %18, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %71
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @portid2str(i32* %84)
  %86 = call i32 (i8*, i32, ...) @IBWARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %85)
  store i8* null, i8** %6, align 8
  br label %169

87:                                               ; preds = %45
  %88 = getelementptr inbounds [1024 x i32], [1024 x i32]* %15, i64 0, i64 0
  %89 = call i32* @umad_get_mad(i32* %88)
  store i32* %89, i32** %16, align 8
  %90 = load i32*, i32** %16, align 8
  %91 = load i32, i32* @IB_DRSMP_STATUS_F, align 4
  %92 = call i32 @mad_get_field(i32* %90, i32 0, i32 %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @IB_MAD_STS_REDIRECT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %87
  %97 = load i32*, i32** %9, align 8
  %98 = load i32*, i32** %16, align 8
  %99 = call i64 @redirect_port(i32* %97, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %106

102:                                              ; preds = %96
  br label %104

103:                                              ; preds = %87
  br label %106

104:                                              ; preds = %102
  br label %105

105:                                              ; preds = %104
  br i1 true, label %32, label %106

106:                                              ; preds = %105, %103, %101
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @IB_MAD_RPC_VERSION_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @IB_MAD_RPC_VERSION1, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load i32, i32* %18, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %106
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load i32, i32* %12, align 4
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @portid2str(i32* %126)
  %128 = call i32 @ERRS(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %127)
  %129 = load i32, i32* @EIO, align 4
  store i32 %129, i32* @errno, align 4
  store i8* null, i8** %6, align 8
  br label %169

130:                                              ; preds = %118
  %131 = load i64, i64* @ibdebug, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %130
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8*, i32, ...) @IBWARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %136, i32 %139)
  %141 = load i32, i32* @stderr, align 4
  %142 = load i32*, i32** %16, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @xdump(i32 %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %147, i32 %150)
  br label %152

152:                                              ; preds = %133, %130
  %153 = load i8*, i8** %11, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %167

155:                                              ; preds = %152
  %156 = load i8*, i8** %11, align 8
  %157 = load i32*, i32** %16, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %157, i64 %161
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @memcpy(i8* %156, i32* %162, i32 %165)
  br label %167

167:                                              ; preds = %155, %152
  %168 = load i8*, i8** %11, align 8
  store i8* %168, i8** %6, align 8
  br label %169

169:                                              ; preds = %167, %124, %83, %44
  %170 = load i8*, i8** %6, align 8
  ret i8* %170
}

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @umad_size(...) #1

declare dso_local i32 @mad_build_pkt(i32*, %struct.TYPE_6__*, i32*, i32, i8*) #1

declare dso_local i32 @_do_madrpc(i32, i32*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mad_get_timeout(%struct.ibmad_port*, i32) #1

declare dso_local i32 @mad_get_retries(%struct.ibmad_port*) #1

declare dso_local i32 @IBWARN(i8*, i32, ...) #1

declare dso_local i32 @portid2str(i32*) #1

declare dso_local i32* @umad_get_mad(i32*) #1

declare dso_local i32 @mad_get_field(i32*, i32, i32) #1

declare dso_local i64 @redirect_port(i32*, i32*) #1

declare dso_local i32 @ERRS(i8*, i32, i32) #1

declare dso_local i32 @xdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
