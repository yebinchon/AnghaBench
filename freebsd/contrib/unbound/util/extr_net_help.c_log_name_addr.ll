; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_log_name_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_log_name_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32, i32, i64 }
%struct.sockaddr_in6 = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"unknown_family \00", align 1
@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"local \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"(inet_ntop error)\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s <%s> %s%s#%d (addrlen %d)\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%s <%s> %s%s#%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_name_addr(i32 %0, i8* %1, i32* %2, %struct.sockaddr_storage* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sockaddr_storage*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [100 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.sockaddr_storage* %3, %struct.sockaddr_storage** %9, align 8
  store i64 %4, i64* %10, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %19 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %9, align 8
  %25 = bitcast %struct.sockaddr_storage* %24 to %struct.sockaddr_in*
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %16, align 4
  %29 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %9, align 8
  %30 = bitcast %struct.sockaddr_storage* %29 to %struct.sockaddr_in*
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 1
  %32 = bitcast i32* %31 to i8*
  store i8* %32, i8** %17, align 8
  %33 = load i32, i32* @verbosity, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  store i32 1, i32* %18, align 4
  br label %89

37:                                               ; preds = %5
  %38 = load i32, i32* %16, align 4
  switch i32 %38, label %46 [
    i32 130, label %39
    i32 129, label %40
    i32 128, label %45
  ]

39:                                               ; preds = %37
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %47

40:                                               ; preds = %37
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %41 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %9, align 8
  %42 = bitcast %struct.sockaddr_storage* %41 to %struct.sockaddr_in6*
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %42, i32 0, i32 0
  %44 = bitcast i32* %43 to i8*
  store i8* %44, i8** %17, align 8
  br label %47

45:                                               ; preds = %37
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %47

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %45, %40, %39
  %48 = load i32, i32* %16, align 4
  %49 = load i8*, i8** %17, align 8
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %51 = call i64 @inet_ntop(i32 %48, i8* %49, i8* %50, i64 100)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %55 = call i32 @strlcpy(i8* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 100)
  br label %56

56:                                               ; preds = %53, %47
  %57 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 99
  store i8 0, i8* %57, align 1
  %58 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %9, align 8
  %59 = bitcast %struct.sockaddr_storage* %58 to %struct.sockaddr_in*
  %60 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @ntohs(i32 %61)
  store i64 %62, i64* %11, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @dname_str(i32* %63, i8* %23)
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 130
  br i1 %66, label %67, label %80

67:                                               ; preds = %56
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 129
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %75 = load i64, i64* %11, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i64, i64* %10, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 (i32, i8*, i8*, i8*, i8*, i8*, i32, ...) @verbose(i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %72, i8* %23, i8* %73, i8* %74, i32 %76, i32 %78)
  br label %88

80:                                               ; preds = %67, %56
  %81 = load i32, i32* %6, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %85 = load i64, i64* %11, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 (i32, i8*, i8*, i8*, i8*, i8*, i32, ...) @verbose(i32 %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %82, i8* %23, i8* %83, i8* %84, i32 %86)
  br label %88

88:                                               ; preds = %80, %70
  store i32 0, i32* %18, align 4
  br label %89

89:                                               ; preds = %88, %36
  %90 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %18, align 4
  switch i32 %91, label %93 [
    i32 0, label %92
    i32 1, label %92
  ]

92:                                               ; preds = %89, %89
  ret void

93:                                               ; preds = %89
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @inet_ntop(i32, i8*, i8*, i64) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @ntohs(i32) #2

declare dso_local i32 @dname_str(i32*, i8*) #2

declare dso_local i32 @verbose(i32, i8*, i8*, i8*, i8*, i8*, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
