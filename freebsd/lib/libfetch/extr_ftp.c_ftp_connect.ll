; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_ftp.c_ftp_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_ftp.c_ftp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url = type { i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@FTP_SERVICE_READY = common dso_local global i32 0, align 4
@FTP_LOGGED_IN = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.url*, %struct.url*, i8*)* @ftp_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ftp_connect(%struct.url* %0, %struct.url* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.url*, align 8
  %6 = alloca %struct.url*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.url* %0, %struct.url** %5, align 8
  store %struct.url* %1, %struct.url** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* @AF_INET, align 4
  store i32 %13, i32* %12, align 4
  %14 = call i32 @CHECK_FLAG(i8 signext 100)
  store i32 %14, i32* %10, align 4
  %15 = call i32 @CHECK_FLAG(i8 signext 118)
  store i32 %15, i32* %11, align 4
  %16 = call i32 @CHECK_FLAG(i8 signext 52)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @AF_INET, align 4
  store i32 %19, i32* %12, align 4
  br label %26

20:                                               ; preds = %3
  %21 = call i32 @CHECK_FLAG(i8 signext 54)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @AF_INET6, align 4
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %23, %20
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store %struct.url* null, %struct.url** %6, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load %struct.url*, %struct.url** %6, align 8
  %32 = icmp ne %struct.url* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load %struct.url*, %struct.url** %6, align 8
  %35 = getelementptr inbounds %struct.url, %struct.url* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.url*, %struct.url** %6, align 8
  %38 = getelementptr inbounds %struct.url, %struct.url* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32* @fetch_connect(i32 %36, i32 %39, i32 %40, i32 %41)
  store i32* %42, i32** %8, align 8
  br label %53

43:                                               ; preds = %30
  %44 = load %struct.url*, %struct.url** %5, align 8
  %45 = getelementptr inbounds %struct.url, %struct.url* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.url*, %struct.url** %5, align 8
  %48 = getelementptr inbounds %struct.url, %struct.url* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32* @fetch_connect(i32 %46, i32 %49, i32 %50, i32 %51)
  store i32* %52, i32** %8, align 8
  store %struct.url* null, %struct.url** %6, align 8
  br label %53

53:                                               ; preds = %43, %33
  %54 = load i32*, i32** %8, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32* null, i32** %4, align 8
  br label %82

57:                                               ; preds = %53
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @ftp_chkerr(i32* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @FTP_SERVICE_READY, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %73

63:                                               ; preds = %57
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.url*, %struct.url** %5, align 8
  %66 = load %struct.url*, %struct.url** %6, align 8
  %67 = call i32 @ftp_authenticate(i32* %64, %struct.url* %65, %struct.url* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* @FTP_LOGGED_IN, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %73

71:                                               ; preds = %63
  %72 = load i32*, i32** %8, align 8
  store i32* %72, i32** %4, align 8
  br label %82

73:                                               ; preds = %70, %62
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, -1
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @ftp_seterr(i32 %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @fetch_close(i32* %80)
  store i32* null, i32** %4, align 8
  br label %82

82:                                               ; preds = %79, %71, %56
  %83 = load i32*, i32** %4, align 8
  ret i32* %83
}

declare dso_local i32 @CHECK_FLAG(i8 signext) #1

declare dso_local i32* @fetch_connect(i32, i32, i32, i32) #1

declare dso_local i32 @ftp_chkerr(i32*) #1

declare dso_local i32 @ftp_authenticate(i32*, %struct.url*, %struct.url*) #1

declare dso_local i32 @ftp_seterr(i32) #1

declare dso_local i32 @fetch_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
