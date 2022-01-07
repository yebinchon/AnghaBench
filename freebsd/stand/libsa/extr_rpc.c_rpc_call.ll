; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_rpc.c_rpc_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_rpc.c_rpc_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodesc = type { i32 }
%struct.auth_info = type { i8*, i8* }
%struct.rpc_call = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rpc_reply = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, %struct.auth_info }

@RPCAUTH_NULL = common dso_local global i32 0, align 4
@RPCAUTH_UNIX = common dso_local global i32 0, align 4
@rpc_xid = common dso_local global i32 0, align 4
@RPC_CALL = common dso_local global i32 0, align 4
@RPC_VER2 = common dso_local global i32 0, align 4
@sendudp = common dso_local global i32 0, align 4
@recvrpc = common dso_local global i32 0, align 4
@EBADRPC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"callrpc: error = %ld\0A\00", align 1
@debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_call(%struct.iodesc* %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5, i8** %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.iodesc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.auth_info*, align 8
  %21 = alloca %struct.rpc_call*, align 8
  %22 = alloca %struct.rpc_reply*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.iodesc* %0, %struct.iodesc** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8** %6, i8*** %16, align 8
  store i8** %7, i8*** %17, align 8
  %28 = load %struct.iodesc*, %struct.iodesc** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @rpc_getport(%struct.iodesc* %28, i32 %29, i32 %30)
  store i32 %31, i32* %27, align 4
  %32 = load i32, i32* %27, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %166

35:                                               ; preds = %8
  %36 = load i32, i32* %27, align 4
  %37 = call i32 @htons(i32 %36)
  %38 = load %struct.iodesc*, %struct.iodesc** %10, align 8
  %39 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** %14, align 8
  store i8* %40, i8** %23, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load i64, i64* %15, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %24, align 8
  %44 = load i8*, i8** %23, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 -16
  store i8* %45, i8** %23, align 8
  %46 = load i8*, i8** %23, align 8
  %47 = bitcast i8* %46 to %struct.auth_info*
  store %struct.auth_info* %47, %struct.auth_info** %20, align 8
  %48 = load i32, i32* @RPCAUTH_NULL, align 4
  %49 = call i8* @htonl(i32 %48)
  %50 = load %struct.auth_info*, %struct.auth_info** %20, align 8
  %51 = getelementptr inbounds %struct.auth_info, %struct.auth_info* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.auth_info*, %struct.auth_info** %20, align 8
  %53 = getelementptr inbounds %struct.auth_info, %struct.auth_info* %52, i32 0, i32 0
  store i8* null, i8** %53, align 8
  %54 = load i8*, i8** %23, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 -4
  store i8* %55, i8** %23, align 8
  %56 = load i8*, i8** %23, align 8
  %57 = call i32 @bzero(i8* %56, i32 4)
  %58 = load i8*, i8** %23, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 -16
  store i8* %59, i8** %23, align 8
  %60 = load i8*, i8** %23, align 8
  %61 = bitcast i8* %60 to %struct.auth_info*
  store %struct.auth_info* %61, %struct.auth_info** %20, align 8
  %62 = load i32, i32* @RPCAUTH_UNIX, align 4
  %63 = call i8* @htonl(i32 %62)
  %64 = load %struct.auth_info*, %struct.auth_info** %20, align 8
  %65 = getelementptr inbounds %struct.auth_info, %struct.auth_info* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = call i8* @htonl(i32 4)
  %67 = load %struct.auth_info*, %struct.auth_info** %20, align 8
  %68 = getelementptr inbounds %struct.auth_info, %struct.auth_info* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %23, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 -48
  store i8* %70, i8** %23, align 8
  %71 = load i8*, i8** %23, align 8
  %72 = bitcast i8* %71 to %struct.rpc_call*
  store %struct.rpc_call* %72, %struct.rpc_call** %21, align 8
  %73 = load i32, i32* @rpc_xid, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @rpc_xid, align 4
  %75 = load i32, i32* @rpc_xid, align 4
  %76 = call i8* @htonl(i32 %75)
  %77 = load %struct.rpc_call*, %struct.rpc_call** %21, align 8
  %78 = getelementptr inbounds %struct.rpc_call, %struct.rpc_call* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @RPC_CALL, align 4
  %80 = call i8* @htonl(i32 %79)
  %81 = load %struct.rpc_call*, %struct.rpc_call** %21, align 8
  %82 = getelementptr inbounds %struct.rpc_call, %struct.rpc_call* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @RPC_VER2, align 4
  %84 = call i8* @htonl(i32 %83)
  %85 = load %struct.rpc_call*, %struct.rpc_call** %21, align 8
  %86 = getelementptr inbounds %struct.rpc_call, %struct.rpc_call* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i8* @htonl(i32 %87)
  %89 = load %struct.rpc_call*, %struct.rpc_call** %21, align 8
  %90 = getelementptr inbounds %struct.rpc_call, %struct.rpc_call* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i8* @htonl(i32 %91)
  %93 = load %struct.rpc_call*, %struct.rpc_call** %21, align 8
  %94 = getelementptr inbounds %struct.rpc_call, %struct.rpc_call* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i8* @htonl(i32 %95)
  %97 = load %struct.rpc_call*, %struct.rpc_call** %21, align 8
  %98 = getelementptr inbounds %struct.rpc_call, %struct.rpc_call* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  store i8* null, i8** %25, align 8
  %99 = load %struct.iodesc*, %struct.iodesc** %10, align 8
  %100 = load i32, i32* @sendudp, align 4
  %101 = load i8*, i8** %23, align 8
  %102 = load i8*, i8** %24, align 8
  %103 = load i8*, i8** %23, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* @recvrpc, align 4
  %109 = bitcast %struct.rpc_reply** %22 to i8**
  %110 = call i32 @sendrecv(%struct.iodesc* %99, i32 %100, i8* %101, i32 %107, i32 %108, i8** %25, i8** %109, i32* null)
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %114

113:                                              ; preds = %35
  store i32 -1, i32* %9, align 4
  br label %166

114:                                              ; preds = %35
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = icmp ule i64 %116, 24
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32, i32* @EBADRPC, align 4
  store i32 %119, i32* @errno, align 4
  %120 = load i8*, i8** %25, align 8
  %121 = call i32 @free(i8* %120)
  store i32 -1, i32* %9, align 4
  br label %166

122:                                              ; preds = %114
  %123 = load %struct.rpc_reply*, %struct.rpc_reply** %22, align 8
  %124 = getelementptr inbounds %struct.rpc_reply, %struct.rpc_reply* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store %struct.auth_info* %126, %struct.auth_info** %20, align 8
  %127 = load %struct.auth_info*, %struct.auth_info** %20, align 8
  %128 = getelementptr inbounds %struct.auth_info, %struct.auth_info* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @ntohl(i8* %129)
  store i32 %130, i32* %26, align 4
  %131 = load i32, i32* %26, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %122
  %134 = load i32, i32* @EBADRPC, align 4
  store i32 %134, i32* @errno, align 4
  %135 = load i8*, i8** %25, align 8
  %136 = call i32 @free(i8* %135)
  store i32 -1, i32* %9, align 4
  br label %166

137:                                              ; preds = %122
  %138 = load %struct.rpc_reply*, %struct.rpc_reply** %22, align 8
  %139 = getelementptr inbounds %struct.rpc_reply, %struct.rpc_reply* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @ntohl(i8* %142)
  store i32 %143, i32* %26, align 4
  %144 = load i32, i32* %26, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %137
  %147 = load i32, i32* %26, align 4
  %148 = sext i32 %147 to i64
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %148)
  %150 = load i32, i32* @EBADRPC, align 4
  store i32 %150, i32* @errno, align 4
  %151 = load i8*, i8** %25, align 8
  %152 = call i32 @free(i8* %151)
  store i32 -1, i32* %9, align 4
  br label %166

153:                                              ; preds = %137
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = sub i64 %155, 24
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %19, align 4
  %158 = load %struct.rpc_reply*, %struct.rpc_reply** %22, align 8
  %159 = ptrtoint %struct.rpc_reply* %158 to i64
  %160 = add i64 %159, 24
  %161 = inttoptr i64 %160 to i8*
  %162 = load i8**, i8*** %16, align 8
  store i8* %161, i8** %162, align 8
  %163 = load i8*, i8** %25, align 8
  %164 = load i8**, i8*** %17, align 8
  store i8* %163, i8** %164, align 8
  %165 = load i32, i32* %19, align 4
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %153, %146, %133, %118, %113, %34
  %167 = load i32, i32* %9, align 4
  ret i32 %167
}

declare dso_local i32 @rpc_getport(%struct.iodesc*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @sendrecv(%struct.iodesc*, i32, i8*, i32, i32, i8**, i8**, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ntohl(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
