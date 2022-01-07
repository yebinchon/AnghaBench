; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_verify_krb5_conf.c_check_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_verify_krb5_conf.c_check_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i8*, i32*, i32*, i32*, i64, i64, i32, i64 }

@PF_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@SOCK_STREAM = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"http/\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tcp/\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"kerberos\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"udp/\00", align 1
@SOCK_DGRAM = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"%s: failed to parse port number in %s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@EAI_SERVICE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"%s: %s (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @check_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_host(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca [32 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca %struct.addrinfo*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %10, align 8
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 7
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @PF_UNSPEC, align 4
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 6
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i8* null, i8** %21, align 8
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 3
  store i32* null, i32** %24, align 8
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 7
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** @SOCK_STREAM, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %36 = call i32 @strlcpy(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 32)
  store i32 80, i32* %13, align 4
  br label %78

37:                                               ; preds = %3
  %38 = load i8*, i8** %10, align 8
  %39 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 5
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** @SOCK_STREAM, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %47 = call i32 @strlcpy(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 32)
  store i32 80, i32* %13, align 4
  br label %77

48:                                               ; preds = %37
  %49 = load i8*, i8** %10, align 8
  %50 = call i64 @strncmp(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 4
  store i8* %54, i8** %10, align 8
  %55 = load i8*, i8** @SOCK_STREAM, align 8
  %56 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %58 = call i32 @strlcpy(i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 32)
  store i32 88, i32* %13, align 4
  br label %76

59:                                               ; preds = %48
  %60 = load i8*, i8** %10, align 8
  %61 = call i64 @strncmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 4
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** @SOCK_DGRAM, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i8* %66, i8** %67, align 8
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %69 = call i32 @strlcpy(i8* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 32)
  store i32 88, i32* %13, align 4
  br label %75

70:                                               ; preds = %59
  %71 = load i8*, i8** @SOCK_DGRAM, align 8
  %72 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i8* %71, i8** %72, align 8
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %74 = call i32 @strlcpy(i8* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 32)
  store i32 88, i32* %13, align 4
  br label %75

75:                                               ; preds = %70, %63
  br label %76

76:                                               ; preds = %75, %52
  br label %77

77:                                               ; preds = %76, %41
  br label %78

78:                                               ; preds = %77, %30
  %79 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %80 = call i64 @strsep_copy(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* %79, i32 128)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 1, i32* %4, align 4
  br label %137

83:                                               ; preds = %78
  %84 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %85 = call i64 @strcspn(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %86 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 %85
  store i8 0, i8* %86, align 1
  %87 = load i8*, i8** %10, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %105

89:                                               ; preds = %83
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @strtol(i8* %90, i8** %15, i32 0)
  store i32 %91, i32* %16, align 4
  %92 = load i8*, i8** %15, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = icmp eq i8* %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load i32, i32* %5, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 (i32, i8*, i8*, i8*, ...) @krb5_warnx(i32 %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* %97, i8* %98)
  store i32 1, i32* %4, align 4
  br label %137

100:                                              ; preds = %89
  %101 = load i32, i32* %16, align 4
  store i32 %101, i32* %13, align 4
  %102 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @snprintf(i8* %102, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %100, %83
  %106 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %107 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %108 = call i32 @getaddrinfo(i8* %106, i8* %107, %struct.addrinfo* %11, %struct.addrinfo** %14)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @EAI_SERVICE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %105
  %113 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %114 = load i8, i8* %113, align 16
  %115 = call i32 @isdigit(i8 zeroext %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @snprintf(i8* %118, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %119)
  %121 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %122 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %123 = call i32 @getaddrinfo(i8* %121, i8* %122, %struct.addrinfo* %11, %struct.addrinfo** %14)
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %117, %112, %105
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load i32, i32* %5, align 4
  %129 = load i8*, i8** %6, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @gai_strerror(i32 %130)
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i8*
  %134 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %135 = call i32 (i32, i8*, i8*, i8*, ...) @krb5_warnx(i32 %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %129, i8* %133, i8* %134)
  store i32 1, i32* %4, align 4
  br label %137

136:                                              ; preds = %124
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %136, %127, %95, %82
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @strsep_copy(i8**, i8*, i8*, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @krb5_warnx(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i32 @gai_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
