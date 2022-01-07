; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpjdlog/extr_pjdlog.c_pjdlog_printf_render_sockaddr_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpjdlog/extr_pjdlog.c_pjdlog_printf_render_sockaddr_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__printf_io = type { i32 }
%struct.printf_info = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"inet_ntop(AF_INET) failed: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"inet_ntop(AF_INET6) failed: %s.\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"[unsupported family %hhu]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.__printf_io*, %struct.printf_info*, i8**)* @pjdlog_printf_render_sockaddr_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pjdlog_printf_render_sockaddr_ip(%struct.__printf_io* %0, %struct.printf_info* %1, i8** %2) #0 {
  %4 = alloca %struct.__printf_io*, align 8
  %5 = alloca %struct.printf_info*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.sockaddr_in6*, align 8
  store %struct.__printf_io* %0, %struct.__printf_io** %4, align 8
  store %struct.printf_info* %1, %struct.printf_info** %5, align 8
  store i8** %2, i8*** %6, align 8
  %13 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %14 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %15 = call i32 @MAX(i32 %13, i32 %14)
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.sockaddr_storage**
  %23 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %22, align 8
  store %struct.sockaddr_storage* %23, %struct.sockaddr_storage** %7, align 8
  %24 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %25 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %59 [
    i32 129, label %27
    i32 128, label %43
  ]

27:                                               ; preds = %3
  %28 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %29 = bitcast %struct.sockaddr_storage* %28 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %29, %struct.sockaddr_in** %11, align 8
  %30 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %31 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 0
  %35 = trunc i64 %16 to i32
  %36 = call i32* @inet_ntop(i32 %32, i32* %34, i8* %18, i32 %35)
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @strerror(i32 %39)
  %41 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %27
  br label %65

43:                                               ; preds = %3
  %44 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %45 = bitcast %struct.sockaddr_storage* %44 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %45, %struct.sockaddr_in6** %12, align 8
  %46 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %47 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %49, i32 0, i32 0
  %51 = trunc i64 %16 to i32
  %52 = call i32* @inet_ntop(i32 %48, i32* %50, i8* %18, i32 %51)
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @strerror(i32 %55)
  %57 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %43
  br label %65

59:                                               ; preds = %3
  %60 = trunc i64 %16 to i32
  %61 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %62 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @snprintf(i8* %18, i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %59, %58, %42
  %66 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %67 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %68 = call i32 @strlen(i8* %18)
  %69 = call i32 @__printf_out(%struct.__printf_io* %66, %struct.printf_info* %67, i8* %18, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %71 = call i32 @__printf_flush(%struct.__printf_io* %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %73)
  ret i32 %72
}

declare dso_local i32 @MAX(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local i32 @PJDLOG_ABORT(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @__printf_out(%struct.__printf_io*, %struct.printf_info*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @__printf_flush(%struct.__printf_io*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
