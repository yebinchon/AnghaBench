; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ftp.c_active_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ftp.c_active_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@myctladdr = common dso_local global %struct.TYPE_11__* null, align 8
@data_addr = common dso_local global %struct.TYPE_11__* null, align 8
@sendport = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@options = common dso_local global i32 0, align 4
@SO_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"inet_ntop failed\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"bad address family %d\00", align 1
@verbose = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"EPRT |%d|%s|%d|\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"remote server doesn't support EPRT\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"PORT %d,%d,%d,%d,%d,%d\00", align 1
@COMPLETE = common dso_local global i32 0, align 4
@IPTOS_THROUGHPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @active_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @active_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %166, %0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @myctladdr, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** @data_addr, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @data_addr, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** @myctladdr, align 8
  %19 = call i32 @socket_get_address(%struct.TYPE_11__* %18)
  %20 = load i32, i32* @sendport, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %26

23:                                               ; preds = %11
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** @myctladdr, align 8
  %25 = call i32 @socket_get_port(%struct.TYPE_11__* %24)
  br label %26

26:                                               ; preds = %23, %22
  %27 = phi i32 [ 0, %22 ], [ %25, %23 ]
  %28 = call i32 @socket_set_address_and_port(%struct.TYPE_11__* %17, i32 %19, i32 %27)
  %29 = load i32, i32* @data, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @data, align 4
  %33 = call i32 @close(i32 %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @data_addr, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SOCK_STREAM, align 4
  %39 = call i32 @socket(i32 %37, i32 %38, i32 0)
  store i32 %39, i32* @data, align 4
  %40 = load i32, i32* @data, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 1, i32* @sendport, align 4
  br label %47

47:                                               ; preds = %46, %42
  store i32 1, i32* %1, align 4
  br label %189

48:                                               ; preds = %34
  %49 = load i32, i32* @sendport, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @data, align 4
  %53 = call i32 @socket_set_reuseaddr(i32 %52, i32 1)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* @data, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @data_addr, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** @data_addr, align 8
  %58 = call i32 @socket_sockaddr_size(%struct.TYPE_11__* %57)
  %59 = call i64 @bind(i32 %55, %struct.TYPE_11__* %56, i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %182

63:                                               ; preds = %54
  %64 = load i32, i32* @options, align 4
  %65 = load i32, i32* @SO_DEBUG, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @data, align 4
  %70 = call i32 @socket_set_debug(i32 %69)
  br label %71

71:                                               ; preds = %68, %63
  store i32 4, i32* %3, align 4
  %72 = load i32, i32* @data, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** @data_addr, align 8
  %74 = call i64 @getsockname(i32 %72, %struct.TYPE_11__* %73, i32* %3)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %182

78:                                               ; preds = %71
  %79 = load i32, i32* @data, align 4
  %80 = call i64 @listen(i32 %79, i32 1)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %78
  %85 = load i32, i32* @sendport, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %177

87:                                               ; preds = %84
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** @data_addr, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** @data_addr, align 8
  %92 = call i32 @socket_get_address(%struct.TYPE_11__* %91)
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %94 = call i32* @inet_ntop(i32 %90, i32 %92, i8* %93, i32 256)
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %87
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** @data_addr, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  switch i32 %101, label %103 [
    i32 129, label %102
  ]

102:                                              ; preds = %98
  store i32 1, i32* %6, align 4
  br label %108

103:                                              ; preds = %98
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** @data_addr, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %103, %102
  %109 = load i32, i32* @verbose, align 4
  store i32 %109, i32* %7, align 4
  %110 = load i64, i64* @debug, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 -1, i32* @verbose, align 4
  br label %113

113:                                              ; preds = %112, %108
  %114 = load i32, i32* %6, align 4
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** @data_addr, align 8
  %117 = call i32 @socket_get_port(%struct.TYPE_11__* %116)
  %118 = call i32 @ntohs(i32 %117)
  %119 = call i32 (i8*, i32, ...) @command(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %114, i8* %115, i32 %118)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* @verbose, align 4
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @ERROR, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %172

124:                                              ; preds = %113
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** @data_addr, align 8
  %126 = bitcast %struct.TYPE_11__* %125 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %126, %struct.sockaddr_in** %8, align 8
  %127 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %128 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ntohl(i32 %130)
  store i32 %131, i32* %9, align 4
  %132 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %133 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ntohs(i32 %134)
  store i32 %135, i32* %10, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** @data_addr, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 129
  br i1 %139, label %140, label %142

140:                                              ; preds = %124
  %141 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %182

142:                                              ; preds = %124
  %143 = load i32, i32* %9, align 4
  %144 = lshr i32 %143, 24
  %145 = and i32 %144, 255
  %146 = load i32, i32* %9, align 4
  %147 = lshr i32 %146, 16
  %148 = and i32 %147, 255
  %149 = load i32, i32* %9, align 4
  %150 = lshr i32 %149, 8
  %151 = and i32 %150, 255
  %152 = load i32, i32* %9, align 4
  %153 = and i32 %152, 255
  %154 = load i32, i32* %10, align 4
  %155 = lshr i32 %154, 8
  %156 = and i32 %155, 255
  %157 = load i32, i32* %10, align 4
  %158 = and i32 %157, 255
  %159 = call i32 (i8*, i32, ...) @command(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %145, i32 %148, i32 %151, i32 %153, i32 %156, i32 %158)
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @ERROR, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %142
  %164 = load i32, i32* @sendport, align 4
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i32 0, i32* @sendport, align 4
  store i32 1, i32* %2, align 4
  br label %11

167:                                              ; preds = %163, %142
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* @COMPLETE, align 4
  %170 = icmp ne i32 %168, %169
  %171 = zext i1 %170 to i32
  store i32 %171, i32* %1, align 4
  br label %189

172:                                              ; preds = %113
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* @COMPLETE, align 4
  %175 = icmp ne i32 %173, %174
  %176 = zext i1 %175 to i32
  store i32 %176, i32* %1, align 4
  br label %189

177:                                              ; preds = %84
  %178 = load i32, i32* %2, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  store i32 1, i32* @sendport, align 4
  br label %181

181:                                              ; preds = %180, %177
  store i32 0, i32* %1, align 4
  br label %189

182:                                              ; preds = %140, %76, %61
  %183 = load i32, i32* @data, align 4
  %184 = call i32 @close(i32 %183)
  store i32 -1, i32* @data, align 4
  %185 = load i32, i32* %2, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  store i32 1, i32* @sendport, align 4
  br label %188

188:                                              ; preds = %187, %182
  store i32 1, i32* %1, align 4
  br label %189

189:                                              ; preds = %188, %181, %172, %167, %47
  %190 = load i32, i32* %1, align 4
  ret i32 %190
}

declare dso_local i32 @socket_set_address_and_port(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @socket_get_address(%struct.TYPE_11__*) #1

declare dso_local i32 @socket_get_port(%struct.TYPE_11__*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @socket_set_reuseaddr(i32, i32) #1

declare dso_local i64 @bind(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @socket_sockaddr_size(%struct.TYPE_11__*) #1

declare dso_local i32 @socket_set_debug(i32) #1

declare dso_local i64 @getsockname(i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32* @inet_ntop(i32, i32, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @command(i8*, i32, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
