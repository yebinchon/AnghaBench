; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sctp_sys_calls.c_sctp_bindx.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sctp_sys_calls.c_sctp_bindx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32, i32 }
%struct.sctp_getaddresses = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in = type { i64 }
%struct.sockaddr_in6 = type { i64 }

@SCTP_BINDX_ADD_ADDR = common dso_local global i32 0, align 4
@SCTP_BINDX_REM_ADDR = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_bindx(i32 %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sctp_getaddresses*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @SCTP_BINDX_ADD_ADDR, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @SCTP_BINDX_REM_ADDR, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @EFAULT, align 4
  store i32 %25, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %206

26:                                               ; preds = %20, %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %31 = icmp eq %struct.sockaddr* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %206

34:                                               ; preds = %29
  %35 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %35, %struct.sockaddr** %11, align 8
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %121, %34
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %124

40:                                               ; preds = %36
  %41 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %42 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %110 [
    i32 129, label %44
    i32 128, label %77
  ]

44:                                               ; preds = %40
  %45 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %46 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %48, 8
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %206

52:                                               ; preds = %44
  %53 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %54 = bitcast %struct.sockaddr* %53 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %54, %struct.sockaddr_in** %12, align 8
  %55 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %52
  %60 = load i64, i64* %16, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i64, i64* %16, align 8
  %64 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %206

70:                                               ; preds = %62
  br label %75

71:                                               ; preds = %59
  %72 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %73 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %16, align 8
  br label %75

75:                                               ; preds = %71, %70
  br label %76

76:                                               ; preds = %75, %52
  br label %112

77:                                               ; preds = %40
  %78 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %79 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp ne i64 %81, 8
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %206

85:                                               ; preds = %77
  %86 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %87 = bitcast %struct.sockaddr* %86 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %87, %struct.sockaddr_in6** %13, align 8
  %88 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %89 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %85
  %93 = load i64, i64* %16, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i64, i64* %16, align 8
  %97 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %98 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @EINVAL, align 4
  store i32 %102, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %206

103:                                              ; preds = %95
  br label %108

104:                                              ; preds = %92
  %105 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %106 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %16, align 8
  br label %108

108:                                              ; preds = %104, %103
  br label %109

109:                                              ; preds = %108, %85
  br label %112

110:                                              ; preds = %40
  %111 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %111, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %206

112:                                              ; preds = %109, %76
  %113 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %114 = ptrtoint %struct.sockaddr* %113 to i32
  %115 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %116 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %114, %117
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to %struct.sockaddr*
  store %struct.sockaddr* %120, %struct.sockaddr** %11, align 8
  br label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %36

124:                                              ; preds = %36
  store i64 20, i64* %15, align 8
  %125 = load i64, i64* %15, align 8
  %126 = call i64 @malloc(i64 %125)
  %127 = inttoptr i64 %126 to %struct.sctp_getaddresses*
  store %struct.sctp_getaddresses* %127, %struct.sctp_getaddresses** %10, align 8
  %128 = icmp eq %struct.sctp_getaddresses* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* @ENOMEM, align 4
  store i32 %130, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %206

131:                                              ; preds = %124
  %132 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %132, %struct.sockaddr** %11, align 8
  store i32 0, i32* %14, align 4
  br label %133

133:                                              ; preds = %200, %131
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %203

137:                                              ; preds = %133
  %138 = load %struct.sctp_getaddresses*, %struct.sctp_getaddresses** %10, align 8
  %139 = load i64, i64* %15, align 8
  %140 = call i32 @memset(%struct.sctp_getaddresses* %138, i32 0, i64 %139)
  %141 = load %struct.sctp_getaddresses*, %struct.sctp_getaddresses** %10, align 8
  %142 = getelementptr inbounds %struct.sctp_getaddresses, %struct.sctp_getaddresses* %141, i32 0, i32 1
  store i64 0, i64* %142, align 8
  %143 = load %struct.sctp_getaddresses*, %struct.sctp_getaddresses** %10, align 8
  %144 = getelementptr inbounds %struct.sctp_getaddresses, %struct.sctp_getaddresses* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %147 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %148 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @memcpy(%struct.TYPE_2__* %145, %struct.sockaddr* %146, i32 %149)
  %151 = load i32, i32* %14, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %179

153:                                              ; preds = %137
  %154 = load i64, i64* %16, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %153
  %157 = load %struct.sctp_getaddresses*, %struct.sctp_getaddresses** %10, align 8
  %158 = getelementptr inbounds %struct.sctp_getaddresses, %struct.sctp_getaddresses* %157, i32 0, i32 0
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  switch i32 %161, label %178 [
    i32 129, label %162
    i32 128, label %170
  ]

162:                                              ; preds = %156
  %163 = load %struct.sctp_getaddresses*, %struct.sctp_getaddresses** %10, align 8
  %164 = getelementptr inbounds %struct.sctp_getaddresses, %struct.sctp_getaddresses* %163, i32 0, i32 0
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = bitcast %struct.TYPE_2__* %165 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %166, %struct.sockaddr_in** %12, align 8
  %167 = load i64, i64* %16, align 8
  %168 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %169 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  br label %178

170:                                              ; preds = %156
  %171 = load %struct.sctp_getaddresses*, %struct.sctp_getaddresses** %10, align 8
  %172 = getelementptr inbounds %struct.sctp_getaddresses, %struct.sctp_getaddresses* %171, i32 0, i32 0
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = bitcast %struct.TYPE_2__* %173 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %174, %struct.sockaddr_in6** %13, align 8
  %175 = load i64, i64* %16, align 8
  %176 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %177 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  br label %178

178:                                              ; preds = %156, %170, %162
  br label %179

179:                                              ; preds = %178, %153, %137
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* @IPPROTO_SCTP, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load %struct.sctp_getaddresses*, %struct.sctp_getaddresses** %10, align 8
  %184 = load i64, i64* %15, align 8
  %185 = trunc i64 %184 to i32
  %186 = call i64 @setsockopt(i32 %180, i32 %181, i32 %182, %struct.sctp_getaddresses* %183, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %179
  %189 = load %struct.sctp_getaddresses*, %struct.sctp_getaddresses** %10, align 8
  %190 = call i32 @free(%struct.sctp_getaddresses* %189)
  store i32 -1, i32* %5, align 4
  br label %206

191:                                              ; preds = %179
  %192 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %193 = ptrtoint %struct.sockaddr* %192 to i32
  %194 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %195 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %193, %196
  %198 = sext i32 %197 to i64
  %199 = inttoptr i64 %198 to %struct.sockaddr*
  store %struct.sockaddr* %199, %struct.sockaddr** %11, align 8
  br label %200

200:                                              ; preds = %191
  %201 = load i32, i32* %14, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %14, align 4
  br label %133

203:                                              ; preds = %133
  %204 = load %struct.sctp_getaddresses*, %struct.sctp_getaddresses** %10, align 8
  %205 = call i32 @free(%struct.sctp_getaddresses* %204)
  store i32 0, i32* %5, align 4
  br label %206

206:                                              ; preds = %203, %188, %129, %110, %101, %83, %68, %50, %32, %24
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memset(%struct.sctp_getaddresses*, i32, i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.sockaddr*, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.sctp_getaddresses*, i32) #1

declare dso_local i32 @free(%struct.sctp_getaddresses*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
