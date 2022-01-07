; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_accept.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32, i32, i32, i8*, i64, i32, i8*, i64, i32, i32 }
%struct.socket_info = type { i32, i32, i32, i8*, i64, i32, i8*, i64, i32, i32 }
%struct.sockaddr_un = type { i32, i32, i32, i8*, i64, i32, i8*, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@sockets = common dso_local global i32 0, align 4
@SWRAP_ACCEPT_SEND = common dso_local global i32 0, align 4
@SWRAP_ACCEPT_RECV = common dso_local global i32 0, align 4
@SWRAP_ACCEPT_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swrap_accept(i32 %0, %struct.sockaddr* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.socket_info*, align 8
  %9 = alloca %struct.socket_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_un, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sockaddr_un, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sockaddr*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 64, i64* %12, align 8
  store i64 64, i64* %14, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.socket_info* @find_socket_info(i32 %19)
  store %struct.socket_info* %20, %struct.socket_info** %8, align 8
  %21 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %22 = icmp ne %struct.socket_info* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %26 = bitcast %struct.sockaddr* %25 to %struct.socket_info*
  %27 = load i64*, i64** %7, align 8
  %28 = call i32 @real_accept(i32 %24, %struct.socket_info* %26, i64* %27)
  store i32 %28, i32* %4, align 4
  br label %206

29:                                               ; preds = %3
  %30 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %31 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @socket_length(i32 %32)
  store i64 %33, i64* %16, align 8
  %34 = load i64, i64* %16, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %206

38:                                               ; preds = %29
  %39 = load i64, i64* %16, align 8
  %40 = trunc i64 %39 to i32
  %41 = call %struct.socket_info* @malloc(i32 %40)
  %42 = bitcast %struct.socket_info* %41 to %struct.sockaddr*
  store %struct.sockaddr* %42, %struct.sockaddr** %15, align 8
  %43 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %44 = icmp eq %struct.sockaddr* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %206

46:                                               ; preds = %38
  %47 = bitcast %struct.sockaddr_un* %11 to %struct.socket_info*
  %48 = call i32 @memset(%struct.socket_info* %47, i32 0, i32 64)
  %49 = bitcast %struct.sockaddr_un* %13 to %struct.socket_info*
  %50 = call i32 @memset(%struct.socket_info* %49, i32 0, i32 64)
  %51 = load i32, i32* %5, align 4
  %52 = bitcast %struct.sockaddr_un* %11 to %struct.sockaddr*
  %53 = bitcast %struct.sockaddr* %52 to %struct.socket_info*
  %54 = call i32 @real_accept(i32 %51, %struct.socket_info* %53, i64* %12)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %59 = bitcast %struct.sockaddr* %58 to %struct.socket_info*
  %60 = call i32 @free(%struct.socket_info* %59)
  %61 = load i32, i32* %18, align 4
  store i32 %61, i32* %4, align 4
  br label %206

62:                                               ; preds = %46
  %63 = load i32, i32* %18, align 4
  store i32 %63, i32* %10, align 4
  %64 = load i64, i64* %16, align 8
  store i64 %64, i64* %17, align 8
  %65 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %66 = bitcast %struct.sockaddr_un* %11 to %struct.socket_info*
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %69 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %72 = bitcast %struct.sockaddr* %71 to %struct.socket_info*
  %73 = call i32 @sockaddr_convert_from_un(%struct.socket_info* %65, %struct.socket_info* %66, i64 %67, i32 %70, %struct.socket_info* %72, i64* %17)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %83

76:                                               ; preds = %62
  %77 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %78 = bitcast %struct.sockaddr* %77 to %struct.socket_info*
  %79 = call i32 @free(%struct.socket_info* %78)
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @close(i32 %80)
  %82 = load i32, i32* %18, align 4
  store i32 %82, i32* %4, align 4
  br label %206

83:                                               ; preds = %62
  %84 = call %struct.socket_info* @malloc(i32 64)
  store %struct.socket_info* %84, %struct.socket_info** %9, align 8
  %85 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %86 = call i32 @memset(%struct.socket_info* %85, i32 0, i32 64)
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %89 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %91 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %94 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  %95 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %96 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %99 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %98, i32 0, i32 9
  store i32 %97, i32* %99, align 4
  %100 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %101 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %104 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %103, i32 0, i32 8
  store i32 %102, i32* %104, align 8
  %105 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %106 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  %107 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %108 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %107, i32 0, i32 2
  store i32 1, i32* %108, align 8
  %109 = load i64, i64* %17, align 8
  %110 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %111 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %110, i32 0, i32 7
  store i64 %109, i64* %111, align 8
  %112 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %113 = bitcast %struct.sockaddr* %112 to %struct.socket_info*
  %114 = load i64, i64* %17, align 8
  %115 = call i8* @sockaddr_dup(%struct.socket_info* %113, i64 %114)
  %116 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %117 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %116, i32 0, i32 6
  store i8* %115, i8** %117, align 8
  %118 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %119 = icmp ne %struct.sockaddr* %118, null
  br i1 %119, label %120, label %139

120:                                              ; preds = %83
  %121 = load i64*, i64** %7, align 8
  %122 = icmp ne i64* %121, null
  br i1 %122, label %123, label %139

123:                                              ; preds = %120
  %124 = load i64, i64* %17, align 8
  %125 = load i64*, i64** %7, align 8
  store i64 %124, i64* %125, align 8
  %126 = load i64*, i64** %7, align 8
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %17, align 8
  %129 = icmp sge i64 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %132 = bitcast %struct.sockaddr* %131 to %struct.socket_info*
  %133 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %134 = bitcast %struct.sockaddr* %133 to %struct.socket_info*
  %135 = load i64, i64* %17, align 8
  %136 = call i32 @memcpy(%struct.socket_info* %132, %struct.socket_info* %134, i64 %135)
  br label %137

137:                                              ; preds = %130, %123
  %138 = load i64*, i64** %7, align 8
  store i64 0, i64* %138, align 8
  br label %139

139:                                              ; preds = %137, %120, %83
  %140 = load i32, i32* %10, align 4
  %141 = bitcast %struct.sockaddr_un* %13 to %struct.sockaddr*
  %142 = bitcast %struct.sockaddr* %141 to %struct.socket_info*
  %143 = call i32 @real_getsockname(i32 %140, %struct.socket_info* %142, i64* %14)
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %148 = call i32 @free(%struct.socket_info* %147)
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @close(i32 %149)
  %151 = load i32, i32* %18, align 4
  store i32 %151, i32* %4, align 4
  br label %206

152:                                              ; preds = %139
  %153 = load i64, i64* %16, align 8
  store i64 %153, i64* %17, align 8
  %154 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %155 = bitcast %struct.sockaddr_un* %13 to %struct.socket_info*
  %156 = load i64, i64* %14, align 8
  %157 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %158 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %161 = bitcast %struct.sockaddr* %160 to %struct.socket_info*
  %162 = call i32 @sockaddr_convert_from_un(%struct.socket_info* %154, %struct.socket_info* %155, i64 %156, i32 %159, %struct.socket_info* %161, i64* %17)
  store i32 %162, i32* %18, align 4
  %163 = load i32, i32* %18, align 4
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %174

165:                                              ; preds = %152
  %166 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %167 = call i32 @free(%struct.socket_info* %166)
  %168 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %169 = bitcast %struct.sockaddr* %168 to %struct.socket_info*
  %170 = call i32 @free(%struct.socket_info* %169)
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @close(i32 %171)
  %173 = load i32, i32* %18, align 4
  store i32 %173, i32* %4, align 4
  br label %206

174:                                              ; preds = %152
  %175 = load i64, i64* %17, align 8
  %176 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %177 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %176, i32 0, i32 4
  store i64 %175, i64* %177, align 8
  %178 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %179 = bitcast %struct.sockaddr* %178 to %struct.socket_info*
  %180 = load i64, i64* %17, align 8
  %181 = call i8* @sockaddr_dup(%struct.socket_info* %179, i64 %180)
  %182 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %183 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %182, i32 0, i32 3
  store i8* %181, i8** %183, align 8
  %184 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %185 = bitcast %struct.sockaddr* %184 to %struct.socket_info*
  %186 = call i32 @free(%struct.socket_info* %185)
  %187 = load i32, i32* @sockets, align 4
  %188 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %189 = call i32 @SWRAP_DLIST_ADD(i32 %187, %struct.socket_info* %188)
  %190 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %191 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %192 = bitcast %struct.sockaddr* %191 to %struct.socket_info*
  %193 = load i32, i32* @SWRAP_ACCEPT_SEND, align 4
  %194 = call i32 @swrap_dump_packet(%struct.socket_info* %190, %struct.socket_info* %192, i32 %193, i32* null, i32 0)
  %195 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %196 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %197 = bitcast %struct.sockaddr* %196 to %struct.socket_info*
  %198 = load i32, i32* @SWRAP_ACCEPT_RECV, align 4
  %199 = call i32 @swrap_dump_packet(%struct.socket_info* %195, %struct.socket_info* %197, i32 %198, i32* null, i32 0)
  %200 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %201 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %202 = bitcast %struct.sockaddr* %201 to %struct.socket_info*
  %203 = load i32, i32* @SWRAP_ACCEPT_ACK, align 4
  %204 = call i32 @swrap_dump_packet(%struct.socket_info* %200, %struct.socket_info* %202, i32 %203, i32* null, i32 0)
  %205 = load i32, i32* %10, align 4
  store i32 %205, i32* %4, align 4
  br label %206

206:                                              ; preds = %174, %165, %146, %76, %57, %45, %36, %23
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local %struct.socket_info* @find_socket_info(i32) #1

declare dso_local i32 @real_accept(i32, %struct.socket_info*, i64*) #1

declare dso_local i64 @socket_length(i32) #1

declare dso_local %struct.socket_info* @malloc(i32) #1

declare dso_local i32 @memset(%struct.socket_info*, i32, i32) #1

declare dso_local i32 @free(%struct.socket_info*) #1

declare dso_local i32 @sockaddr_convert_from_un(%struct.socket_info*, %struct.socket_info*, i64, i32, %struct.socket_info*, i64*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @sockaddr_dup(%struct.socket_info*, i64) #1

declare dso_local i32 @memcpy(%struct.socket_info*, %struct.socket_info*, i64) #1

declare dso_local i32 @real_getsockname(i32, %struct.socket_info*, i64*) #1

declare dso_local i32 @SWRAP_DLIST_ADD(i32, %struct.socket_info*) #1

declare dso_local i32 @swrap_dump_packet(%struct.socket_info*, %struct.socket_info*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
