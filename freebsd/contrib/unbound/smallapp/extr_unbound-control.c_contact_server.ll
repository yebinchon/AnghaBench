; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-control.c_contact_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-control.c_contact_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"::0\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"0::0\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"0::\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"could not parse IP@port: %s\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"could not parse IP: %s\00", align 1
@PF_INET6 = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"socket: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"connect: %s for %s\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@ECONNREFUSED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"unbound is stopped\0A\00", align 1
@AF_LOCAL = common dso_local global i8* null, align 8
@WSAECONNREFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.config_file*, i32)* @contact_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @contact_server(i8* %0, %struct.config_file* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_storage, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %14, i32* %10, align 4
  store i32 1, i32* %12, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %62, label %17

17:                                               ; preds = %3
  %18 = load %struct.config_file*, %struct.config_file** %5, align 8
  %19 = getelementptr inbounds %struct.config_file, %struct.config_file* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.config_file*, %struct.config_file** %5, align 8
  %25 = getelementptr inbounds %struct.config_file, %struct.config_file* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %4, align 8
  br label %38

30:                                               ; preds = %17
  %31 = load %struct.config_file*, %struct.config_file** %5, align 8
  %32 = getelementptr inbounds %struct.config_file, %struct.config_file* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %37

36:                                               ; preds = %30
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %37

37:                                               ; preds = %36, %35
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %61

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %4, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51, %47, %43
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %60

60:                                               ; preds = %59, %55
  br label %61

61:                                               ; preds = %60, %42
  br label %62

62:                                               ; preds = %61, %3
  %63 = load i8*, i8** %4, align 8
  %64 = call i64 @strchr(i8* %63, i8 signext 64)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @extstrtoaddr(i8* %67, %struct.sockaddr_storage* %7, i64* %8)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @fatal_exit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %70, %66
  br label %85

74:                                               ; preds = %62
  %75 = load i8*, i8** %4, align 8
  %76 = load %struct.config_file*, %struct.config_file** %5, align 8
  %77 = getelementptr inbounds %struct.config_file, %struct.config_file* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ipstrtoaddr(i8* %75, i32 %78, %struct.sockaddr_storage* %7, i64* %8)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %74
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @fatal_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %81, %74
  br label %85

85:                                               ; preds = %84, %73
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load i64, i64* %8, align 8
  %90 = call i64 @addr_is_ip6(%struct.sockaddr_storage* %7, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @PF_INET6, align 4
  br label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @PF_INET, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %96, %85
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @SOCK_STREAM, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @socket(i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i32, i32* @errno, align 4
  %107 = call i8* @strerror(i32 %106)
  %108 = call i32 @fatal_exit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %105, %98
  %110 = load i32, i32* %11, align 4
  %111 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %112 = load i64, i64* %8, align 8
  %113 = call i64 @connect(i32 %110, %struct.sockaddr* %111, i64 %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %141

115:                                              ; preds = %109
  %116 = load i32, i32* @errno, align 4
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %13, align 4
  %121 = call i8* @strerror(i32 %120)
  %122 = load i8*, i8** %4, align 8
  %123 = call i32 @log_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %121, i8* %122)
  br label %129

124:                                              ; preds = %115
  %125 = load i32, i32* %13, align 4
  %126 = call i8* @strerror(i32 %125)
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @log_err_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %126, %struct.sockaddr_storage* %7, i64 %127)
  br label %129

129:                                              ; preds = %124, %119
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @ECONNREFUSED, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %138 = call i32 @exit(i32 3) #3
  unreachable

139:                                              ; preds = %133, %129
  %140 = call i32 @exit(i32 1) #3
  unreachable

141:                                              ; preds = %109
  %142 = load i32, i32* %11, align 4
  ret i32 %142
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @extstrtoaddr(i8*, %struct.sockaddr_storage*, i64*) #1

declare dso_local i32 @fatal_exit(i8*, i8*) #1

declare dso_local i32 @ipstrtoaddr(i8*, i32, %struct.sockaddr_storage*, i64*) #1

declare dso_local i64 @addr_is_ip6(%struct.sockaddr_storage*, i64) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i64) #1

declare dso_local i32 @log_err(i8*, i8*, i8*) #1

declare dso_local i32 @log_err_addr(i8*, i8*, %struct.sockaddr_storage*, i64) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
