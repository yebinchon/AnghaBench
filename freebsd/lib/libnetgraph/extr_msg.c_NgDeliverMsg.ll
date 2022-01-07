; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnetgraph/extr_msg.c_NgDeliverMsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnetgraph/extr_msg.c_NgDeliverMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.sockaddr_ng = type { i32, i32, i32 }
%struct.pollfd = type { i32, i64, i32 }
%struct.sockaddr = type { i32 }

@NG_PATHSIZ = common dso_local global i32 0, align 4
@NGSA_OVERHEAD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@_gNgDebugLevel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@AF_NETGRAPH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"SENDING %s:\00", align 1
@NGF_RESP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"RESPONSE\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"MESSAGE\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"sendto(%s)\00", align 1
@NGM_HASREPLY = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@INFTIM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.ng_mesg*, i8*, i64)* @NgDeliverMsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NgDeliverMsg(i32 %0, i8* %1, %struct.ng_mesg* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sockaddr_ng*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ng_mesg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.pollfd, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.ng_mesg* %2, %struct.ng_mesg** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %20 = load i32, i32* @NG_PATHSIZ, align 4
  %21 = load i32, i32* @NGSA_OVERHEAD, align 4
  %22 = add nsw i32 %20, %21
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = bitcast i32* %25 to %struct.sockaddr_ng*
  store %struct.sockaddr_ng* %26, %struct.sockaddr_ng** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %29, %5
  %31 = load i64, i64* %10, align 8
  %32 = add i64 24, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32* @malloc(i32 %33)
  store i32* %34, i32** %14, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32, i32* @errno, align 4
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* @_gNgDebugLevel, align 4
  %39 = icmp sge i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (i8*, ...) @NGLOG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36
  store i32 -1, i32* %17, align 4
  br label %156

43:                                               ; preds = %30
  %44 = load i32*, i32** %14, align 8
  %45 = bitcast i32* %44 to %struct.ng_mesg*
  store %struct.ng_mesg* %45, %struct.ng_mesg** %15, align 8
  %46 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %47 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %48 = bitcast %struct.ng_mesg* %46 to i8*
  %49 = bitcast %struct.ng_mesg* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 24, i1 false)
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %52 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  %54 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %55 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @memcpy(i32 %56, i8* %57, i64 %58)
  %60 = load i32, i32* @AF_NETGRAPH, align 4
  %61 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %13, align 8
  %62 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %13, align 8
  %64 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* @NG_PATHSIZ, align 4
  %68 = call i32 @strlcpy(i32 %65, i8* %66, i32 %67)
  %69 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %13, align 8
  %70 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strlen(i32 %71)
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* @NGSA_OVERHEAD, align 4
  %75 = add nsw i32 %73, %74
  %76 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %13, align 8
  %77 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @_gNgDebugLevel, align 4
  %79 = icmp sge i32 %78, 2
  br i1 %79, label %80, label %98

80:                                               ; preds = %43
  %81 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %82 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @NGF_RESP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %90 = call i32 @NGLOGX(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %89)
  %91 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %13, align 8
  %92 = call i32 @_NgDebugSockaddr(%struct.sockaddr_ng* %91)
  %93 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %94 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %13, align 8
  %95 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @_NgDebugMsg(%struct.ng_mesg* %93, i32 %96)
  br label %98

98:                                               ; preds = %80, %43
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %101 = load i64, i64* %10, align 8
  %102 = add i64 24, %101
  %103 = trunc i64 %102 to i32
  %104 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %13, align 8
  %105 = bitcast %struct.sockaddr_ng* %104 to %struct.sockaddr*
  %106 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %13, align 8
  %107 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @sendto(i32 %99, %struct.ng_mesg* %100, i32 %103, i32 0, %struct.sockaddr* %105, i32 %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %98
  %112 = load i32, i32* @errno, align 4
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* @_gNgDebugLevel, align 4
  %114 = icmp sge i32 %113, 1
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %13, align 8
  %117 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, ...) @NGLOG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %115, %111
  store i32 -1, i32* %17, align 4
  br label %156

121:                                              ; preds = %98
  %122 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %123 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @NGM_HASREPLY, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %155

129:                                              ; preds = %121
  %130 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %131 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @NGF_RESP, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %155, label %137

137:                                              ; preds = %129
  %138 = load i32, i32* %6, align 4
  %139 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %18, i32 0, i32 0
  store i32 %138, i32* %139, align 8
  %140 = load i32, i32* @POLLIN, align 4
  %141 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %18, i32 0, i32 2
  store i32 %140, i32* %141, align 8
  %142 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %18, i32 0, i32 1
  store i64 0, i64* %142, align 8
  %143 = load i32, i32* @INFTIM, align 4
  %144 = call i32 @poll(%struct.pollfd* %18, i32 1, i32 %143)
  store i32 %144, i32* %19, align 4
  %145 = load i32, i32* %19, align 4
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %154

147:                                              ; preds = %137
  %148 = load i32, i32* @errno, align 4
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* @_gNgDebugLevel, align 4
  %150 = icmp sge i32 %149, 1
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = call i32 (i8*, ...) @NGLOG(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %147
  store i32 -1, i32* %17, align 4
  br label %154

154:                                              ; preds = %153, %137
  br label %155

155:                                              ; preds = %154, %129, %121
  br label %156

156:                                              ; preds = %155, %120, %42
  %157 = load i32*, i32** %14, align 8
  %158 = call i32 @free(i32* %157)
  %159 = load i32, i32* %16, align 4
  store i32 %159, i32* @errno, align 4
  %160 = load i32, i32* %17, align 4
  %161 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %161)
  ret i32 %160
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @NGLOG(i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @memcpy(i32, i8*, i64) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @NGLOGX(i8*, i8*) #2

declare dso_local i32 @_NgDebugSockaddr(%struct.sockaddr_ng*) #2

declare dso_local i32 @_NgDebugMsg(%struct.ng_mesg*, i32) #2

declare dso_local i64 @sendto(i32, %struct.ng_mesg*, i32, i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
