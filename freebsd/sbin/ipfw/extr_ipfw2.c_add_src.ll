; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_add_src.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_add_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tidx = type { i32 }
%struct.in6_addr = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"/,\00", align 1
@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"me6\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i64, i32, %struct.tidx*)* @add_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_src(i32* %0, i8* %1, i64 %2, i32 %3, %struct.tidx* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tidx*, align 8
  %11 = alloca %struct.in6_addr, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.tidx* %4, %struct.tidx** %10, align 8
  %18 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  store i32* null, i32** %16, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @strpbrk(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %13, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %5
  %26 = load i8*, i8** %13, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %17, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = trunc i64 %19 to i32
  %34 = call i32 @strlcpy(i8* %21, i8* %32, i32 %33)
  %35 = load i32, i32* %17, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, %19
  br i1 %37, label %38, label %42

38:                                               ; preds = %25
  %39 = load i32, i32* %17, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %21, i64 %40
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %38, %25
  store i8* %21, i8** %12, align 8
  br label %45

43:                                               ; preds = %5
  %44 = load i8*, i8** %7, align 8
  store i8* %44, i8** %12, align 8
  br label %45

45:                                               ; preds = %43, %42
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @IPPROTO_IPV6, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @AF_INET6, align 4
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 @inet_pton(i32 %54, i8* %55, %struct.in6_addr* %11)
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %64

58:                                               ; preds = %53, %49, %45
  %59 = load i32*, i32** %6, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.tidx*, %struct.tidx** %10, align 8
  %63 = call i32* @add_srcip6(i32* %59, i8* %60, i32 %61, %struct.tidx* %62)
  store i32* %63, i32** %16, align 8
  br label %64

64:                                               ; preds = %58, %53
  %65 = load i32*, i32** %16, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %86

67:                                               ; preds = %64
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @IPPROTO_IP, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %7, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @AF_INET6, align 4
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @inet_pton(i32 %76, i8* %77, %struct.in6_addr* %11)
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %86

80:                                               ; preds = %75, %71, %67
  %81 = load i32*, i32** %6, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.tidx*, %struct.tidx** %10, align 8
  %85 = call i32* @add_srcip(i32* %81, i8* %82, i32 %83, %struct.tidx* %84)
  store i32* %85, i32** %16, align 8
  br label %86

86:                                               ; preds = %80, %75, %64
  %87 = load i32*, i32** %16, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i8*, i8** %7, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32*, i32** %6, align 8
  store i32* %94, i32** %16, align 8
  br label %95

95:                                               ; preds = %93, %89, %86
  %96 = load i32*, i32** %16, align 8
  %97 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %97)
  ret i32* %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strpbrk(i8*, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @inet_pton(i32, i8*, %struct.in6_addr*) #2

declare dso_local i32* @add_srcip6(i32*, i8*, i32, %struct.tidx*) #2

declare dso_local i32* @add_srcip(i32*, i8*, i32, %struct.tidx*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
