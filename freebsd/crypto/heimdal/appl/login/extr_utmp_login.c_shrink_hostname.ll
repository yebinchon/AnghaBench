; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/login/extr_utmp_login.c_shrink_hostname.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/login/extr_utmp_login.c_shrink_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32 }

@MaxHostNameLen = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shrink_hostname(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i32, i32* @MaxHostNameLen, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @strlcpy(i8* %23, i8* %24, i64 %25)
  store i32 1, i32* %13, align 4
  br label %94

27:                                               ; preds = %3
  %28 = trunc i64 %15 to i32
  %29 = call i32 @gethostname(i8* %17, i32 %28)
  %30 = load i8*, i8** %4, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 46)
  store i8* %31, i8** %10, align 8
  %32 = call i8* @strchr(i8* %17, i8 signext 46)
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %27
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i64 @strcmp(i8* %39, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = load i64, i64* %6, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %43
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @strlcpy(i8* %52, i8* %53, i64 %54)
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = getelementptr inbounds i8, i8* %56, i64 %61
  store i8 0, i8* %62, align 1
  store i32 1, i32* %13, align 4
  br label %94

63:                                               ; preds = %43, %38, %35, %27
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @getaddrinfo(i8* %64, i32* null, i32* null, %struct.addrinfo** %12)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @strncpy(i8* %69, i8* %70, i64 %71)
  store i32 1, i32* %13, align 4
  br label %94

73:                                               ; preds = %63
  %74 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %75 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %78 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* @NI_NUMERICHOST, align 4
  %83 = call i32 @getnameinfo(i32 %76, i32 %79, i8* %80, i64 %81, i32* null, i32 0, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %85 = call i32 @freeaddrinfo(%struct.addrinfo* %84)
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %73
  %89 = load i8*, i8** %5, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @strncpy(i8* %89, i8* %90, i64 %91)
  store i32 1, i32* %13, align 4
  br label %94

93:                                               ; preds = %73
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %93, %88, %68, %51, %22
  %95 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %13, align 4
  switch i32 %96, label %98 [
    i32 0, label %97
    i32 1, label %97
  ]

97:                                               ; preds = %94, %94
  ret void

98:                                               ; preds = %94
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

declare dso_local i32 @gethostname(i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @getaddrinfo(i8*, i32*, i32*, %struct.addrinfo**) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

declare dso_local i32 @getnameinfo(i32, i32, i8*, i64, i32*, i32, i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
