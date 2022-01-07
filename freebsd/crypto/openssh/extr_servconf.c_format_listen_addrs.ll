; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_format_listen_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_format_listen_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listenaddr = type { i8*, %struct.addrinfo* }
%struct.addrinfo = type { i64, i32, i32, %struct.addrinfo* }

@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"getnameinfo: %.100s\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"listenaddress [%s]:%s%s%s\0A%s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" rdomain \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"listenaddress %s:%s%s%s\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.listenaddr*)* @format_listen_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_listen_addrs(%struct.listenaddr* %0) #0 {
  %2 = alloca %struct.listenaddr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.listenaddr* %0, %struct.listenaddr** %2, align 8
  %10 = load i32, i32* @NI_MAXHOST, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @NI_MAXSERV, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %18 = load %struct.listenaddr*, %struct.listenaddr** %2, align 8
  %19 = getelementptr inbounds %struct.listenaddr, %struct.listenaddr* %18, i32 0, i32 1
  %20 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  store %struct.addrinfo* %20, %struct.addrinfo** %4, align 8
  br label %21

21:                                               ; preds = %92, %1
  %22 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %23 = icmp ne %struct.addrinfo* %22, null
  br i1 %23, label %24, label %96

24:                                               ; preds = %21
  %25 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = trunc i64 %11 to i32
  %32 = trunc i64 %15 to i32
  %33 = load i32, i32* @NI_NUMERICHOST, align 4
  %34 = load i32, i32* @NI_NUMERICSERV, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @getnameinfo(i32 %27, i32 %30, i8* %13, i32 %31, i8* %16, i32 %32, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ssh_gai_strerror(i32 %39)
  %41 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %92

42:                                               ; preds = %24
  %43 = load i8*, i8** %8, align 8
  store i8* %43, i8** %9, align 8
  %44 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AF_INET6, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %42
  %50 = load %struct.listenaddr*, %struct.listenaddr** %2, align 8
  %51 = getelementptr inbounds %struct.listenaddr, %struct.listenaddr* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp eq i8* %52, null
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %56 = load %struct.listenaddr*, %struct.listenaddr** %2, align 8
  %57 = getelementptr inbounds %struct.listenaddr, %struct.listenaddr* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %65

61:                                               ; preds = %49
  %62 = load %struct.listenaddr*, %struct.listenaddr** %2, align 8
  %63 = getelementptr inbounds %struct.listenaddr, %struct.listenaddr* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  br label %65

65:                                               ; preds = %61, %60
  %66 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %60 ], [ %64, %61 ]
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @xasprintf(i8** %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %13, i8* %16, i8* %55, i8* %66, i8* %67)
  br label %89

69:                                               ; preds = %42
  %70 = load %struct.listenaddr*, %struct.listenaddr** %2, align 8
  %71 = getelementptr inbounds %struct.listenaddr, %struct.listenaddr* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = icmp eq i8* %72, null
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %76 = load %struct.listenaddr*, %struct.listenaddr** %2, align 8
  %77 = getelementptr inbounds %struct.listenaddr, %struct.listenaddr* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %85

81:                                               ; preds = %69
  %82 = load %struct.listenaddr*, %struct.listenaddr** %2, align 8
  %83 = getelementptr inbounds %struct.listenaddr, %struct.listenaddr* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  br label %85

85:                                               ; preds = %81, %80
  %86 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %80 ], [ %84, %81 ]
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @xasprintf(i8** %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %13, i8* %16, i8* %75, i8* %86, i8* %87)
  br label %89

89:                                               ; preds = %85, %65
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @free(i8* %90)
  br label %92

92:                                               ; preds = %89, %38
  %93 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %94 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %93, i32 0, i32 3
  %95 = load %struct.addrinfo*, %struct.addrinfo** %94, align 8
  store %struct.addrinfo* %95, %struct.addrinfo** %4, align 8
  br label %21

96:                                               ; preds = %21
  %97 = load i8*, i8** %8, align 8
  %98 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %98)
  ret i8* %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @getnameinfo(i32, i32, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @error(i8*, i32) #2

declare dso_local i32 @ssh_gai_strerror(i32) #2

declare dso_local i32 @xasprintf(i8**, i8*, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
