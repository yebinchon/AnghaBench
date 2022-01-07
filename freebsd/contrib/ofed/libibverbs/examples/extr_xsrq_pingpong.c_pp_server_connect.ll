; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_pp_server_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_pp_server_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo*, i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s for port %d\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Couldn't listen to port %d\0A\00", align 1
@ctx = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"accept() failed for client %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pp_server_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_server_connect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.addrinfo, align 8
  store i32 %0, i32* %3, align 4
  store i32 -1, i32* %10, align 4
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 3
  %17 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 4
  %19 = load i32, i32* @AF_INET, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 5
  store %struct.addrinfo* null, %struct.addrinfo** %20, align 8
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 6
  %22 = load i32, i32* @AI_PASSIVE, align 4
  store i32 %22, i32* %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @asprintf(i8** %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %133

27:                                               ; preds = %1
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @getaddrinfo(i32* null, i8* %28, %struct.addrinfo* %12, %struct.addrinfo** %4)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @gai_strerror(i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %36)
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @free(i8* %38)
  store i32 1, i32* %2, align 4
  br label %133

40:                                               ; preds = %27
  %41 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  store %struct.addrinfo* %41, %struct.addrinfo** %5, align 8
  br label %42

42:                                               ; preds = %77, %40
  %43 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %44 = icmp ne %struct.addrinfo* %43, null
  br i1 %44, label %45, label %81

45:                                               ; preds = %42
  %46 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @socket(i32 %48, i32 %51, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %45
  store i32 1, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @SOL_SOCKET, align 4
  %61 = load i32, i32* @SO_REUSEADDR, align 4
  %62 = call i32 @setsockopt(i32 %59, i32 %60, i32 %61, i32* %9, i32 4)
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @bind(i32 %63, i32 %66, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %58
  br label %81

73:                                               ; preds = %58
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @close(i32 %74)
  store i32 -1, i32* %10, align 4
  br label %76

76:                                               ; preds = %73, %45
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %79 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %78, i32 0, i32 5
  %80 = load %struct.addrinfo*, %struct.addrinfo** %79, align 8
  store %struct.addrinfo* %80, %struct.addrinfo** %5, align 8
  br label %42

81:                                               ; preds = %72, %42
  %82 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %83 = call i32 @freeaddrinfo_null(%struct.addrinfo* %82)
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i32, i32* @stderr, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  store i32 1, i32* %2, align 4
  br label %133

92:                                               ; preds = %81
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctx, i32 0, i32 0), align 4
  %95 = call i32 @listen(i32 %93, i32 %94)
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %127, %92
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctx, i32 0, i32 0), align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %130

100:                                              ; preds = %96
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @accept(i32 %101, i32* null, i32* null)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @stderr, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  store i32 1, i32* %2, align 4
  br label %133

109:                                              ; preds = %100
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i64 @recv_remote_dest(i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store i32 1, i32* %2, align 4
  br label %133

115:                                              ; preds = %109
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i64 @send_local_dest(i32 %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 1, i32* %2, align 4
  br label %133

121:                                              ; preds = %115
  %122 = load i32, i32* %8, align 4
  %123 = call i64 @connect_qps(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i32 1, i32* %2, align 4
  br label %133

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %96

130:                                              ; preds = %96
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @close(i32 %131)
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %130, %125, %120, %114, %105, %88, %32, %26
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i64 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @getaddrinfo(i32*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bind(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @freeaddrinfo_null(%struct.addrinfo*) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i64 @recv_remote_dest(i32, i32) #1

declare dso_local i64 @send_local_dest(i32, i32) #1

declare dso_local i64 @connect_qps(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
