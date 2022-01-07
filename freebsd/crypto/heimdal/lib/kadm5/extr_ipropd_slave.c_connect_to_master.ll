; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_slave.c_connect_to_master.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_slave.c_connect_to_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }

@NI_MAXSERV = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@IPROP_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to get address of to %s: %s\00", align 1
@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"[unknown-addr]\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"connection failed to %s[%s]\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"connection successful to master: %s[%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @connect_to_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_to_master(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca %struct.addrinfo, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load i32, i32* @NI_MAXSERV, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  store i32 -1, i32* %14, align 4
  %22 = call i32 @memset(%struct.addrinfo* %12, i32 0, i32 32)
  %23 = load i32, i32* @SOCK_STREAM, align 4
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = trunc i64 %19 to i32
  %29 = load i32, i32* @IPROP_PORT, align 4
  %30 = call i32 @snprintf(i8* %21, i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i8* %21, i8** %7, align 8
  br label %31

31:                                               ; preds = %27, %3
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @getaddrinfo(i8* %32, i8* %33, %struct.addrinfo* %12, %struct.addrinfo** %10)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i8* @gai_strerror(i32 %40)
  %42 = call i32 @krb5_warnx(i32 %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %41)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %117

43:                                               ; preds = %31
  %44 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  store %struct.addrinfo* %44, %struct.addrinfo** %11, align 8
  br label %45

45:                                               ; preds = %105, %43
  %46 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %47 = icmp ne %struct.addrinfo* %46, null
  br i1 %47, label %48, label %109

48:                                               ; preds = %45
  %49 = load i32, i32* @NI_MAXHOST, align 4
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %16, align 8
  %52 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %17, align 8
  %53 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = trunc i64 %50 to i32
  %60 = load i32, i32* @NI_NUMERICHOST, align 4
  %61 = call i32 @getnameinfo(i32 %55, i32 %58, i8* %52, i32 %59, i32* null, i32 0, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %48
  %65 = trunc i64 %50 to i32
  %66 = call i32 @strlcpy(i8* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %48
  %68 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %69 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %72 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %75 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @socket(i32 %70, i32 %73, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  store i32 4, i32* %15, align 4
  br label %102

81:                                               ; preds = %67
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %84 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %87 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @connect(i32 %82, i32 %85, i32 %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %81
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @errno, align 4
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @krb5_warn(i32 %92, i32 %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %94, i8* %52)
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @close(i32 %96)
  store i32 4, i32* %15, align 4
  br label %102

98:                                               ; preds = %81
  %99 = load i32, i32* %5, align 4
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @krb5_warnx(i32 %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %100, i8* %52)
  store i32 2, i32* %15, align 4
  br label %102

102:                                              ; preds = %98, %91, %80
  %103 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %15, align 4
  switch i32 %104, label %120 [
    i32 4, label %105
    i32 2, label %109
  ]

105:                                              ; preds = %102
  %106 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %107 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %106, i32 0, i32 5
  %108 = load %struct.addrinfo*, %struct.addrinfo** %107, align 8
  store %struct.addrinfo* %108, %struct.addrinfo** %11, align 8
  br label %45

109:                                              ; preds = %102, %45
  %110 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %111 = call i32 @freeaddrinfo(%struct.addrinfo* %110)
  %112 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %113 = icmp eq %struct.addrinfo* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %117

117:                                              ; preds = %115, %114, %37
  %118 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %4, align 4
  ret i32 %119

120:                                              ; preds = %102
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @krb5_warnx(i32, i8*, i8*, i8*) #2

declare dso_local i8* @gai_strerror(i32) #2

declare dso_local i32 @getnameinfo(i32, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i64 @connect(i32, i32, i32) #2

declare dso_local i32 @krb5_warn(i32, i32, i8*, i8*, i8*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
