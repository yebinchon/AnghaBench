; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_pp_client_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_pp_client_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }

@SOCK_STREAM = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%s for %s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Couldn't connect to %s:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pp_client_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_client_connect(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.addrinfo, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %10, align 4
  %12 = bitcast %struct.addrinfo* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 3
  %14 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 4
  %16 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %16, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @asprintf(i8** %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %100

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @getaddrinfo(i8* %22, i8* %23, %struct.addrinfo* %11, %struct.addrinfo** %6)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load i32, i32* @stderr, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i8* @gai_strerror(i32 %29)
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %31, i32 %32)
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @free(i8* %34)
  store i32 1, i32* %3, align 4
  br label %100

36:                                               ; preds = %21
  %37 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* %37, %struct.addrinfo** %7, align 8
  br label %38

38:                                               ; preds = %69, %36
  %39 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %40 = icmp ne %struct.addrinfo* %39, null
  br i1 %40, label %41, label %73

41:                                               ; preds = %38
  %42 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @socket(i32 %44, i32 %47, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %41
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %60 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @connect(i32 %55, i32 %58, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %54
  br label %73

65:                                               ; preds = %54
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @close(i32 %66)
  store i32 -1, i32* %10, align 4
  br label %68

68:                                               ; preds = %65, %41
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %71 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %70, i32 0, i32 5
  %72 = load %struct.addrinfo*, %struct.addrinfo** %71, align 8
  store %struct.addrinfo* %72, %struct.addrinfo** %7, align 8
  br label %38

73:                                               ; preds = %64, %38
  %74 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %75 = call i32 @freeaddrinfo_null(%struct.addrinfo* %74)
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i32, i32* @stderr, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %82, i32 %83)
  store i32 1, i32* %3, align 4
  br label %100

85:                                               ; preds = %73
  %86 = load i32, i32* %10, align 4
  %87 = call i64 @send_local_dest(i32 %86, i32 0)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 1, i32* %3, align 4
  br label %100

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = call i64 @recv_remote_dest(i32 %91, i32 0)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 1, i32* %3, align 4
  br label %100

95:                                               ; preds = %90
  %96 = call i64 @connect_qps(i32 0)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 1, i32* %3, align 4
  br label %100

99:                                               ; preds = %95
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %98, %94, %89, %80, %27, %20
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @asprintf(i8**, i8*, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i8* @gai_strerror(i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @connect(i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @freeaddrinfo_null(%struct.addrinfo*) #2

declare dso_local i64 @send_local_dest(i32, i32) #2

declare dso_local i64 @recv_remote_dest(i32, i32) #2

declare dso_local i64 @connect_qps(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
