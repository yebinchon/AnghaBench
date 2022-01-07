; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_make_sock_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_make_sock_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"ifname too long: %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"portnumber too long: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, %struct.addrinfo*, i32, i32*, i64, i64, i32*, i32, i32, i32, i32)* @make_sock_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_sock_port(i32 %0, i8* %1, i8* %2, %struct.addrinfo* %3, i32 %4, i32* %5, i64 %6, i64 %7, i32* %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.addrinfo*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca [16 x i8], align 16
  %30 = alloca [128 x i8], align 16
  store i32 %0, i32* %15, align 4
  store i8* %1, i8** %16, align 8
  store i8* %2, i8** %17, align 8
  store %struct.addrinfo* %3, %struct.addrinfo** %18, align 8
  store i32 %4, i32* %19, align 4
  store i32* %5, i32** %20, align 8
  store i64 %6, i64* %21, align 8
  store i64 %7, i64* %22, align 8
  store i32* %8, i32** %23, align 8
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  %31 = load i8*, i8** %16, align 8
  %32 = call i8* @strchr(i8* %31, i8 signext 64)
  store i8* %32, i8** %28, align 8
  %33 = load i8*, i8** %28, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %87

35:                                               ; preds = %13
  %36 = load i8*, i8** %28, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = icmp uge i64 %40, 128
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i8*, i8** %16, align 8
  %44 = call i32 @log_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load i32*, i32** %20, align 8
  store i32 0, i32* %45, align 4
  store i32 -1, i32* %14, align 4
  br label %102

46:                                               ; preds = %35
  %47 = load i8*, i8** %28, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i64 @strlen(i8* %48)
  %50 = icmp uge i64 %49, 16
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i8*, i8** %16, align 8
  %53 = call i32 @log_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = load i32*, i32** %20, align 8
  store i32 0, i32* %54, align 4
  store i32 -1, i32* %14, align 4
  br label %102

55:                                               ; preds = %46
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %30, i64 0, i64 0
  %57 = load i8*, i8** %16, align 8
  %58 = call i32 @strlcpy(i8* %56, i8* %57, i32 128)
  %59 = load i8*, i8** %28, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %30, i64 0, i64 %63
  store i8 0, i8* %64, align 1
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %66 = load i8*, i8** %28, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = call i32 @strlcpy(i8* %65, i8* %67, i32 16)
  %69 = load i8*, i8** %28, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = call i64 @strlen(i8* %70)
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load i32, i32* %15, align 4
  %74 = getelementptr inbounds [128 x i8], [128 x i8]* %30, i64 0, i64 0
  %75 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %76 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %77 = load i32, i32* %19, align 4
  %78 = load i32*, i32** %20, align 8
  %79 = load i64, i64* %21, align 8
  %80 = load i64, i64* %22, align 8
  %81 = load i32*, i32** %23, align 8
  %82 = load i32, i32* %24, align 4
  %83 = load i32, i32* %25, align 4
  %84 = load i32, i32* %26, align 4
  %85 = load i32, i32* %27, align 4
  %86 = call i32 @make_sock(i32 %73, i8* %74, i8* %75, %struct.addrinfo* %76, i32 %77, i32* %78, i64 %79, i64 %80, i32* %81, i32 %82, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %14, align 4
  br label %102

87:                                               ; preds = %13
  %88 = load i32, i32* %15, align 4
  %89 = load i8*, i8** %16, align 8
  %90 = load i8*, i8** %17, align 8
  %91 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %92 = load i32, i32* %19, align 4
  %93 = load i32*, i32** %20, align 8
  %94 = load i64, i64* %21, align 8
  %95 = load i64, i64* %22, align 8
  %96 = load i32*, i32** %23, align 8
  %97 = load i32, i32* %24, align 4
  %98 = load i32, i32* %25, align 4
  %99 = load i32, i32* %26, align 4
  %100 = load i32, i32* %27, align 4
  %101 = call i32 @make_sock(i32 %88, i8* %89, i8* %90, %struct.addrinfo* %91, i32 %92, i32* %93, i64 %94, i64 %95, i32* %96, i32 %97, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %87, %55, %51, %42
  %103 = load i32, i32* %14, align 4
  ret i32 %103
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @log_err(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @make_sock(i32, i8*, i8*, %struct.addrinfo*, i32, i32*, i64, i64, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
