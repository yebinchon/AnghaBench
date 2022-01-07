; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_entropy.c_isc_entropy_createfilesource.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_entropy.c_isc_entropy_createfilesource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.stat = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.sockaddr_un*, i8*, i64, %struct.TYPE_15__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.sockaddr_un = type { i32, i32*, i32 }
%struct.sockaddr = type { i32 }

@ISC_FALSE = common dso_local global i8* null, align 8
@errno = common dso_local global i64 0, align 8
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PORT_NONBLOCK = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@AF_UNIX = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i64 0, align 8
@ISC_TRUE = common dso_local global i8* null, align 8
@ISC_R_NOMEMORY = common dso_local global i64 0, align 8
@SOURCE_MAGIC = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@isc_usocketsource_connected = common dso_local global i32 0, align 4
@isc_usocketsource_connecting = common dso_local global i32 0, align 4
@ENTROPY_SOURCETYPE_USOCKET = common dso_local global i32 0, align 4
@ENTROPY_SOURCETYPE_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_entropy_createfilesource(%struct.TYPE_15__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.sockaddr_un, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** @ISC_FALSE, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** @ISC_FALSE, align 8
  store i8* %14, i8** %9, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = call i32 @VALID_ENTROPY(%struct.TYPE_15__* %15)
  %17 = call i32 @REQUIRE(i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @REQUIRE(i32 %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = call i32 @LOCK(i32* %23)
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @stat(i8* %25, %struct.stat* %7)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i64, i64* @errno, align 8
  %30 = call i64 @isc__errno2result(i64 %29)
  store i64 %30, i64* %10, align 8
  br label %171

31:                                               ; preds = %2
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @PF_UNIX, align 4
  %36 = load i32, i32* @SOCK_STREAM, align 4
  %37 = call i32 @socket(i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %6, align 4
  br label %44

38:                                               ; preds = %31
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @O_RDONLY, align 4
  %41 = load i32, i32* @PORT_NONBLOCK, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @open(i8* %39, i32 %42, i32 0)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i64, i64* @errno, align 8
  %49 = call i64 @isc__errno2result(i64 %48)
  store i64 %49, i64* %10, align 8
  br label %171

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @make_nonblock(i32 %51)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @ISC_R_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %168

57:                                               ; preds = %50
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %86

60:                                               ; preds = %57
  %61 = call i32 @memset(%struct.sockaddr_un* %12, i32 0, i32 24)
  %62 = load i32, i32* @AF_UNIX, align 4
  %63 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %12, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %12, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @strncpy(i32* %65, i8* %66, i32 8)
  %68 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %12, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 7
  store i32 48, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = bitcast %struct.sockaddr_un* %12 to %struct.sockaddr*
  %73 = call i64 @connect(i32 %71, %struct.sockaddr* %72, i32 24)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %60
  %76 = load i64, i64* @errno, align 8
  %77 = load i64, i64* @EINPROGRESS, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i64, i64* @errno, align 8
  %81 = call i64 @isc__errno2result(i64 %80)
  store i64 %81, i64* %10, align 8
  br label %168

82:                                               ; preds = %75
  br label %85

83:                                               ; preds = %60
  %84 = load i8*, i8** @ISC_TRUE, align 8
  store i8* %84, i8** %9, align 8
  br label %85

85:                                               ; preds = %83, %82
  br label %86

86:                                               ; preds = %85, %57
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.TYPE_14__* @isc_mem_get(i32 %89, i32 80)
  store %struct.TYPE_14__* %90, %struct.TYPE_14__** %11, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %92 = icmp eq %struct.TYPE_14__* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i64, i64* @ISC_R_NOMEMORY, align 8
  store i64 %94, i64* %10, align 8
  br label %168

95:                                               ; preds = %86
  %96 = load i32, i32* @SOURCE_MAGIC, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 5
  store %struct.TYPE_15__* %99, %struct.TYPE_15__** %101, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 4
  store i64 0, i64* %103, align 8
  %104 = load i8*, i8** @ISC_FALSE, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = load %struct.sockaddr_un*, %struct.sockaddr_un** %108, align 8
  %110 = call i32 @memset(%struct.sockaddr_un* %109, i32 0, i32 8)
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %112 = load i32, i32* @link, align 4
  %113 = call i32 @ISC_LINK_INIT(%struct.TYPE_14__* %111, i32 %112)
  %114 = load i8*, i8** %8, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %144

116:                                              ; preds = %95
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  store i32 %117, i32* %121, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load i32, i32* @isc_usocketsource_connected, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  store i32 %125, i32* %129, align 8
  br label %136

130:                                              ; preds = %116
  %131 = load i32, i32* @isc_usocketsource_connecting, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  store i32 %131, i32* %135, align 8
  br label %136

136:                                              ; preds = %130, %124
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  store i64 0, i64* %140, align 8
  %141 = load i32, i32* @ENTROPY_SOURCETYPE_USOCKET, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  br label %153

144:                                              ; preds = %95
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  store i32 %145, i32* %149, align 8
  %150 = load i32, i32* @ENTROPY_SOURCETYPE_FILE, align 4
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %144, %136
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %158 = load i32, i32* @link, align 4
  %159 = call i32 @ISC_LIST_APPEND(i32 %156, %struct.TYPE_14__* %157, i32 %158)
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = call i32 @UNLOCK(i32* %165)
  %167 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %167, i64* %3, align 8
  br label %176

168:                                              ; preds = %93, %79, %56
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @close(i32 %169)
  br label %171

171:                                              ; preds = %168, %47, %28
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = call i32 @UNLOCK(i32* %173)
  %175 = load i64, i64* %10, align 8
  store i64 %175, i64* %3, align 8
  br label %176

176:                                              ; preds = %171, %153
  %177 = load i64, i64* %3, align 8
  ret i64 %177
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_ENTROPY(%struct.TYPE_15__*) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @isc__errno2result(i64) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @make_nonblock(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @strncpy(i32*, i8*, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local %struct.TYPE_14__* @isc_mem_get(i32, i32) #1

declare dso_local i32 @ISC_LINK_INIT(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ISC_LIST_APPEND(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
