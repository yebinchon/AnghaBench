; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_send_to_kdc.c_send_via_proxy.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_send_to_kdc.c_send_via_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }

@rk_INVALID_SOCKET = common dso_local global i64 0, align 8
@NI_MAXSERV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@errno = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"http://%s/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_11__*)* @send_via_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_via_proxy(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.addrinfo, align 8
  %15 = alloca %struct.addrinfo*, align 8
  %16 = alloca %struct.addrinfo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @strdup(i32 %24)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  store i8* %26, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %27 = load i64, i64* @rk_INVALID_SOCKET, align 8
  store i64 %27, i64* %18, align 8
  %28 = load i32, i32* @NI_MAXSERV, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %19, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %20, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %157

36:                                               ; preds = %4
  %37 = load i8*, i8** %11, align 8
  %38 = call i64 @strncmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 7
  store i8* %42, i8** %11, align 8
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i8*, i8** %11, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 58)
  store i8* %45, i8** %13, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %13, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %13, align 8
  store i8 0, i8* %49, align 1
  br label %51

51:                                               ; preds = %48, %43
  %52 = call i32 @memset(%struct.addrinfo* %14, i32 0, i32 32)
  %53 = load i32, i32* @PF_UNSPEC, align 4
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 4
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* @SOCK_STREAM, align 4
  %56 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = trunc i64 %29 to i32
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @htons(i32 80)
  %60 = call i32 @init_port(i8* %58, i32 %59)
  %61 = call i32 @ntohs(i32 %60)
  %62 = call i32 @snprintf(i8* %31, i32 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @getaddrinfo(i8* %63, i8* %31, %struct.addrinfo* %14, %struct.addrinfo** %15)
  store i32 %64, i32* %17, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %51
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* @errno, align 4
  %72 = call i32 @krb5_eai_to_heim_errno(i32 %70, i32 %71)
  store i32 %72, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %157

73:                                               ; preds = %51
  %74 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  store %struct.addrinfo* %74, %struct.addrinfo** %16, align 8
  br label %75

75:                                               ; preds = %110, %73
  %76 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %77 = icmp ne %struct.addrinfo* %76, null
  br i1 %77, label %78, label %114

78:                                               ; preds = %75
  %79 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %80 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %83 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @SOCK_CLOEXEC, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %88 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @socket(i32 %81, i32 %86, i32 %89)
  store i64 %90, i64* %18, align 8
  %91 = load i64, i64* %18, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %78
  br label %110

94:                                               ; preds = %78
  %95 = load i64, i64* %18, align 8
  %96 = call i32 @rk_cloexec(i64 %95)
  %97 = load i64, i64* %18, align 8
  %98 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %99 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %102 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @connect(i64 %97, i32 %100, i32 %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %94
  %107 = load i64, i64* %18, align 8
  %108 = call i32 @rk_closesocket(i64 %107)
  br label %110

109:                                              ; preds = %94
  br label %114

110:                                              ; preds = %106, %93
  %111 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %112 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %111, i32 0, i32 5
  %113 = load %struct.addrinfo*, %struct.addrinfo** %112, align 8
  store %struct.addrinfo* %113, %struct.addrinfo** %16, align 8
  br label %75

114:                                              ; preds = %109, %75
  %115 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %116 = icmp eq %struct.addrinfo* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %119 = call i32 @freeaddrinfo(%struct.addrinfo* %118)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %157

120:                                              ; preds = %114
  %121 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %122 = call i32 @freeaddrinfo(%struct.addrinfo* %121)
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @asprintf(i8** %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %17, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %120
  %130 = load i8*, i8** %12, align 8
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129, %120
  %133 = load i64, i64* %18, align 8
  %134 = call i32 @close(i64 %133)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %157

135:                                              ; preds = %129
  %136 = load i64, i64* %18, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i8*, i8** %12, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %143 = call i32 @send_and_recv_http(i64 %136, i32 %139, i8* %140, %struct.TYPE_11__* %141, %struct.TYPE_11__* %142)
  store i32 %143, i32* %17, align 4
  %144 = load i64, i64* %18, align 8
  %145 = call i32 @rk_closesocket(i64 %144)
  %146 = load i8*, i8** %12, align 8
  %147 = call i32 @free(i8* %146)
  %148 = load i32, i32* %17, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %135
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %157

156:                                              ; preds = %150, %135
  store i32 1, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %157

157:                                              ; preds = %156, %155, %132, %117, %69, %34
  %158 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %158)
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i8* @strdup(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @init_port(i8*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_eai_to_heim_errno(i32, i32) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @rk_cloexec(i64) #1

declare dso_local i64 @connect(i64, i32, i32) #1

declare dso_local i32 @rk_closesocket(i64) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @send_and_recv_http(i64, i32, i8*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
