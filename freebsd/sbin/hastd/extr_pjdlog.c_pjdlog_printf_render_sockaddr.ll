; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_pjdlog.c_pjdlog_printf_render_sockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_pjdlog.c_pjdlog_printf_render_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__printf_io = type { i32 }
%struct.printf_info = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"inet_ntop(AF_INET) failed: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s:%u\00", align 1
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"inet_ntop(AF_INET6) failed: %s.\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"[%s]:%u\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"[unsupported family %hhu]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.__printf_io*, %struct.printf_info*, i8**)* @pjdlog_printf_render_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pjdlog_printf_render_sockaddr(%struct.__printf_io* %0, %struct.printf_info* %1, i8** %2) #0 {
  %4 = alloca %struct.__printf_io*, align 8
  %5 = alloca %struct.printf_info*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.sockaddr_in6*, align 8
  %17 = alloca i32, align 4
  store %struct.__printf_io* %0, %struct.__printf_io** %4, align 8
  store %struct.printf_info* %1, %struct.printf_info** %5, align 8
  store i8** %2, i8*** %6, align 8
  %18 = load i8**, i8*** %6, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %20 to %struct.sockaddr_storage**
  %22 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %21, align 8
  store %struct.sockaddr_storage* %22, %struct.sockaddr_storage** %7, align 8
  %23 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %24 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %82 [
    i32 129, label %26
    i32 128, label %54
  ]

26:                                               ; preds = %3
  %27 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %10, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %11, align 8
  %31 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %32 = bitcast %struct.sockaddr_storage* %31 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %32, %struct.sockaddr_in** %12, align 8
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntohs(i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %38 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 0
  %42 = trunc i64 %28 to i32
  %43 = call i32* @inet_ntop(i32 %39, i32* %41, i8* %30, i32 %42)
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %26
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @strerror(i32 %46)
  %48 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %26
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %51 = load i32, i32* %13, align 4
  %52 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %50, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %30, i32 %51)
  %53 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %53)
  br label %88

54:                                               ; preds = %3
  %55 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %56 = zext i32 %55 to i64
  %57 = call i8* @llvm.stacksave()
  store i8* %57, i8** %14, align 8
  %58 = alloca i8, i64 %56, align 16
  store i64 %56, i64* %15, align 8
  %59 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %60 = bitcast %struct.sockaddr_storage* %59 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %60, %struct.sockaddr_in6** %16, align 8
  %61 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %16, align 8
  %62 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ntohs(i32 %63)
  store i32 %64, i32* %17, align 4
  %65 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %66 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %16, align 8
  %69 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %68, i32 0, i32 0
  %70 = trunc i64 %56 to i32
  %71 = call i32* @inet_ntop(i32 %67, i32* %69, i8* %58, i32 %70)
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %54
  %74 = load i32, i32* @errno, align 4
  %75 = call i32 @strerror(i32 %74)
  %76 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %54
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %79 = load i32, i32* %17, align 4
  %80 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %78, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %58, i32 %79)
  %81 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %81)
  br label %88

82:                                               ; preds = %3
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %84 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %85 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %83, i32 64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %82, %77, %49
  %89 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %90 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %93 = call i32 @strlen(i8* %92)
  %94 = call i32 @__printf_out(%struct.__printf_io* %89, %struct.printf_info* %90, i8* %91, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %96 = call i32 @__printf_flush(%struct.__printf_io* %95)
  %97 = load i32, i32* %9, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32* @inet_ntop(i32, i32*, i8*, i32) #2

declare dso_local i32 @PJDLOG_ABORT(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @__printf_out(%struct.__printf_io*, %struct.printf_info*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @__printf_flush(%struct.__printf_io*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
