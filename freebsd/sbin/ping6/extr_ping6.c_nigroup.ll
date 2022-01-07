; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_nigroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_nigroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32* }

@NI_MAXHOST = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ff02::2:0000:0000\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ff02::2:ff00:0000\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @nigroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nigroup(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.in6_addr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load i32, i32* @NI_MAXHOST, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 46)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %25, %2
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp ugt i64 %37, 63
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = load i64, i64* %11, align 8
  %41 = sub i64 %18, 1
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %31
  store i8* null, i8** %3, align 8
  store i32 1, i32* %16, align 4
  br label %118

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @strncpy(i8* %20, i8* %45, i64 %46)
  %48 = load i64, i64* %11, align 8
  %49 = trunc i64 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %20, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %4, align 8
  store i8* %52, i8** %7, align 8
  br label %53

53:                                               ; preds = %68, %44
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @isupper(i8 zeroext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i8*, i8** %7, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call signext i8 @tolower(i8 zeroext %64)
  %66 = load i8*, i8** %7, align 8
  store i8 %65, i8* %66, align 1
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %7, align 8
  br label %53

71:                                               ; preds = %53
  %72 = call i32 @memset(i32* %8, i32 0, i32 4)
  %73 = call i32 @MD5Init(i32* %8)
  %74 = load i64, i64* %11, align 8
  %75 = and i64 %74, 255
  %76 = trunc i64 %75 to i8
  store i8 %76, i8* %10, align 1
  %77 = call i32 @MD5Update(i32* %8, i8* %10, i64 1)
  %78 = load i8*, i8** %4, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @MD5Update(i32* %8, i8* %78, i64 %79)
  %81 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %82 = call i32 @MD5Final(i8* %81, i32* %8)
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %71
  %86 = load i32, i32* @AF_INET6, align 4
  %87 = call i32 @inet_pton(i32 %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.in6_addr* %14)
  store i32 %87, i32* %15, align 4
  br label %91

88:                                               ; preds = %71
  %89 = load i32, i32* @AF_INET6, align 4
  %90 = call i32 @inet_pton(i32 %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.in6_addr* %14)
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i8* null, i8** %3, align 8
  store i32 1, i32* %16, align 4
  br label %118

95:                                               ; preds = %91
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %100 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %14, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 12
  %103 = call i32 @bcopy(i8* %99, i32* %102, i32 4)
  br label %110

104:                                              ; preds = %95
  %105 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %106 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %14, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 13
  %109 = call i32 @bcopy(i8* %105, i32* %108, i32 3)
  br label %110

110:                                              ; preds = %104, %98
  %111 = load i32, i32* @AF_INET6, align 4
  %112 = trunc i64 %18 to i32
  %113 = call i32* @inet_ntop(i32 %111, %struct.in6_addr* %14, i8* %20, i32 %112)
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store i8* null, i8** %3, align 8
  store i32 1, i32* %16, align 4
  br label %118

116:                                              ; preds = %110
  %117 = call i8* @strdup(i8* %20)
  store i8* %117, i8** %3, align 8
  store i32 1, i32* %16, align 4
  br label %118

118:                                              ; preds = %116, %115, %94, %43
  %119 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i8*, i8** %3, align 8
  ret i8* %120
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

declare dso_local i64 @isupper(i8 zeroext) #2

declare dso_local signext i8 @tolower(i8 zeroext) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @MD5Init(i32*) #2

declare dso_local i32 @MD5Update(i32*, i8*, i64) #2

declare dso_local i32 @MD5Final(i8*, i32*) #2

declare dso_local i32 @inet_pton(i32, i8*, %struct.in6_addr*) #2

declare dso_local i32 @bcopy(i8*, i32*, i32) #2

declare dso_local i32* @inet_ntop(i32, %struct.in6_addr*, i8*, i32) #2

declare dso_local i8* @strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
