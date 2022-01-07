; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_generic.c_clnt_tli_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_generic.c_clnt_tli_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.netconfig = type { i64, i32, i32, i32 }
%struct.netbuf = type { i64 }
%struct.__rpc_sockinfo = type { i64, i32 }
%struct.sockaddr = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@RPC_ANYFD = common dso_local global i32 0, align 4
@RPC_UNKNOWNPROTO = common dso_local global i8* null, align 8
@rpc_createerr = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@__rpc_minfd = external dso_local global i32, align 4
@TRUE = common dso_local global i64 0, align 8
@RPC_UNKNOWNHOST = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"inet\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CLSET_FD_CLOSE = common dso_local global i32 0, align 4
@RPC_SYSTEMERROR = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @clnt_tli_create(i32 %0, %struct.netconfig* %1, %struct.netbuf* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.netconfig*, align 8
  %11 = alloca %struct.netbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.__rpc_sockinfo, align 8
  store i32 %0, i32* %9, align 4
  store %struct.netconfig* %1, %struct.netconfig** %10, align 8
  store %struct.netbuf* %2, %struct.netbuf** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %17, align 8
  store i32 1, i32* %19, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @RPC_ANYFD, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %7
  %26 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %27 = icmp eq %struct.netconfig* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i8*, i8** @RPC_UNKNOWNPROTO, align 8
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 1), align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  br label %166

30:                                               ; preds = %25
  %31 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %32 = call i32 @__rpc_nconf2fd(%struct.netconfig* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %156

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @__rpc_minfd, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @__rpc_raise_fd(i32 %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i64, i64* @TRUE, align 8
  store i64 %44, i64* %17, align 8
  %45 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %46 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %18, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @__rpc_fd2sockinfo(i32 %48, %struct.__rpc_sockinfo* %20)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  br label %156

52:                                               ; preds = %43
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @bindresvport(i32 %53, i32* null)
  br label %69

55:                                               ; preds = %7
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @__rpc_fd2sockinfo(i32 %56, %struct.__rpc_sockinfo* %20)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %156

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %20, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @__rpc_socktype2seman(i32 %62)
  store i64 %63, i64* %18, align 8
  %64 = load i64, i64* %18, align 8
  %65 = icmp eq i64 %64, -1
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i8*, i8** @RPC_UNKNOWNPROTO, align 8
  store i8* %67, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 1), align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  br label %166

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %52
  %70 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %20, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.netbuf*, %struct.netbuf** %11, align 8
  %73 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.sockaddr*
  %76 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %71, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i8*, i8** @RPC_UNKNOWNHOST, align 8
  store i8* %80, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 1), align 8
  br label %159

81:                                               ; preds = %69
  %82 = load i64, i64* %18, align 8
  switch i64 %82, label %121 [
    i64 129, label %83
    i64 128, label %91
    i64 130, label %113
  ]

83:                                               ; preds = %81
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.netbuf*, %struct.netbuf** %11, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %15, align 4
  %90 = call %struct.TYPE_9__* @clnt_vc_create(i32 %84, %struct.netbuf* %85, i32 %86, i32 %87, i32 %88, i32 %89)
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %16, align 8
  br label %122

91:                                               ; preds = %81
  %92 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %93 = icmp ne %struct.netconfig* %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %96 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @strcmp(i32 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @IPPROTO_TCP, align 4
  %103 = load i32, i32* @TCP_NODELAY, align 4
  %104 = call i32 @_setsockopt(i32 %101, i32 %102, i32 %103, i32* %19, i32 4)
  br label %105

105:                                              ; preds = %100, %94, %91
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.netbuf*, %struct.netbuf** %11, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %15, align 4
  %112 = call %struct.TYPE_9__* @clnt_vc_create(i32 %106, %struct.netbuf* %107, i32 %108, i32 %109, i32 %110, i32 %111)
  store %struct.TYPE_9__* %112, %struct.TYPE_9__** %16, align 8
  br label %122

113:                                              ; preds = %81
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.netbuf*, %struct.netbuf** %11, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = call %struct.TYPE_9__* @clnt_dg_create(i32 %114, %struct.netbuf* %115, i32 %116, i32 %117, i32 %118, i32 %119)
  store %struct.TYPE_9__* %120, %struct.TYPE_9__** %16, align 8
  br label %122

121:                                              ; preds = %81
  br label %156

122:                                              ; preds = %113, %105, %83
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %124 = icmp eq %struct.TYPE_9__* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %159

126:                                              ; preds = %122
  %127 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %128 = icmp ne %struct.netconfig* %127, null
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %131 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @strdup(i32 %132)
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  %136 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %137 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i8* @strdup(i32 %138)
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  br label %147

142:                                              ; preds = %126
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %144, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %146, align 8
  br label %147

147:                                              ; preds = %142, %129
  %148 = load i64, i64* %17, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %152 = load i32, i32* @CLSET_FD_CLOSE, align 4
  %153 = call i32 @CLNT_CONTROL(%struct.TYPE_9__* %151, i32 %152, i32* null)
  br label %154

154:                                              ; preds = %150, %147
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %155, %struct.TYPE_9__** %8, align 8
  br label %166

156:                                              ; preds = %121, %59, %51, %35
  %157 = load i8*, i8** @RPC_SYSTEMERROR, align 8
  store i8* %157, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 1), align 8
  %158 = load i32, i32* @errno, align 4
  store i32 %158, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 0, i32 0), align 8
  br label %159

159:                                              ; preds = %156, %125, %79
  %160 = load i64, i64* %17, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @_close(i32 %163)
  br label %165

165:                                              ; preds = %162, %159
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  br label %166

166:                                              ; preds = %165, %154, %66, %28
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  ret %struct.TYPE_9__* %167
}

declare dso_local i32 @__rpc_nconf2fd(%struct.netconfig*) #1

declare dso_local i32 @__rpc_raise_fd(i32) #1

declare dso_local i32 @__rpc_fd2sockinfo(i32, %struct.__rpc_sockinfo*) #1

declare dso_local i32 @bindresvport(i32, i32*) #1

declare dso_local i64 @__rpc_socktype2seman(i32) #1

declare dso_local %struct.TYPE_9__* @clnt_vc_create(i32, %struct.netbuf*, i32, i32, i32, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @_setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local %struct.TYPE_9__* @clnt_dg_create(i32, %struct.netbuf*, i32, i32, i32, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @CLNT_CONTROL(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
