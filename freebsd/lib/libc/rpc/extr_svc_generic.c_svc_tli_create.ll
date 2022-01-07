; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_generic.c_svc_tli_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_generic.c_svc_tli_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i8*, i32 }
%struct.netconfig = type { i32, i32, i32 }
%struct.t_bind = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.__rpc_sockinfo = type { i32, i64, i32 }
%struct.sockaddr_storage = type { i64, i32 }
%struct.sockaddr = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@RPC_ANYFD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"svc_tli_create: invalid netconfig\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"svc_tli_create: could not open connection for %s\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"svc_tli_create: could not get transport information\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"svc_tli_create: could not bind to anonymous port\00", align 1
@SOMAXCONN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"svc_tli_create: could not bind to requested address\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"svc_tli_create: bad service type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @svc_tli_create(i32 %0, %struct.netconfig* %1, %struct.t_bind* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netconfig*, align 8
  %9 = alloca %struct.t_bind*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.__rpc_sockinfo, align 8
  %15 = alloca %struct.sockaddr_storage, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.netconfig* %1, %struct.netconfig** %8, align 8
  store %struct.t_bind* %2, %struct.t_bind** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %13, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @RPC_ANYFD, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %5
  %22 = load %struct.netconfig*, %struct.netconfig** %8, align 8
  %23 = icmp eq %struct.netconfig* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %187

26:                                               ; preds = %21
  %27 = load %struct.netconfig*, %struct.netconfig** %8, align 8
  %28 = call i32 @__rpc_nconf2fd(%struct.netconfig* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.netconfig*, %struct.netconfig** %8, align 8
  %33 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %187

36:                                               ; preds = %26
  %37 = load %struct.netconfig*, %struct.netconfig** %8, align 8
  %38 = call i32 @__rpc_nconf2sockinfo(%struct.netconfig* %37, %struct.__rpc_sockinfo* %14)
  %39 = load i64, i64* @TRUE, align 8
  store i64 %39, i64* %13, align 8
  br label %47

40:                                               ; preds = %5
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @__rpc_fd2sockinfo(i32 %41, %struct.__rpc_sockinfo* %14)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %187

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i64, i64* %13, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @__rpc_sockisbound(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %106, label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.t_bind*, %struct.t_bind** %9, align 8
  %56 = icmp eq %struct.t_bind* %55, null
  br i1 %56, label %57, label %84

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @bindresvport(i32 %58, i32* null)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = call i32 @memset(%struct.sockaddr_storage* %15, i32 0, i32 16)
  %63 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %14, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %15, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %14, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %15, i32 0, i32 0
  store i64 %67, i64* %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = bitcast %struct.sockaddr_storage* %15 to i8*
  %71 = bitcast i8* %70 to %struct.sockaddr*
  %72 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %14, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i64 @_bind(i32 %69, %struct.sockaddr* %71, i32 %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %61
  %78 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %167

79:                                               ; preds = %61
  br label %80

80:                                               ; preds = %79, %57
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @SOMAXCONN, align 4
  %83 = call i32 @_listen(i32 %81, i32 %82)
  br label %105

84:                                               ; preds = %54
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.t_bind*, %struct.t_bind** %9, align 8
  %87 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to %struct.sockaddr*
  %91 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %14, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i64 @_bind(i32 %85, %struct.sockaddr* %90, i32 %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %167

98:                                               ; preds = %84
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.t_bind*, %struct.t_bind** %9, align 8
  %101 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @_listen(i32 %99, i32 %103)
  br label %105

105:                                              ; preds = %98, %80
  br label %106

106:                                              ; preds = %105, %50
  %107 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %14, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  switch i32 %108, label %138 [
    i32 128, label %109
    i32 129, label %133
  ]

109:                                              ; preds = %106
  store i32 16, i32* %16, align 4
  %110 = load i32, i32* %7, align 4
  %111 = bitcast %struct.sockaddr_storage* %15 to i8*
  %112 = bitcast i8* %111 to %struct.sockaddr*
  %113 = call i32 @_getpeername(i32 %110, %struct.sockaddr* %112, i32* %16)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call %struct.TYPE_10__* @svc_fd_create(i32 %116, i32 %117, i32 %118)
  store %struct.TYPE_10__* %119, %struct.TYPE_10__** %12, align 8
  br label %125

120:                                              ; preds = %109
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call %struct.TYPE_10__* @svc_vc_create(i32 %121, i32 %122, i32 %123)
  store %struct.TYPE_10__* %124, %struct.TYPE_10__** %12, align 8
  br label %125

125:                                              ; preds = %120, %115
  %126 = load %struct.netconfig*, %struct.netconfig** %8, align 8
  %127 = icmp ne %struct.netconfig* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %130 = icmp ne %struct.TYPE_10__* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %128, %125
  br label %140

132:                                              ; preds = %128
  br label %140

133:                                              ; preds = %106
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call %struct.TYPE_10__* @svc_dg_create(i32 %134, i32 %135, i32 %136)
  store %struct.TYPE_10__* %137, %struct.TYPE_10__** %12, align 8
  br label %140

138:                                              ; preds = %106
  %139 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %167

140:                                              ; preds = %133, %132, %131
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %142 = icmp eq %struct.TYPE_10__* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %167

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %14, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @__rpc_socktype2seman(i32 %146)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 8
  %150 = load %struct.netconfig*, %struct.netconfig** %8, align 8
  %151 = icmp ne %struct.netconfig* %150, null
  br i1 %151, label %152, label %165

152:                                              ; preds = %144
  %153 = load %struct.netconfig*, %struct.netconfig** %8, align 8
  %154 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @strdup(i32 %155)
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  %159 = load %struct.netconfig*, %struct.netconfig** %8, align 8
  %160 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @strdup(i32 %161)
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %152, %144
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %166, %struct.TYPE_10__** %6, align 8
  br label %187

167:                                              ; preds = %143, %138, %96, %77
  %168 = load i64, i64* %13, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @_close(i32 %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %175 = icmp ne %struct.TYPE_10__* %174, null
  br i1 %175, label %176, label %186

176:                                              ; preds = %173
  %177 = load i64, i64* %13, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* @RPC_ANYFD, align 4
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %179, %176
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %185 = call i32 @SVC_DESTROY(%struct.TYPE_10__* %184)
  br label %186

186:                                              ; preds = %183, %173
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %187

187:                                              ; preds = %186, %165, %44, %31, %24
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  ret %struct.TYPE_10__* %188
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @__rpc_nconf2fd(%struct.netconfig*) #1

declare dso_local i32 @__rpc_nconf2sockinfo(%struct.netconfig*, %struct.__rpc_sockinfo*) #1

declare dso_local i32 @__rpc_fd2sockinfo(i32, %struct.__rpc_sockinfo*) #1

declare dso_local i32 @__rpc_sockisbound(i32) #1

declare dso_local i64 @bindresvport(i32, i32*) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @_bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @_listen(i32, i32) #1

declare dso_local i32 @_getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local %struct.TYPE_10__* @svc_fd_create(i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @svc_vc_create(i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @svc_dg_create(i32, i32, i32) #1

declare dso_local i32 @__rpc_socktype2seman(i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i32 @SVC_DESTROY(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
