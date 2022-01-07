; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_client.c_http_client_url_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_client.c_http_client_url_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i8*, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"HTTP: Unsupported address in URL '%s' (addr='%s' port='%s')\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @http_client_url_parse(i8* %0, %struct.sockaddr_in* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @os_strdup(i8* %12)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %83

17:                                               ; preds = %3
  %18 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %19 = call i32 @os_memset(%struct.sockaddr_in* %18, i32 0, i32 16)
  %20 = load i32, i32* @AF_INET, align 4
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 7
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i8* @os_strchr(i8* %25, i8 signext 47)
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i8* @os_strchr(i8* %27, i8 signext 58)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %39

32:                                               ; preds = %17
  %33 = load i8*, i8** %11, align 8
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ugt i8* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i8* null, i8** %10, align 8
  br label %38

38:                                               ; preds = %37, %32
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %10, align 8
  store i8 0, i8* %43, align 1
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %47, i32 0, i32 1
  %49 = call i64 @inet_aton(i8* %46, i32* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @wpa_printf(i32 %52, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %54, i8* %55)
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @os_free(i8* %57)
  store i8* null, i8** %4, align 8
  br label %83

59:                                               ; preds = %45
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @atoi(i8* %63)
  %65 = call i8* @htons(i32 %64)
  %66 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %67 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %72

68:                                               ; preds = %59
  %69 = call i8* @htons(i32 80)
  %70 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %71 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %68, %62
  %73 = load i8*, i8** %11, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i8*, i8** %11, align 8
  store i8 47, i8* %78, align 1
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i8*, i8** %11, align 8
  %81 = load i8**, i8*** %7, align 8
  store i8* %80, i8** %81, align 8
  %82 = load i8*, i8** %8, align 8
  store i8* %82, i8** %4, align 8
  br label %83

83:                                               ; preds = %79, %51, %16
  %84 = load i8*, i8** %4, align 8
  ret i8* %84
}

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i32 @os_memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @inet_aton(i8*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
