; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_add_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_add_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listen_port = type { i32, %struct.listen_port* }
%struct.config_file = type { i32, i32, i32, i64* }
%struct.addrinfo = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"control interface %s:%s getaddrinfo: %s %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"cannot open control interface %s %d : protocol not supported\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"cannot open control interface %s %d\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@EAI_NONAME = common dso_local global i32 0, align 4
@EAI_SYSTEM = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@VERB_QUERY = common dso_local global i32 0, align 4
@cfg_gid = common dso_local global i64 0, align 8
@cfg_uid = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.listen_port**, i32, %struct.config_file*)* @add_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_open(i8* %0, i32 %1, %struct.listen_port** %2, i32 %3, %struct.config_file* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.listen_port**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.config_file*, align 8
  %12 = alloca %struct.addrinfo, align 4
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca %struct.listen_port*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [15 x i8], align 1
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.listen_port** %2, %struct.listen_port*** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.config_file* %4, %struct.config_file** %11, align 8
  store i32 0, i32* %15, align 4
  %19 = getelementptr inbounds [15 x i8], [15 x i8]* %18, i64 0, i64 0
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @snprintf(i8* %19, i32 15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds [15 x i8], [15 x i8]* %18, i64 0, i64 14
  store i8 0, i8* %22, align 1
  %23 = call i32 @memset(%struct.addrinfo* %12, i32 0, i32 8)
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @log_assert(i8* %24)
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 47
  br i1 %30, label %31, label %42

31:                                               ; preds = %5
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.config_file*, %struct.config_file** %11, align 8
  %34 = getelementptr inbounds %struct.config_file, %struct.config_file* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @create_local_accept_sock(i8* %32, i32* %15, i32 %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load %struct.config_file*, %struct.config_file** %11, align 8
  br label %41

41:                                               ; preds = %39, %31
  br label %82

42:                                               ; preds = %5
  %43 = load i32, i32* @SOCK_STREAM, align 4
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @AI_PASSIVE, align 4
  %46 = load i32, i32* @AI_NUMERICHOST, align 4
  %47 = or i32 %45, %46
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds [15 x i8], [15 x i8]* %18, i64 0, i64 0
  %51 = call i32 @getaddrinfo(i8* %49, i8* %50, %struct.addrinfo* %12, %struct.addrinfo** %13)
  store i32 %51, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %55 = icmp ne %struct.addrinfo* %54, null
  br i1 %55, label %68, label %56

56:                                               ; preds = %53, %42
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i8*, i8** %7, align 8
  br label %62

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i8* [ %60, %59 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %61 ]
  %64 = getelementptr inbounds [15 x i8], [15 x i8]* %18, i64 0, i64 0
  %65 = load i32, i32* %17, align 4
  %66 = call i32 @gai_strerror(i32 %65)
  %67 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %63, i8* %64, i32 %66, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %122

68:                                               ; preds = %53
  %69 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %70 = load %struct.config_file*, %struct.config_file** %11, align 8
  %71 = getelementptr inbounds %struct.config_file, %struct.config_file* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.config_file*, %struct.config_file** %11, align 8
  %74 = getelementptr inbounds %struct.config_file, %struct.config_file* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.config_file*, %struct.config_file** %11, align 8
  %77 = getelementptr inbounds %struct.config_file, %struct.config_file* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @create_tcp_accept_sock(%struct.addrinfo* %69, i32 1, i32* %15, i32 0, i32 %72, i32 0, i32 %75, i32 %78)
  store i32 %79, i32* %16, align 4
  %80 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %81 = call i32 @freeaddrinfo(%struct.addrinfo* %80)
  br label %82

82:                                               ; preds = %68, %41
  %83 = load i32, i32* %16, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  store i32 1, i32* %6, align 4
  br label %122

92:                                               ; preds = %88
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i8* %93, i32 %94)
  store i32 0, i32* %6, align 4
  br label %122

96:                                               ; preds = %85, %82
  %97 = load i32, i32* %16, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %100, i32 %101)
  store i32 0, i32* %6, align 4
  br label %122

103:                                              ; preds = %96
  %104 = call i64 @calloc(i32 1, i32 16)
  %105 = inttoptr i64 %104 to %struct.listen_port*
  store %struct.listen_port* %105, %struct.listen_port** %14, align 8
  %106 = load %struct.listen_port*, %struct.listen_port** %14, align 8
  %107 = icmp ne %struct.listen_port* %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @close(i32 %109)
  %111 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %122

112:                                              ; preds = %103
  %113 = load %struct.listen_port**, %struct.listen_port*** %9, align 8
  %114 = load %struct.listen_port*, %struct.listen_port** %113, align 8
  %115 = load %struct.listen_port*, %struct.listen_port** %14, align 8
  %116 = getelementptr inbounds %struct.listen_port, %struct.listen_port* %115, i32 0, i32 1
  store %struct.listen_port* %114, %struct.listen_port** %116, align 8
  %117 = load %struct.listen_port*, %struct.listen_port** %14, align 8
  %118 = load %struct.listen_port**, %struct.listen_port*** %9, align 8
  store %struct.listen_port* %117, %struct.listen_port** %118, align 8
  %119 = load i32, i32* %16, align 4
  %120 = load %struct.listen_port*, %struct.listen_port** %14, align 8
  %121 = getelementptr inbounds %struct.listen_port, %struct.listen_port* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  store i32 1, i32* %6, align 4
  br label %122

122:                                              ; preds = %112, %108, %99, %92, %91, %62
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @log_assert(i8*) #1

declare dso_local i32 @create_local_accept_sock(i8*, i32*, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @create_tcp_accept_sock(%struct.addrinfo*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
