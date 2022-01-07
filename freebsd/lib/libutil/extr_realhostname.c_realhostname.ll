; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_realhostname.c_realhostname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_realhostname.c_realhostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.hostent = type { i32**, i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@HOSTNAME_INVALIDADDR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@HOSTNAME_INVALIDNAME = common dso_local global i32 0, align 4
@HOSTNAME_INCORRECTNAME = common dso_local global i32 0, align 4
@HOSTNAME_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @realhostname(i8* %0, i64 %1, %struct.in_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.in_addr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hostent*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.in_addr* %2, %struct.in_addr** %7, align 8
  %15 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @HOSTNAME_INVALIDADDR, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %21 = bitcast %struct.in_addr* %20 to i8*
  %22 = load i32, i32* @AF_INET, align 4
  %23 = call %struct.hostent* @gethostbyaddr(i8* %21, i32 4, i32 %22)
  store %struct.hostent* %23, %struct.hostent** %11, align 8
  %24 = load %struct.hostent*, %struct.hostent** %11, align 8
  %25 = icmp ne %struct.hostent* %24, null
  br i1 %25, label %26, label %87

26:                                               ; preds = %3
  %27 = load %struct.hostent*, %struct.hostent** %11, align 8
  %28 = getelementptr inbounds %struct.hostent, %struct.hostent* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = trunc i64 %16 to i32
  %31 = call i32 @strlcpy(i8* %18, i32 %29, i32 %30)
  %32 = call i64 @strlen(i8* %18)
  %33 = call i32 @trimdomain(i8* %18, i64 %32)
  %34 = call i64 @strlen(i8* %18)
  %35 = load i64, i64* %6, align 8
  %36 = icmp ule i64 %34, %35
  br i1 %36, label %37, label %86

37:                                               ; preds = %26
  %38 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %12, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %13, align 8
  %42 = load %struct.hostent*, %struct.hostent** %11, align 8
  %43 = getelementptr inbounds %struct.hostent, %struct.hostent* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = trunc i64 %39 to i32
  %46 = call i32 @strlcpy(i8* %41, i32 %44, i32 %45)
  %47 = call %struct.hostent* @gethostbyname(i8* %41)
  store %struct.hostent* %47, %struct.hostent** %11, align 8
  %48 = load %struct.hostent*, %struct.hostent** %11, align 8
  %49 = icmp eq %struct.hostent* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* @HOSTNAME_INVALIDNAME, align 4
  store i32 %51, i32* %10, align 4
  br label %81

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %75, %52
  %54 = load %struct.hostent*, %struct.hostent** %11, align 8
  %55 = getelementptr inbounds %struct.hostent, %struct.hostent* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @HOSTNAME_INCORRECTNAME, align 4
  store i32 %60, i32* %10, align 4
  br label %80

61:                                               ; preds = %53
  %62 = load %struct.hostent*, %struct.hostent** %11, align 8
  %63 = getelementptr inbounds %struct.hostent, %struct.hostent* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %67 = call i32 @memcmp(i32* %65, %struct.in_addr* %66, i32 4)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %61
  %70 = load i8*, i8** %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @strncpy(i8* %70, i8* %18, i64 %71)
  %73 = load i32, i32* @HOSTNAME_FOUND, align 4
  store i32 %73, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %82

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.hostent*, %struct.hostent** %11, align 8
  %77 = getelementptr inbounds %struct.hostent, %struct.hostent* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i32 1
  store i32** %79, i32*** %77, align 8
  br label %53

80:                                               ; preds = %59
  br label %81

81:                                               ; preds = %80, %50
  store i32 0, i32* %14, align 4
  br label %82

82:                                               ; preds = %81, %69
  %83 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %14, align 4
  switch i32 %84, label %96 [
    i32 0, label %85
  ]

85:                                               ; preds = %82
  br label %86

86:                                               ; preds = %85, %26
  br label %87

87:                                               ; preds = %86, %3
  %88 = load i8*, i8** %5, align 8
  %89 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %90 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @inet_ntoa(i32 %91)
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @strncpy(i8* %88, i8* %92, i64 %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %96

96:                                               ; preds = %87, %82
  %97 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i32, i32) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @trimdomain(i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local %struct.hostent* @gethostbyname(i8*) #2

declare dso_local i32 @memcmp(i32*, %struct.in_addr*, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i8* @inet_ntoa(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
